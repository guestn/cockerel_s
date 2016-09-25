<?php
/*
Plugin Name: Rooster Slider 
Plugin URI: http://www.roostergrin.com
Description: Rooster Slider.
Author:Rooster Grin Media
Author URI: http://www.roostergrin.com
Version: 0.1
*/

function roosterslider_init() {
    $args = array(
        'public' => true,
        'label' => 'Slider',
        'supports' => array(
            'title',
            'editor',
			'thumbnail'
        ),
        'menu_icon' => 'dashicons-slides'
    );
    register_post_type('testimonials', $args);
}
 
add_action('init', 'roosterslider_init');

include_once "inc/settings.php";



/*///////////////////////////////*/
/* Create WP-admin meta stuff    */
/////////////////////////////////*/


function ts_link_function($post) {
	//retrieve the meta data value if it exists
	$ts_link = get_post_meta( $post->ID, '_link', true );?>
	<input type="text" name="link" id="link" value="<?php echo esc_url($ts_link);?>" size="60" />
    <?php 
    return true;
}
 
add_action( 'add_meta_boxes', 'ts_link_create' );

function ts_link_create() {

	//create a custom meta box
	//add_meta_box( 'ts-link-meta', 'Website Link', 'ts_link_function', 'testimonials', 'normal', 'high' );
	
}
//hook to save the meta box data
add_action( 'save_post', 'ts_link_save_meta' );

function ts_link_save_meta( $post_id ) {
	//verify the meta data is set
	if ( isset( $_POST['link'] ) ) {
	
		//save the meta data
		update_post_meta( $post_id, '_link', $_POST['link']);

	}
}

/*///////////////////////////////*/
/* Register scripts and CSS      */
/////////////////////////////////*/



// Adding the Slide.js script and our script
function testimonials_register_scripts() {
    // Only add these script if we are not in the admin dashboard
    // Registering scripts		
	//wp_register_script('testimonials_slide_js', plugins_url('/js/jquery.bxslider.min.js', __FILE__), array('jquery') );	
	// Enqueing scripts	
	//wp_enqueue_script('testimonials_slide_js');
	
	wp_register_script('slick_slider_js', plugins_url('/js/slick.min.js', __FILE__), array('jquery'));
	wp_enqueue_script('slick_slider_js');

}
 
add_action('wp_print_scripts', 'testimonials_register_scripts');


// Adding the Slide.js script and our script
function testimonials_register_styles() {
    // Only add these script if we are not in the admin dashboard
	
	// Enqueing style
	//wp_register_style('testimonials_bxslider_css', plugins_url('/css/jquery.bxslider.css', __FILE__));		
	//wp_enqueue_style( 'testimonials_bxslider_css' );
	
	wp_register_style('slick_css', plugins_url('/css/slick.css', __FILE__));		
	wp_enqueue_style( 'slick_css' );	

/*
	wp_register_style('slick_theme_css', plugins_url('/css/slick-theme.css', __FILE__));		
	wp_enqueue_style( 'slick_theme_css' );	
*/
	
	
}
 
add_action('wp_print_styles', 'testimonials_register_styles');



/*///////////////////////////////*/
/* Slider display / shortcode    */
/////////////////////////////////*/



// Displaying the testimonials
function display_testimonial_slider($atts) {
 	$a = shortcode_atts( array(
        'type' => '',
    ), $atts );
	$data =  get_option( 'my_option_name' );
    // We only want posts of the testimonials type
    $args = array(
        'post_type' => 'testimonials',
        'posts_per_page' => -1
    );
	if($a['type']!="full")
	{
	?>
    <script type="text/javascript">
 	$(document).ready(function() {
	
		$('.slider').slick({
			dots: true,
			arrows: true,
			infinite: false,
			speed: 1200,
			slidesToShow: 2,
			slidesToScroll: 1,
			appendArrows: '.slider',
			//adaptiveHeight: true,
			autoplay: true,
			autoplaySpeed: 6000,
			responsive: [
				{
				  breakpoint: 1024,
				  settings: {
				    slidesToShow: 3,
				    slidesToScroll: 3,
				    infinite: true,
				    dots: true
				  }
				},
				{
				  breakpoint: 600,
				  settings: {
				    slidesToShow: 2,
				    slidesToScroll: 2
				  }
				},
				{
				  breakpoint: 480,
				  settings: {
				    slidesToShow: 1,
				    slidesToScroll: 1
				  }
				}
			]
		});
	
	
/*
		jQuery('.testimonials-slider').bxSlider({
				minSlides: 1,
				maxSlides: 1,
				slideMargin: 10,
				auto: <?php echo isset($data['auto']) ? $data['auto'] : "true";?>,
				pager:<?php echo isset($data['pager']) ? $data['pager'] : "true";?>,				
				adaptiveHeight:true,
				controls:<?php echo isset($data['controls']) ? $data['controls'] : "true";?>,
				autoControls: false,
				speed:<?php echo ((isset($data['speed'])) and (!empty($data['speed']))) ? $data['speed'] : "500";?>,
				mode:'<?php echo isset($data['mode']) ? $data['mode'] : "horizontal";?>',
				randomStart:<?php echo isset($data['randomstart']) ? $data['randomstart'] : "false";?>, pause:6000
		});
	});
*/

	})
	</script>

    <?php
	}
    // We create our html in the result variable
	$class = "slider";
	if($a['type']=="full")
	{
		$class = "testimonials-slider-full";
	}
	
    $result ='<div class="'. $class . '">';
 
    $the_query = new WP_Query($args);
 
    // Creating a new side loop
    while ( $the_query->have_posts() ) : $the_query->the_post();
 
        $client_name_value = get_post_meta(get_the_ID(), 'Client Name', true);
		$link_value = get_post_meta(get_the_ID(), '_link', true);
 		$url = wp_get_attachment_thumb_url( get_post_thumbnail_id(@$post->ID) );
        $result .='<div>'; // Start Slide
  
/*
		if ( has_post_thumbnail() ) { // check if the post has a Post Thumbnail assigned to it.
		  $result .= '<img  src="'.$url.'" />';
		}
*/
		$result .= '<div class="inner">';

		$result .= '<p>'.apply_filters('the_content',get_the_content()).'</p>';
					// Displaying the author of the testimonial and also creating a link if the Link custom field is provided
		$result .= '</div>';


        //if ($link_value != '') {
           $result .= '<footer><a href="http://'.$link_value.'" >'.get_the_title().'</a></footer>';
        //}

/*
        else {
            $result .= '<footer>'.get_the_title().'</footer>';
		}
*/
        $result .='</div>'; // End Slide
 
 
    endwhile;
	$result .= '</div>'; // End Slider
 
    return $result;
}

// Adding shortcode
add_shortcode('show_testimonials', 'display_testimonial_slider');
 
?>