$(document).ready(function () {
  $("#content").load("homeContentContainer.html", getPreviewInfo());

  $("#news").click(function () {
    $("#content").load("news.html");
  });

  $("#reviews").click(function () {
    $("#content").load("recensioni.html");
  });

  $("#home").click(function () {
    document.location.href = "index.html";
  });

  $(".logo").click(function () {
    document.location.href = "index.html";
  });

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

// =========================== MORTE E DISPERAZIONE ===========================

function getRevPreviewInfo() {
  $.get("recensione", function (res) {
    for (let i = 0; i < 6; i++) {
      $(`
      <div class="recensione${i}">
        <div class="container">
          <img src="${res[i].immagine.pathImmagine}"
          alt="This was suppose to be an image"
          class="image"
          />
          <div class="overlay">
            <h1 id="TitleRev">${res[i].titolo}</h1>
            <h3 id="SubtRev">Autore: ${res[i].utente.nickname}</h3>
          </div>
        </div>
       </div>
      `).appendTo($(".review-container"));
    }
  });
}
  
function getNewsPreviewInfo() {
  $.get("notizia", function (res) {
    for (let i = 0; i < 4; i++) {
      $(`
      <div class="notizia${i}">
        <div class="container">
          <img src="${res[i].immagine.pathImmagine}"
          alt="This was suppose to be an image"
          class="image"
          />
          <div class="overlay">
            <h1 id="TitleRev">${res[i].titolo}</h1>
            <h3 id="SubtRev">Autore: ${res[i].utente.nickname}</h3>
          </div>
        </div>
      </div>
      `).appendTo($(".news-container"));
    }
  });
}

function getPreviewInfo() {
	getRevPreviewInfo()
	getNewsPreviewInfo()
}