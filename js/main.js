$(document).ready(function () {
  $("#content").load("homeContentContainer.html", function () {
    $(".recensione1").load("recensionePreview.html");
    $(".recensione2").load("recensionePreview.html");
    $(".recensione3").load("recensionePreview.html");
    $(".recensione4").load("recensionePreview.html");
    $(".recensione5").load("recensionePreview.html");
    $(".recensione6").load("recensionePreview.html");
  });

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

// ToTop Button
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

function readyRecensioni() {
  // chiamata get
}
