const filtroEventos = document.querySelector('.eventos-page');
if (filtroEventos) {
}

const filtroEspec = document.querySelector('.especialidades-page');
if (filtroEspec) {
  let filtroAdulto = document.getElementById('filtroAdulto');
  let filtroInfantil = document.getElementById('filtroInfantil');
  let filtroTodos = document.getElementById('filtroTodos');
  let cardsEspecialidades = document.querySelectorAll('article');
  function showElement(elemento) {
    elemento.style.display = 'block';
  }
  function hideElement(elemento) {
    elemento.style.display = 'none';
  }

  filtroAdulto.addEventListener('click', () => {
    for (let i = 0; i < cardsEspecialidades.length; i++) {
      if (!cardsEspecialidades[i].classList.contains('adulto')) {
        hideElement(cardsEspecialidades[i]);
      }
      if (cardsEspecialidades[i].classList.contains('adulto')) {
        showElement(cardsEspecialidades[i]);
      }
    }
  });
  filtroInfantil.addEventListener('click', () => {
    for (let i = 0; i < cardsEspecialidades.length; i++) {
      if (!cardsEspecialidades[i].classList.contains('infantil')) {
        hideElement(cardsEspecialidades[i]);
      }
      if (cardsEspecialidades[i].classList.contains('infantil')) {
        showElement(cardsEspecialidades[i]);
      }
    }
  });
  filtroTodos.addEventListener('click', () => {
    for (let i = 0; i < cardsEspecialidades.length; i++) {
      showElement(cardsEspecialidades[i]);
    }
  });
}
