const quemSomos = document.querySelector('.quemSomos');
if (quemSomos) {
  document.addEventListener('DOMContentLoaded', function () {
    var secondarySlider = new Splide('#secondary-slider', {
      fixedWidth: 100,
      height: 60,
      gap: 10,
      cover: true,
      isNavigation: true,
      pagination: false,
      breakpoints: {
        1900: {
          focus: 'center',
        },
        767: {
          gap: 0,
          fixedWidth: 100,
          height: 60,
        },
      },
    }).mount();

    var primarySlider = new Splide('#primary-slider', {
      type: 'fade',
      heightRatio: 0.5,
      pagination: false,
      arrows: false,
    });

    primarySlider.sync(secondarySlider).mount();
  });
}
