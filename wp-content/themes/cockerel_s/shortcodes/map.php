<?php
    function cockerel_s_map($atts, $content = '') {
	    $html = '<script>';

	    	if(isset($atts["id"])) {
		    	//$html .= 'var markers_' . $atts["id"] . '= [];';
		    	$html .= 'if (markers == null) {';
				
		    		$html .= 'var markers =[];';
	    		$html .= '};';

	    		$html .= 'google.maps.event.addDomListener(window, "load", initMap);';
	    					};
	    	    $html .= '</script>';


 		$html .= '<div class="googlemaps" ';   	    

	    if(isset($atts["id"])) {
	    	$html .= 'id="' . $atts["id"] . '" ';
		};

	    if(isset($atts["centerlat"])) {
	    	$html .= 'data-centerLat="' . $atts['centerlat'] . '" ';
		};
		if(isset($atts['centerlon'])) {
	    	$html .= 'data-centerLon="' . $atts['centerlon'] . '"';
   		};
   		if(isset($atts['controls'])) {
	    	$html .= 'data-controls="' . $atts['controls'] . '"';
   		};
		
		$html .= '>';
		
		$html .= $content;
		
        $html .= '</div>';
        
        return do_shortcode($html);
    }

    add_shortcode('map', 'cockerel_s_map');


    function cockerel_s_mapmarker($atts, $content = null) {
	    
	    if(isset($atts['name'])) {
		    $name = $atts['name'];
	    } else {
		    return;
	    }
	    
	    $html = $content;
	    
	    $html .= '<script>';
	    $html .= 'markers.push(["'. $name . '" , ' . $atts['centerlat'] . ' , ' . $atts['centerlon'] . ' , "' . trim(preg_replace('/\s\s+/', ' ', $content)) .'" ])';
	    $html .= '</script>';
	    
	    return do_shortcode($html);
    }
    
    add_shortcode('map-marker', 'cockerel_s_mapmarker');

    
?>