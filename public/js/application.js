$(document).ready(function() {

  console.log("You made it!");
  $('#trails').on('click', 'p > a', function(event){
    event.preventDefault();
    console.log('stopped the link');
    var data = $(this).attr('href');
    console.log("data:", data);
    var id = data[8] + data[9] + data[10];
    console.log(id);
    $.ajax({
      url: '/trails/show/' + id,
      method: 'GET'
      // data: id
    })
    .done(function(response){
      console.log(response);
      $('#trails').hide();
      $('#info').append(response)
    })
  })
});
    var map;
    function initMap() {
      var uluru = {lat: 37.784, lng: -122.399};
      map = new google.maps.Map(document.getElementById('map'), {
        zoom: 12,
        center: uluru,
        disableDefaultUI: true
      });

      autocomplete = new google.maps.places.Autocomplete(
        /** @type {!HTMLInputElement} */ (
          $("#search")[0]), {
          types: ['(regions)']
        });

      places = new google.maps.places.PlacesService(map);

      autocomplete.addListener('place_changed', onPlaceChanged);

      // var infoWindow = new google.maps.InfoWindow({map: map});
    }

    function onPlaceChanged() {
     var place = autocomplete.getPlace();
     console.log(place)
     var input = (place['formatted_address'])
     console.log(input)

     $('#search').on('click', function(event){
       event.preventDefault();
       console.log("YEEEE");
       $.ajax({
         method: "POST",
         url: "/"
       })
       .done(function(response){
         console.log(response);
        //  var obj = $.parseJSON(response);
        //  console.log(obj);
        $('#trails').empty();
        $('#trails').append(response)
       })
     })

      if (place.geometry) {
       map.panTo(place.geometry.location);
       map.setZoom(10);
     } else {
       document.getElementById('search').placeholder = 'Search';
     };

     var marker = new google.maps.Marker({
      position: place.geometry.location,
      map: map
    });
   }
