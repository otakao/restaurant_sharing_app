
  let map
  let geocoder

  function initMap(){
    geocoder = new google.maps.Geocoder()

    mapInstance = new google.maps.Map(document.getElementById('map'),{
      center: {lat: 35.681, lng:139.767},
      zoom: 14
    });

  }

  function codeAddress(){
    let inputAddress = document.getElementById('address').value;
    geocoder.geocode( { 'address' : inputAddress}, function(results, status) {
      if (status == 'OK') {
        map.setCenter(results[0].geometry.location);

        if(marker != null){
          marker.setMap(null); 
        }
        marker = null;

        marker = new google.maps.Marker({
          map: mapInstance,
          position: results[0].geometry.location
        });

        let title = document.getElementById('map_title');
        title.setAttribute("value", inputAddress);

        let hidden_address = document.getElementById('hidden_address');
        hidden_address.setAttribute("value", inputAddress);

      } else {
        alert('Geocode was not successful for the following reason: ' + status);
      }
    });
  }

