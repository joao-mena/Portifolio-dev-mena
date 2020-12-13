const especHome = document.querySelector('.especialidades');
if (especHome) {
  document.addEventListener('DOMContentLoaded', function () {
    var splideEspec = new Splide('#splide-especialidades', {
      perPage: 4,
      gap: '1rem',
      breakpoints: {
        1024: {
          autoWidth: true,
          perPage: 3,
          gap: '1rem',
        },
        768: {
          perPage: 2,
          gap: '1rem',
        },
        480: {
          pagination: false,
          perPage: 1,
          gap: '1rem',
        },
      },
    });
    splideEspec.mount();
  });
}
