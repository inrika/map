var map;
function initMap() {
  var mapcenter = {lat: 55.752, lng: 37.622};

  //if ($('#map').size() > 0)
    map = new google.maps.Map ( document.getElementById('map'), {
      center: mapcenter,
      zoom: 12
    });
    map.addListener('click', function(e){
//     console.log(e.latLng.lat());
     $('#lat').val(e.latLng.lat());
     $('#lng').val(e.latLng.lng());
     $('#click').submit();
    });
 };
