<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAnBdjtvNmK4kUUFAcHhQ6Fg3m60JK5420&sensor=false"></script>


	// When the window has finished loading create our google map below
	google.maps.event.addDomListener(window, 'load', init);
	function init() {		
		
		var myLatlng = new google.maps.LatLng(51.512974,-0.101158);
		var mapOptions = {
		center: myLatlng
	   	}
	   	
	   	var marker = new google.maps.Marker({
	   	position: myLatlng,
	   	map: map,
	   	title: 'Hello World!'
	   	});
		
		// Basic options for a simple Google Map
		// For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
		var mapOptions = {
		// How zoomed in you want the map to start at (always required)
		zoom: 17,
		// The latitude and longitude to center the map (always required)
		center: new google.maps.LatLng(51.512974,-0.101158), // New York
		
		
		
		// How you would like to style the map.
		// This is where you would paste any style found on Snazzy Maps.
		styles: [
    {
        "featureType": "landscape",
        "stylers": [
            {
                "saturation": -100
            },
            {
                "lightness": 65
            },
            {
                "visibility": "on"
            }
        ]
    },
    {
        "featureType": "poi",
        "stylers": [
            {
                "saturation": -100
            },
            {
                "lightness": 51
            },
            {
                "visibility": "simplified"
            }
        ]
    },
    {
        "featureType": "road.highway",
        "stylers": [
            {
                "saturation": -100
            },
            {
                "visibility": "simplified"
            }
        ]
    },
    {
        "featureType": "road.arterial",
        "stylers": [
            {
                "saturation": -100
            },
            {
                "lightness": 30
            },
            {
                "visibility": "on"
            }
        ]
    },
    {
        "featureType": "road.local",
        "stylers": [
            {
                "saturation": -100
            },
            {
                "lightness": 40
            },
            {
                "visibility": "on"
            }
        ]
    },
    {
        "featureType": "transit",
        "stylers": [
            {
                "saturation": -100
            },
            {
                "visibility": "simplified"
            }
        ]
    },
    {
        "featureType": "administrative.province",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "water",
        "elementType": "labels",
        "stylers": [
            {
                "visibility": "on"
            },
            {
                "lightness": -25
            },
            {
                "saturation": -100
            }
        ]
    },
    {
        "featureType": "water",
        "elementType": "geometry",
        "stylers": [
            {
                "hue": "#ffff00"
            },
            {
                "lightness": -25
            },
            {
                "saturation": -97
            }
        ]
    }
]		};
		
		// Get the HTML DOM element that will contain your map
		// We are using a div with id="map" seen below in the <body>
		var mapElement = document.getElementById('map');
		
		// Create the Google Map using out element and options defined above
		var map = new google.maps.Map(document.getElementById('map'), mapOptions);
		//var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
	}


