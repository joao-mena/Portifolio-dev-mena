const contentMap = document.querySelector('.mapa');
const contato = document.querySelector('.contato');

if (contato) {
  let alturaAtual = document.getElementById('formContato').offsetHeight;
  document.querySelector('.acf-map iframe').style.height = `${alturaAtual}px`;
}

if (contentMap) {
  let acf = contentMap.querySelector('.marker');
  let markerLat = parseFloat(acf.getAttribute('data-lat'));
  let markerLng = parseFloat(acf.getAttribute('data-lng'));
  let map;
  (function initMap() {
    var mapOptions = {
      zoom: 16,
      center: { lat: markerLat, lng: markerLng },
    };
    map = new google.maps.Map(acf, mapOptions);

    var marker = new google.maps.Marker({
      position: { lat: markerLat, lng: markerLng },
      map: map,
    });

    google.maps.event.addListener(marker, 'click', function () {
      infowindow.open(map, marker);
    });
  })();
}
