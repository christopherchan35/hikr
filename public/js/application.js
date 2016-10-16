$(document).ready(function() {
  var map;

  function initMap() {
    // var campCreek = {lat: 34.2636333, lng: -116.9734685};
    var uluru = {lat: 37.784, lng: -122.399};
    map = new google.maps.Map(document.getElementById('map'), {
      zoom: 12,
      center: uluru
      // center: campCreek
    });


    autocomplete = new google.maps.places.Autocomplete(
      /** @type {!HTMLInputElement} */ (
      $("#search")[0]), {
        types: ['(regions)']
    });

    places = new google.maps.places.PlacesService(map);

    autocomplete.addListener('place_changed', onPlaceChanged);

    var infoWindow = new google.maps.InfoWindow({map: map});

  }

  function onPlaceChanged() {
     var place = autocomplete.getPlace();
     console.log(place)
     var input = (place['formatted_address'])
     console.log(input)

    //  var search = MapAdapter(input)
    //  console.log(search)
     if (place.geometry) {
       map.panTo(place.geometry.location);
       map.setZoom(12);
     } else {
       document.getElementById('search').placeholder = 'Search';
  };

  var marker = new google.maps.Marker({
    position: place.geometry.location,
    // position: campCreek,
    map: map
  });
}
});
