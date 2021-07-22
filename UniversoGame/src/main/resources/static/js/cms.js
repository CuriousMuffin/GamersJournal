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
			<td>RECENSIONE</td>
			<td>${res[i].titolo}</td>
			<td>${res[i].dataPubblicazione}</td>
			<td>${res[i].utente.username}</td>
			<td><button><i class="far fa-fw fa-edit"></i></button>
			 	<button><i class="far fa-fw fa-trash-alt"></i>
				</button> <button>Bozza</button>
			</td>
      </tr>
      `).appendTo($(".content-list"));
      } else {
		$(`
      <tr id="recensione" data-id='${res[i].id}'>
			<td>RECENSIONE</td>
			<td>${res[i].titolo}</td>
			<td>${res[i].dataPubblicazione}</td>
			<td>${res[i].utente.username}</td>
			<td><button><i class="far fa-fw fa-edit"></i></button>
			 	<button><i class="far fa-fw fa-trash-alt"></i>
				</button> <button>Pubblica</button>
			</td>
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
			<td>NOTIZIA</td>
			<td>${res[i].titolo}</td>
			<td>${res[i].dataPubblicazione}</td>
			<td>${res[i].utente.username}</td>
			<td><button><i class="far fa-fw fa-edit"></i></button>
			 	<button><i class="far fa-fw fa-trash-alt"></i>
				</button> <button>Bozza</button>
			</td>
      </tr>
      `).appendTo($(".content-list"));
      } else {
		$(`
      <tr id="notizia" data-id='${res[i].id}'>
			<td>NOTIZIA</td>
			<td>${res[i].titolo}</td>
			<td>${res[i].dataPubblicazione}</td>
			<td>${res[i].utente.username}</td>
			<td><button><i class="far fa-fw fa-edit"></i></button>
			 	<button><i class="far fa-fw fa-trash-alt"></i>
				</button> <button>Pubblica</button>
			</td>
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