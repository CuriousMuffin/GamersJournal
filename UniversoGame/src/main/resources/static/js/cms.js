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
		getElencoVideogiochi();
	})
	
		function getElencoVideogiochi() {
		$.get('videogioco', function(res) {
			for (let i = 0; i < res.length; i++) {
				$(`<option value='${res[i].id}'>${res[i].titolo}</option>`).appendTo('#videogioco');
			}
		})
	}
	
		$('#save').click(function() {
			/**
			json da correggere
			 */
		const articolo = {
			titolo: $('#titolo').val(),
			descrizione: $('#descrizione').val(),
			prezzo: $('#prezzo').val(),
			disponibilita: $('#disponibilita').val(),
			categoria: { 
				id:	$('#categoria').val(),
				nome: "",
				iva: 0
			}
		}
		
		const tipo = document.getElementsByName('radio');
		
		if (editMode) {
			console.log('WORK IN PROGRESS');
			//articolo.id = editId;
			//editArticolo(articolo);	
		} else {
			//addArticolo(tipo, articolo);
		}
	})
	
		function addArticolo(tipo, articolo) {
		$.ajax({
			type: 'POST',
			url: `${tipo}`,
			data: JSON.stringify(articolo),
			contentType: 'application/json',
			success: function() {
				alert("INSERIMENTO RIUSCITO!");
				getContentList();
				closeAddModal();		
			}
		})
	}
	
	$(".modal-content").on("click", "#close", function () {
		closeAddModal();
	})
	
	function closeAddModal() {
		$('#article-creation-modal').css('display', 'none');	
	}

// =========================== CANCELLA ARTICOLI ===========================

$('#articles').on('click', '.delete-button', function() {
	
		const id = +$(this).attr('data-id');
		const tipo = $(this).attr('tipo');
	
	
	if (confirm(`Vuoi davvero eliminare questa ${tipo}?`)) {
		deleteArticle(id, tipo, $(`#${tipo}-${id}`));
	} else {
		return null;
	}
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
	var azione = "";
	
		const body = {
			id: id,
			bozza: false
		}
	
		if (testoBottone == "Bozza") {
			body.bozza = true;
			azione = "spostare nelle bozze";
		} else {
			body.bozza = false;
			azione = "pubblicare";
		}
		
	if (confirm(`Vuoi davvero ${azione} questa ${tipo}?`)) {
	
		 moveArticle(tipo, body, $(`#${idBottone}`), $(`#${tipo}-${id}`));

	} else {
		return null;
	}
	

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