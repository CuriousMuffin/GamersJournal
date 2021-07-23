$(document).ready(function () {
	
	let editMode = false;
	let editId = -1;

getContentList();

  $("#home").click(function () {
    //$(this).addClass("active");
    document.location.href = "index.html";
  });

// =========================== POPOLA TABELLE ===========================

function getContentList() {
  $.get("recensione", function (res) {
	
	
    for (let i = 0; i < res.length; i++) {
      if (isPublished(res[i].bozza)) {
        $(`
      <tr id='recensione-${res[i].id}'>
			<td>RECENSIONE</td>
			<td>${res[i].titolo}</td>
			<td>${res[i].dataPubblicazione}</td>
			<td>${res[i].utente.username}</td>
			<td class='options'><button class='edit-button' tipo='recensione' data-id='${res[i].id}' disabled><i class="far fa-fw fa-edit"></i></button>
			 	<button class='delete-button' tipo='recensione' data-id='${res[i].id}'><i class="far fa-fw fa-trash-alt"></i></button> 
				<button class='draft-button' id='recensione-draft-button-${res[i].id}' tipo='recensione' data-id='${res[i].id}'>Bozza</button>
			</td>
      </tr>
      `).appendTo($("#pubbli-list"));
      } else {
		$(`
      <tr id='recensione-${res[i].id}'>
			<td>RECENSIONE</td>
			<td>${res[i].titolo}</td>
			<td>${res[i].dataPubblicazione}</td>
			<td>${res[i].utente.username}</td>
			<td class='options'><button class='edit-button' tipo='recensione' data-id='${res[i].id}' disabled><i class="far fa-fw fa-edit"></i></button>
			 	<button class='delete-button' tipo='recensione' data-id='${res[i].id}'><i class="far fa-fw fa-trash-alt"></i></button> 
				<button class='draft-button' id='recensione-draft-button-${res[i].id}' tipo='recensione' data-id='${res[i].id}'>Pubblica</button>
			</td>
      </tr>
      `).appendTo($("#bozze-list"));
		}
    }
  });

 $.get("notizia", function (res) {
	
	
    for (let i = 0; i < res.length; i++) {
      if (isPublished(res[i].bozza)) {
        $(`
      <tr id='notizia-${res[i].id}'>
			<td>NOTIZIA</td>
			<td>${res[i].titolo}</td>
			<td>${res[i].dataPubblicazione}</td>
			<td>${res[i].utente.username}</td>
			<td class='options'><button class='edit-button' tipo='notizia' data-id='${res[i].id}' disabled><i class="far fa-fw fa-edit"></i></button>
			 	<button class='delete-button' tipo='notizia' data-id='${res[i].id}'><i class="far fa-fw fa-trash-alt"></i></button> 
				<button class='draft-button' id='notizia-draft-button-${res[i].id}' tipo='notizia' data-id='${res[i].id}'>Bozza</button>
			</td>
      </tr>
      `).appendTo($("#pubbli-list"));
      } else {
		$(`
      <tr id='notizia-${res[i].id}'>
			<td>NOTIZIA</td>
			<td>${res[i].titolo}</td>
			<td>${res[i].dataPubblicazione}</td>
			<td>${res[i].utente.username}</td>
			<td class='options'><button class='edit-button' tipo='notizia' data-id='${res[i].id}' disabled><i class="far fa-fw fa-edit"></i></button>
			 	<button class='delete-button' tipo='notizia' data-id='${res[i].id}'><i class="far fa-fw fa-trash-alt"></i></button> 
				<button class='draft-button' id='notizia-draft-button-${res[i].id}' tipo='notizia' data-id='${res[i].id}'>Pubblica</button>
			</td>
      </tr>
      `).appendTo($("#bozze-list"));
		}
    }
  });

}

function isPublished(bozza) {
  return bozza ? false : true;
}

// =========================== AGGIUNTA ARTICOLI ===========================
		
	$('#add-articolo').click(function() {
		$('#article-creation-modal').css('display', 'block');
		$('.modal-content').load('editor.html');
	})
	
	$(".modal-content").on("click", "#close-article-creation", function () {
		closeAddModal();
	})
	
	function closeAddModal() {
		$('#article-creation-modal').css('display', 'none');	
	}

// =========================== CANCELLA ARTICOLI ===========================

$('#articles').on('click', '.delete-button', function() {
		const id = +$(this).attr('data-id');
		const tipo = $(this).attr('tipo');
	
		deleteArticle(id, tipo, $(`#${tipo}-${id}`));
	})
	
	function deleteArticle(id, tipo, HTMLrow) {
		$.ajax({
			url: `${tipo}/${id}`,
			type: 'DELETE',
			success: function() {
				HTMLrow.remove();
			}
		})
	}
	
// =========================== SPOSTAMENTO BOZZA/PUBBLICATO ===========================

$('#articles').on('click', '.draft-button', function() {
	
	const id = +$(this).attr('data-id');
	const tipo = $(this).attr('tipo');
	const idBottone = $(this).attr('id');
	const testoBottone = $(this).text();
	
	
	//console.log(`premuto tasto ${testoBottone} della ${tipo} con id ${id}`);
	
	const body = {
		id: id,
		bozza: false
	}
	
	if (testoBottone == "Bozza") {
		body.bozza = true;
	} else {
		body.bozza = false;
	}
	
	 //console.log(id, tipo, body, $(`#${idBottone}`), $(`#${tipo}-${id}`));
	
	 moveArticle(tipo, body, $(`#${idBottone}`), $(`#${tipo}-${id}`));
})

function moveArticle(tipo, body, HTMLelement, HTMLrow) {
	$.ajax({
			url: `${tipo}/bozza`,
			type: 'PUT',
			data: JSON.stringify(body),
			contentType: "application/json",
			success: function() {
				
				HTMLrow.remove();
				
				if(body.bozza == true) {
					HTMLrow.appendTo($("#bozze-list"));
					HTMLelement.text('Pubblica');	
				} else {
					HTMLrow.appendTo($("#pubbli-list"));
					HTMLelement.text('Bozza');
				}
			}
		})
}

	
// =========================== CHIUSURA CMS.JS ===========================
});