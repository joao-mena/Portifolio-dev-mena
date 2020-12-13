const blogs = document.querySelector('.blogs');
if (blogs) {
  let img = document.querySelector('.blogs__img');
  let alturaImg = img.getBoundingClientRect().height;
  let divs = document.querySelectorAll('.card .card__titulo');
  let divsArr = Array.prototype.slice.call(divs);
  for (let i = 0; i < divsArr.length; i++) {
    divsArr[i].style.height = `${alturaImg}px`;
  }
}
