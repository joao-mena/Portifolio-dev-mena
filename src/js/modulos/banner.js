const slideBanner = document.querySelector('.slide-banner');
if (slideBanner) {
  let el = slideBanner.querySelector('.glide');
  let time = slideBanner.getAttribute('data-time');
  let slider = new Glide(el, {
    type: 'slider',
    perView: 1,
    autoplay: 4500,
    houverpause: true,
    animationDuration: 600,
  });
  slider.mount();
}
