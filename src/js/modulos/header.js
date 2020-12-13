const headerBlock = document.getElementById("header");
if (headerBlock) {

    (function menuNavigatorMobile() {
      const botoes = headerBlock.querySelectorAll("nav a");
      for (let i = 0; i < botoes.length; i++) {
        botoes[i].addEventListener(
          "click",
          function (e) {
            if (botoes[i].hash) {
              e.preventDefault();
              document.querySelector("body").classList.remove("hidden");
              document.getElementById("burguer-menu").checked = false;
              let header = 50;
              let section = document.querySelector(botoes[i].hash);
              let altura =
                section.offsetTop - header > 0 ? section.offsetTop - header : 0;
              window.scrollTo({
                top: altura,
                behavior: "smooth",
              });
            }
          },
          false
        );
      }
    })();

    (function menuIndicator() {
      const menu = headerBlock.querySelector(".menu");
      const botoes = menu.querySelectorAll("a");
      let hashs = [];
      for (let i = 0; i < botoes.length; i++) {
        hashs.push(botoes[i].hash);
      }
      hashs = hashs.filter(function (e) {
        return e != "";
      });

      function referenciaAnchor() {
        let scrollTop = document.documentElement.scrollTop || window.scrollY;
        for (let i = 0; i < hashs.length; i++) {
          let atual = document.querySelector(hashs[i]);
          if (atual) {
            let ref = atual.offsetTop;
            if (scrollTop + 200 > ref) {
              let zonaAtual = menu.querySelector('a[href="' + hashs[i] + '"]');
              for (let j = 0; j < menu.querySelectorAll("a").length; j++) {
                menu.querySelectorAll("a")[j].classList.remove("active");
              }
              zonaAtual.classList.add("active");
            }
          }
        }
      }

      window.addEventListener("scroll", referenciaAnchor);
      document.addEventListener("DOMContentLoaded", referenciaAnchor);
    })();


  (function openMenu() {
    let burguer = document.getElementById("burguer-menu");
    burguer.addEventListener("change", function () {
      if (burguer.checked == true) {
        document.querySelector("body").classList.add("hidden");
      } else {
        document.querySelector("body").classList.remove("hidden");
      }
    });
  })();

  (function scrollMenu() {
    let header = document.getElementById("header");
    window.addEventListener("scroll", achataMenu);
    window.addEventListener("DOMContentLoaded", achataMenu);
    function achataMenu(scrollTop = 0) {
      scrollTop =
        window.pageYOffset ||
        document.documentElement.scrollTop ||
        document.body.scrollTop ||
        0;
      if (scrollTop > 1) {
        header.classList.add("on");
      } else {
        header.classList.remove("on");
      }
    }
  })();
}
