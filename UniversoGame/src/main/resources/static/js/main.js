$(document).ready(function () {
  $("#content").load("homeContentContainer.html", function () {
    setTimeout(function () {
      getPreviewInfo();
    }, 100);
  });

  $("#news").click(function () {
    $(this).addClass("active");
    $("#reviews").removeClass("active");
    $("#home").removeClass("active");
    $("#content").load("news.html", getNewsList());
  });

  $("#reviews").click(function () {
    $(this).addClass("active");
    $("#home").removeClass("active");
    $("#news").removeClass("active");
    $("#content").load("recensioni.html", getRevList());
  });

  $("#home").click(function () {
    $(this).addClass("active");
    $("#reviews").removeClass("active");
    $("#news").removeClass("active");
    document.location.href = "index.html";
  });

  $(".logo").click(function () {
    $(this).addClass("active");
    $("#reviews").removeClass("active");
    $("#news").removeClass("active");
    document.location.href = "index.html";
  });

  $("#container-ricerca").click(function () {
    $(".ricerca").replaceWith(
      "<input id='ricerca-input' type='text' name='titolo' placeholder=' Ricerca...'/>"
    );
    setTimeout(function () {
      $("#ricerca-input").focus();
      $("#container-ricerca").css("padding", "13px 20px");
      $("#ricerca-input").css("filter", "drop-shadow(0 0 5px #0095ff)");
      $("#ricerca-input").css("background-color", "#0d0118");
      $("#search-icon").css("filter", "drop-shadow(0 0 10px #0095ff)");
    }, 10);
  });

  // $("#container-ricerca").on("keyup", function () {
  //   // alert("up");
  //   let testo = $("#ricerca-input").val();
  //   console.log(testo);
  // });

  $("#container-ricerca").on("keyup", "#ricerca-input", function (e) {
    var code = e.keyCode ? e.keyCode : e.which;
    if (code === 13) {
    }
  });

  // var e = jQuery.Event("keydown");
  // e.which = 13; // # Some key code value

  // $("#ricerca-input").trigger(e);
  // , function () {
  //   console.log($("#ricerca-input").find('input[name="titolo"]').val());
  // $.get("notizia", function (res) {
  //   searchFunc(res, $("#ricerca-input").find('input[name="titolo"]').val());
  // });
  // });

  // qundo c'è qualcosa con questo id, all'evento assegna una funzione
  // $("#content").on("", "#multi-reviews", function () {
  //   $("#multiReviews").load("recensionePreview.html");
  // });
});

// =========================== NAVBAR ===========================
// Sticky nav bar & ToTop button function
window.onscroll = function () {
  myStickyNavBarFunction();
  showTopButtonFunction();
};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myStickyNavBarFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky");
  } else {
    navbar.classList.remove("sticky");
  }
}
// all'onclick di una delle sezioni, la sezione selezionata deve acquisire la classe "active"

// =========================== ToTop Button ===========================

var totopbutton = document.getElementById("toTopButton");

// Quando l'utente scorre in basso di 20px dalla cima del documento, mostra il bottone
function showTopButtonFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    totopbutton.style.display = "block";
  } else {
    totopbutton.style.display = "none";
  }
}

// Quando l'utente clicca il bottone, ritorna in cima alla pagina
function topFunction() {
  document.body.scrollTop = 0; // per Safari
  document.documentElement.scrollTop = 0; // per Chrome, Firefox, IE ed Opera
}

// =========================== ULTIME NEWS/RECENSIONI IN HOME ===========================

function getLastRevPreviewInfo() {
  $.get("recensione/byPublDataDesc", function (res) {
    for (let i = 0; i < 6; i++) {
      $(`
        <div id="recensione" data-id='${res[i].id}' >
          <div class="container">
            <img src="${res[i].immagine.pathImmagine}"
            alt="This was suppose to be an image"
            class="image"
            />
            <div class="overlay">
              <h1 id="TitleRev">${res[i].titolo}</h1>
              <h3 id="SubtRev">di ${res[i].utente.username} - ${res[i].dataPubblicazione} </h3>
            </div>
          </div>
        </div>
        `).appendTo($(".review-container"));
    }
  });
}

function getLastNewsPreviewInfo() {
  $.get("notizia/byPublDataDesc", function (res) {
    for (let i = 0; i < 6; i++) {
      $(`
        <div id="notizia" data-id='${res[i].id}'>
          <div class="container">
            <img src="${res[i].immagine.pathImmagine}"
            alt="This was suppose to be an image"
            class="image"
            />
            <div class="overlay">
              <h1 id="TitleRev">${res[i].titolo}</h1>
              <h3 id="SubtRev">di ${res[i].utente.username} - ${res[i].dataPubblicazione} </h3>
            </div>
          </div>
        </div>
        `).appendTo($(".news-container"));
    }
  });
}

function getPreviewInfo() {
  getLastRevPreviewInfo();
  getLastNewsPreviewInfo();
}

// =========================== LISTA NEWS/RECENSIONI ===========================

// implementare metodo lato be per filtrare le bozze
function getRevList() {
  $.get("recensione", function (res) {
    for (let i = 0; i < res.length; i++) {
      if (isPublished(res[i].bozza)) {
        $(`
      <li id="recensione" data-id='${res[i].id}'>
        <div class="container">
          <img src="${res[i].immagine.pathImmagine}"
          alt="This was supposed to be an image"
          class="image"
          />
          <div class="overlay">
            <h1 id="TitleRev">${res[i].titolo}</h1>
            <h3 id="SubtRev">di ${res[i].utente.username} - ${res[i].dataPubblicazione} </h3>
          </div>
        </div>
      </li>
      `).appendTo($(".review-list"));
      }
    }
  });
}

// implementare metodo lato be per filtrare le bozze
function getNewsList() {
  $.get("notizia", function (res) {
    for (let i = 0; i < res.length; i++) {
      if (isPublished(res[i].bozza)) {
        $(`
      <li id="notizia" data-id='${res[i].id}'>
        <div class="container">
          <img src="${res[i].immagine.pathImmagine}"
          alt="This was supposed to be an image"
          class="image"
          />
          <div class="overlay">
            <h1 id="TitleRev">${res[i].titolo}</h1>
            <h3 id="SubtRev">di ${res[i].utente.username} - ${res[i].dataPubblicazione} </h3>
          </div>
        </div>
      </li>
      `).appendTo($(".news-list"));
      }
    }
  });
}

// =========================== DETTAGLIO NEWS/RECENSIONI ===========================

$("#content").on("click", "#recensione", function () {
  const id = +$(this).attr("data-id");

  // console.log("click su recensione id " + id);

  $("#content").load("recensione-detail.html", getRev(id));
});

$("#content").on("click", "#notizia", function () {
  const id = +$(this).attr("data-id");

  // console.log("click su notizia numero " + id);

  $("#content").load("notizia-detail.html", getNews(id));
});

function getRev(id) {
  $.get(`recensione/${id}`, function (res) {
    $(`
			<img src="${res.immagine.pathImmagine}"
          		alt="This was supposed to be an image"
          		class="image"/>
				<h1>${res.titolo}</h1>
				<div class="scheda-vg">
					<h2>${res.videogioco.titolo} - voto: ${res.valutazione} su 5</h2>
					<h3>GENERE: ${res.videogioco.genere}</h3>
					<h3>PIATTAFORMA: ${res.videogioco.compatibilita}</h3>
					<h3>PRODUTTORE: ${res.videogioco.casaProduttrice}</h3>
					<h3>DATA DI USCITA: ${res.videogioco.dataUscita}</h3>
				</div>
				<br>
				<p>${res.contenuto}</p>
				<h4><em><i class="fa fa-fw fa-id-badge"></i>di ${res.utente.username}
				<i class="far fa-fw fa-file-alt"></i> pubblicato il: ${res.dataPubblicazione}</em></h4>
				`).appendTo($(".review-detail"));
  });
}

function getNews(id) {
  $.get(`notizia/${id}`, function (res) {
    $(`
			<img src="${res.immagine.pathImmagine}"
          		alt="This was supposed to be an image"
          		class="image"/>
				<h1>${res.titolo}</h1>
				<div class="scheda-vg">
					<h2>${res.videogioco.titolo}</h2>
					<h3>GENERE: ${res.videogioco.genere}</h3>
					<h3>PIATTAFORMA: ${res.videogioco.compatibilita}</h3>
					<h3>PRODUTTORE: ${res.videogioco.casaProduttrice}</h3>
					<h3>DATA DI USCITA: ${res.videogioco.dataUscita}</h3>
				</div>
				<br>
				<p>${res.contenuto}</p>
				<h4><em><i class="fa fa-fw fa-id-badge"></i>di ${res.utente.username}
				<i class="far fa-fw fa-file-alt"></i> pubblicato il: ${res.dataPubblicazione}</em></h4>
				`).appendTo($(".news-detail"));
  });
}

// function formRicerca() {
//   // Get the modal
//   var modal = document.getElementById("myModal");

//   // Get the button that opens the modal
//   var btn = document.getElementById("myBtn");

//   // Get the <span> element that closes the modal
//   var span = document.getElementsByClassName("close")[0];

//   // When the user clicks on the button, open the modal
//   $("#myModal").css("display", "block");

//   // When the user clicks on <span> (x), close the modal
//   span.onclick = function () {
//     $("#myModal").css("display", "none");
//   };

//   // When the user clicks anywhere outside of the modal, close it
//   window.onclick = function (event) {
//     if (event.target == modal) {
//       $("#myModal").css("display", "none");
//     }
//   };
// }

function isPublished(bozza) {
  return bozza ? false : true;
}

// function searchGlobalList() {
//   let listaN = [];
//   let listaR = [];
//   let listaUnita = [];
//   $.get("notizia", function (res) {
//     for (item in res) {
//       if (isPublished(item.bozza)) {
//         listaN.add(item);
//       }
//     }
//   });
//   $.get("recensione", function (res) {
//     for (item in res) {
//       if (isPublished(item.bozza)) {
//         listaR.add(item);
//       }
//     }
//   });

//   listaUnita = listaN.concat(listaR);
// }

function renderPreviewRec(res) {
  $(`
          <div id="recensione" data-id='${item.id}' >
            <div class="container">
              <img src="${item.immagine.pathImmagine}"
              alt="This was suppose to be an image"
              class="image"
              />
              <div class="overlay">
                <h1 id="TitleRev">${item.titolo}</h1>
                <h3 id="SubtRev">di ${item.utente.username} - ${item.dataPubblicazione} </h3>
              </div>
            </div>
          </div>
          `).appendTo($(".review-container"));
}

function renderPreviewNews(res) {}
