$(document).ready(function () {

getContentList();

  $("#home").click(function () {
    $(this).addClass("active");
    document.location.href = "index.html";
  });

// =========================== LISTA NEWS/RECENSIONI ===========================

function getContentList() {
  $.get("recensione", function (res) {
	
	
    for (let i = 0; i < res.length; i++) {
      if (isPublished(res[i].bozza)) {
        $(`
      <tr id="recensione" data-id='${res[i].id}'>
			<td>${res[i].titolo}</td>
			<td>${res[i].dataPubblicazione}</td>
			<td>${res[i].utente.username}</td>
			<td><button>Modifica</button> <button>Elimina</button> <button>Bozza</button></td>
      </tr>
      `).appendTo($(".content-list"));
      } else {
		$(`
      <tr id="recensione" data-id='${res[i].id}'>
			<td>${res[i].titolo}</td>
			<td>${res[i].dataPubblicazione}</td>
			<td>${res[i].utente.username}</td>
			<td><button>Modifica</button> <button>Elimina</button> <button>Pubblica</button></td>
      </tr>
      `).appendTo($(".draft-list"));
		}
    }
  });

 $.get("notizia", function (res) {
	
	
    for (let i = 0; i < res.length; i++) {
      if (isPublished(res[i].bozza)) {
        $(`
      <tr id="notizia" data-id='${res[i].id}'>
			<td>${res[i].titolo}</td>
			<td>${res[i].dataPubblicazione}</td>
			<td>${res[i].utente.username}</td>
			<td><button>Modifica</button> <button>Elimina</button> <button>Bozza</button></td>
      </tr>
      `).appendTo($(".content-list"));
      } else {
		$(`
      <tr id="notizia" data-id='${res[i].id}'>
			<td>${res[i].titolo}</td>
			<td>${res[i].dataPubblicazione}</td>
			<td>${res[i].utente.username}</td>
			<td><button>Modifica</button> <button>Elimina</button> <button>Pubblica</button></td>
      </tr>
      `).appendTo($(".draft-list"));
		}
    }
  });

}

function isPublished(bozza) {
  return bozza ? false : true;
}


});