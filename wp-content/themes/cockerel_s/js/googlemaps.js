

function initMap(id) {
	
	var mapStyles = [{"featureType":"water","stylers":[{"saturation":43},{"lightness":-11},{"hue":"#0088ff"}]},{"featureType":"road","elementType":"geometry.fill","stylers":[{"hue":"#ff0000"},{"saturation":-100},{"lightness":99}]},{"featureType":"road","elementType":"geometry.stroke","stylers":[{"color":"#808080"},{"lightness":54}]},{"featureType":"landscape.man_made","elementType":"geometry.fill","stylers":[{"color":"#ece2d9"}]},{"featureType":"poi.park","elementType":"geometry.fill","stylers":[{"color":"#ccdca1"}]},{"featureType":"road","elementType":"labels.text.fill","stylers":[{"color":"#767676"}]},{"featureType":"road","elementType":"labels.text.stroke","stylers":[{"color":"#ffffff"}]},{"featureType":"poi","stylers":[{"visibility":"off"}]},{"featureType":"landscape.natural","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#b8cb93"}]},{"featureType":"poi.park","stylers":[{"visibility":"on"}]},{"featureType":"poi.sports_complex","stylers":[{"visibility":"on"}]},{"featureType":"poi.medical","stylers":[{"visibility":"on"}]},{"featureType":"poi.business","stylers":[{"visibility":"simplified"}]}];
	
	var mapStyles =[{"featureType":"water","elementType":"all","stylers":[{"hue":"#27b1e4"},{"saturation":60},{"lightness":-31},{"visibility":"on"}]},{"featureType":"landscape","elementType":"all","stylers":[{"hue":"#c0e6f4"},{"saturation":59},{"lightness":-4},{"visibility":"on"}]},{"featureType":"road","elementType":"all","stylers":[{"hue":"#7ed0ee"},{"saturation":-23},{"lightness":20},{"visibility":"on"}]},{"featureType":"administrative","elementType":"all","stylers":[{"hue":"#6fafc7"},{"saturation":44},{"lightness":20},{"visibility":"on"}]},{"featureType":"poi","elementType":"all","stylers":[{"hue":"#aedbec"},{"saturation":33},{"lightness":11},{"visibility":"on"}]},{"featureType":"transit","elementType":"all","stylers":[{"hue":"#aedbec"},{"saturation":62},{"lightness":22},{"visibility":"off"}]},{"featureType":"road.local","elementType":"all","stylers":[{"hue":"#dceff6"},{"saturation":-41},{"lightness":-9},{"visibility":"off"}]},{"featureType":"landscape.man_made","elementType":"all","stylers":[{"hue":"#dceff6"},{"saturation":44},{"lightness":22},{"visibility":"on"}]}]

		
	var mapArray = document.getElementsByClassName('googlemaps');
	
	console.log(mapArray);
	console.log(mapArray.length)
	
	var LatLng = [];
	var maps = [];
	
	for (var i = 0; i < mapArray.length; i++) {
	
		var latitude = mapArray[i].getAttribute('data-centerlat');
		var longitude = mapArray[i].getAttribute('data-centerlon');
		
		var controls = mapArray[i].getAttribute('data-controls');
		console.log(controls);
		var UI;
		if (controls == "full") {
			UI = false;
		} else {
			UI = true;
		}
	
		LatLng[i] = new google.maps.LatLng(latitude, longitude);
		
		var mapOptionsFull = {
			zoom: 11, // default zoom in
			center: LatLng[i], //coordinates of map center (as googlemaps object)
			disableDefaultUI: UI, // get rid of map/satellite, zoom controls etc
			scrollwheel: false, // stop autoscroll with mouse
			styles: mapStyles	
		};

	
		maps[i] = new google.maps.Map(mapArray[i], mapOptionsFull);
		
		   	
	   	var contentString = '<div id="content">'+
	   	  '<h3>Hello</h3>'+
	      '</div>';
	
	// markers //
		
		// 'markers' array set as global var in the map.php shortcode
		console.log(markers);
				
		var infowindow = [];
		var googleMarkers = [];
		
		for(var j =1; j<= markers.length; j++ ) {
			
			var markerObj = {
				position: new google.maps.LatLng(markers[j-1][1],markers[j-1][2]),
				map: maps[i],
				title: markers[j-1][0],
				icon: 'cutesmiles4kids/wp-content/themes/cockerel_s/images/icons/finger-up.svg'
			}
			
			if(mapArray[i].id == markers[j-1][0]) {
				
				console.log(mapArray[i].id);
			
				googleMarkers[j]  = new google.maps.Marker(markerObj);
		
				infowindow[j]  = new google.maps.InfoWindow({
					content: markers[j-1][3]
		  		});
		  		
			   	infowindow[j].open(maps[i], googleMarkers[j]);
			}
		}
   	} 

}




