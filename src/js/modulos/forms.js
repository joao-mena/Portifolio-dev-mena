const formContato = document.getElementById('formContato');

if (formContato) {
  let mensagemContato = document.getElementById('mensagem');
  (function postMethodForForm() {
    formContato.addEventListener('submit', (enviar) => {
      enviar.preventDefault();
      let bodyRequest = Array.from(new FormData(enviar.target), (e) =>
        e.map(encodeURIComponent).join('='),
      ).join('&');
      let action = formContato.getAttribute('action');
      let requisicao = new XMLHttpRequest();
      requisicao.open('POST', action);
      requisicao.onload = function () {
        if (this.status === 200) {
          mensagemContato.classList.add('on');
          formContato.reset();
        }
      };
      requisicao.setRequestHeader(
        'Content-Type',
        'application/x-www-form-urlencoded',
      );
      requisicao.send(bodyRequest);
    });
  })();
}

const formCurso = document.getElementById('formCurso');

if (formCurso) {
  let mensagemContato = document.getElementById('mensagem');
  (function postMethodForForm() {
    formCurso.addEventListener('submit', (enviar) => {
      enviar.preventDefault();
      let bodyRequest = Array.from(new FormData(enviar.target), (e) =>
        e.map(encodeURIComponent).join('='),
      ).join('&');
      let action = formCurso.getAttribute('action');
      let requisicao = new XMLHttpRequest();
      requisicao.open('POST', action);
      requisicao.onload = function () {
        if (this.status === 200) {
          mensagemContato.classList.add('on');
          formCurso.reset();
        }
      };
      requisicao.setRequestHeader(
        'Content-Type',
        'application/x-www-form-urlencoded',
      );
      requisicao.send(bodyRequest);
      console.log(bodyRequest);
    });
  })();
}
