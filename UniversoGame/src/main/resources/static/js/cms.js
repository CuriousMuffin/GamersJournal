$(document).ready(function () {
	
	let editMode = false;
	let editId = -1;

getContentList();

  $("#home").click(function () {
    $(this).addClass("active");
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
			<td><button class='edit-button' tipo='recensione' data-id='${res[i].id}' disabled><i class="far fa-fw fa-edit"></i></button>
			 	<button class='delete-button' tipo='recensione' data-id='${res[i].id}'><i class="far fa-fw fa-trash-alt"></i></button> 
				<button class='draft-button' tipo='recensione' data-id='${res[i].id}' disabled>Bozza</button>
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
			<td><button class='edit-button' tipo='recensione' data-id='${res[i].id}' disabled><i class="far fa-fw fa-edit"></i></button>
			 	<button class='delete-button' tipo='recensione' data-id='${res[i].id}'><i class="far fa-fw fa-trash-alt"></i></button> 
				<button class='draft-button' tipo='recensione' data-id='${res[i].id}' disabled>Pubblica</button>
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
			<td><button class='edit-button' tipo='notizia' data-id='${res[i].id}' disabled><i class="far fa-fw fa-edit"></i></button>
			 	<button class='delete-button' tipo='notizia' data-id='${res[i].id}'><i class="far fa-fw fa-trash-alt"></i></button> 
				<button class='draft-button' tipo='notizia' data-id='${res[i].id}' disabled>Bozza</button>
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
			<td><button class='edit-button' tipo='notizia' data-id='${res[i].id}' disabled><i class="far fa-fw fa-edit"></i></button>
			 	<button class='delete-button' tipo='notizia' data-id='${res[i].id}'><i class="far fa-fw fa-trash-alt"></i></button> 
				<button class='draft-button' tipo='notizia' data-id='${res[i].id}' disabled>Pubblica</button>
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

// =========================== CANCELLA ARTICOLI ===========================

$('#articles').on('click', '.delete-button', function() {
	const clicked = $(this);
	deleteRoutine(clicked);
	})
	
//$('#bozze-list').on('click', '.delete-button', function() {
//	const clicked = $(this);
//	deleteRoutine(clicked);
//	})
	
	function deleteRoutine(clicked) {
		const id = +clicked.attr('data-id');
		const tipo = clicked.attr('tipo');
		
		deleteArticle(id, tipo, $(`#${tipo}-${id}`));

	}
	
	function deleteArticle(id, tipo, HTMLrow) {
		$.ajax({
			url: `${tipo}/${id}`,
			type: 'DELETE',
			success: function() {
				HTMLrow.remove();
			}
		})
	}
	

});