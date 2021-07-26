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
			<td class='options'><button class='edit-button' tipo='recensione' data-id='${res[i].id}'><i class="far fa-fw fa-edit"></i></button>
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
			<td class='options'><button class='edit-button' tipo='recensione' data-id='${res[i].id}'><i class="far fa-fw fa-edit"></i></button>
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
			<td class='options'><button class='edit-button' tipo='notizia' data-id='${res[i].id}'><i class="far fa-fw fa-edit"></i></button>
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
			<td class='options'><button class='edit-button' tipo='notizia' data-id='${res[i].id}'><i class="far fa-fw fa-edit"></i></button>
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
			if (editMode) {
				$('#videogioco').val(idgioco);
				idgioco = -1;
			}
		})
	}
	
	
		$(".modal-content").on("click", "#save", function () {
	
		
		var d = new Date();
		var curDate = d.getFullYear() + "-" + (d.getMonth()+1) + "-" + d.getDate();
		
		const tipo = $('input[name="tipologia"]:checked').val();
		const path = {
			"pathImmagine": $('#immagine').val()
		}
		
		//console.log(tipo);
		//console.log(strDate);
		
		if(tipo == "recensione") {
			
		articolo = {
    "titolo": $('#titolo').val(),
    "contenuto": $('#contenuto').val(),
    "valutazione": +$('#valutazione').val(),
    "dataPubblicazione": curDate,
    "bozza": true,
    "immagine": {
        "id": +$('#idimmagine').val(),
    },
    "videogioco": {
        "id": +$('#videogioco').val(),
    }
}
		} else {
				articolo = {
    "titolo": $('#titolo').val(),
    "contenuto": $('#contenuto').val(),
    "dataPubblicazione": curDate,
    "bozza": true,
    "immagine": {
        "id": +$('#idimmagine').val(),
    },
    "videogioco": {
        "id": +$('#videogioco').val(),
    }
}
		}

console.log(articolo);
		
		
		
		if (editMode) {
			//console.log('WORK IN PROGRESS');
			articolo.id = editId;
			editArticolo(tipo, articolo);	
		} else {
			addArticolo(tipo, curDate, path, articolo);
		}
	})
	
		function addArticolo(tipo, curDate, path, articolo) {
		$.ajax({
			type: 'POST',
			url: "immagine",
			data: JSON.stringify(path),
			contentType: 'application/json',
			success: function(res) {
				alert("INSERIMENTO IMMAGINE RIUSCITO!");
				console.log(res);
				
				//articolo.immagine.id = res;
				if(tipo == "recensione") {
articolo = {
    "titolo": $('#titolo').val(),
    "contenuto": $('#contenuto').val(),
    "valutazione": +$('#valutazione').val(),
    "dataPubblicazione": curDate,
	"approvato": true,
    "bozza": true,
    "immagine": {
        "id": res,
    },
	"utente": {
		"id": 6,
	},
    "videogioco": {
        "id": +$('#videogioco').val(),
    }
}
				} else {
articolo = {
    "titolo": $('#titolo').val(),
    "contenuto": $('#contenuto').val(),
    "dataPubblicazione": curDate,
    "bozza": true,
    "immagine": {
        "id": res,
    },
	"utente": {
		"id": 6,
	},
    "videogioco": {
        "id": +$('#videogioco').val(),
    }
}
					
				}
				
				console.log(articolo);
				
					$.ajax({
				type: 'POST',
				url: `${tipo}`,
				data: JSON.stringify(articolo),
				contentType: 'application/json',
				success: function() {
						alert("INSERIMENTO ARTICOLO RIUSCITO!");
						getContentList();
						closeAddModal();		
					}
				})		
			}
		})
	}
	
	$(".modal-content").on("click", "#close", function () {
		closeAddModal();
	})
	
	function closeAddModal() {
		$('#titolo').val('');
		$('#contenuto').val('');
		$('#valutazione').val('');
		$('#idimmagine').val('');
		$('#immagine').val('');
		$('#article-creation-modal').css('display', 'none');	
	}

let idgioco = -1;
// =========================== MODIFICA ARTICOLI ===========================

$('#articles').on('click', '.edit-button', function() {
		
	const id = +$(this).attr('data-id');
	const tipo = $(this).attr('tipo');
		
	editMode = true;
	editId = id;
	
	
	$('.modal-content').load('editor.html');
	
			$.ajax({
			url: `${tipo}/${id}`,
			type: 'GET',
			success: function(res) {
			$(`#radio-${tipo}`).prop("checked", true);
			$('input[name=tipologia]').prop("disabled",true);
			$('#titolo').val(res.titolo);
			$('#contenuto').val(res.contenuto);
			
			if(tipo == "notizia") {
				$('#valutazione').prop("disabled",true);
			} else {
				$('#valutazione').val(res.valutazione);
			}
			
			$('#immagine').prop('readonly', true);
			$('#immagine').prop("disabled",true);
			$('#idimmagine').val(res.immagine.id);
			$('#immagine').val(res.immagine.pathImmagine);
			getElencoVideogiochi();
			idgioco = res.videogioco.id;
			}
		})
		
	$('#article-creation-modal').css('display', 'block');
	
	});
	
		function editArticolo(tipo, articolo) {
		$.ajax({
			url: `${tipo}`,
			type: 'PUT',
			data: JSON.stringify(articolo),
			contentType: "application/json",
			success: function() {
				alert("MODIFICA RIUSCITA!");
				editMode = false;
				editId = -1;
				closeAddModal();
				$("#pubbli-list").html('');
				$("#bozze-list").html('');
				getContentList();
			}
		})
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