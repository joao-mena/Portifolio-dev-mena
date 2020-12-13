function isMobile() {
  var userAgent = navigator.userAgent.toLowerCase();
  if (
    userAgent.search(
      /(android|avantgo|blackberry|bolt|boost|cricket|docomo|fone|hiptop|mini|mobi|palm|phone|pie|tablet|up\.browser|up\.link|webos|wos)/i,
    ) != -1
  ) {
    return true;
  }
  return false;
}

function initAnimacaoScroll(elementos) {
  const block = Array.from(document.querySelectorAll(`${elementos}`));
  let mobile = isMobile();

  function isOnScreen(elem) {
    let rect = elem.getBoundingClientRect();
    return rect.top > 0 && rect.bottom < window.innerHeight;
  }

  function playAnimation(elem) {
    if (isOnScreen(elem)) elem.style.animationPlayState = 'running';
  }

  const render = () => block.forEach(playAnimation);
  render();

  window.addEventListener('scroll', render);
}

initAnimacaoScroll('article');
