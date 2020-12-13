const modalEspec = document.querySelector('.especialidades-page');
if (modalEspec) {
  // Get the modal
  var modal = document.getElementById('myModal');

  // Get the button that opens the modal
  var btn = document.querySelectorAll('.btn__prof');

  // Get the <span> element that closes the modal
  var span = document.querySelectorAll('.close');

  // When the user clicks the button, open the modal
  for (let i = 0; i < btn.length; i++) {
    btn[i].addEventListener('click', function (e) {
      e.preventDefault();
      modal.style.display = 'block';
    });
  }

  // When the user clicks on <span> (x), close the modal
  for (let i = 0; i < span.length; i++) {
    span[i].addEventListener('click', function (e) {
      e.preventDefault();
      modal.style.display = 'none';
    });
  }

  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function (event) {
    if (event.target == modal) {
      modal.style.display = 'none';
    }
  };
}
