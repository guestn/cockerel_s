<?php
   /*
   Plugin Name: Bantam
   Plugin URI: http://roostergrin.com
   Description: A plugin that adds all the useful functions- so you don't have to!
   Version: 0.1
   Author: Nicholas Guest
   Author URI: http://roostergrin.com
   License: GPL2
   */






/* Remove irritating <p> tag auto-add */
/* ---------------------------------- */	

	remove_filter( 'the_content', 'wpautop' );
	remove_filter( 'the_excerpt', 'wpautop' );


/* Customize Admin bar */
/* ------------------- */

	function fb_style_admin_bar() {
		if ( is_admin_bar_showing() ) { ?>
			<style type="text/css" media="screen">
				html { margin-top: 0px !important; }
				* html body { margin-top: 0px !important; }
				#wpadminbar { background: rgba(0,0,0,0.5); 
					position: absolute; 
					width: 400px;
					right: -556px;
					left: auto;
					border-bottom-left-radius: 5px; 
					box-shadow: 0 0 10px 0 rgba(50,50,50,0.15); 
					color: white;
					transition: right 0.3s;
				}
				#wpadminbar:hover {
					right: 0;
				}
			</style>
		<?php
		}
		
		if ( !is_user_logged_in() ){ ?>
			<style>
				#wpadminbar{ display:none; }
			</style>
		<?php
		}
	}
	add_action( 'wp_head', 'fb_style_admin_bar', 11 ); //style for frontend only
	
	function fb_style_feature_image() { 
		if ( is_admin_bar_showing() ) { ?>
			<style type="text/css" media="screen">
				p.hide-if-no-js {
					background: #f0f0f0;
				}
			</style>
		<?php
		}


	
	}	
	add_action( 'admin_head', 'fb_style_feature_image', 11 ); //style for backend only
	

/* Disable/Enable WordPress Admin Bar for all users */
/* ------------------------------------------------ */	

	show_admin_bar(true);


/* Customize login form */
/* -------------------- */

function custom_login_logo() { ?>
    <style type="text/css">
        .login h1 a {
	        width: 200px;
	        background-size: 200px 200px;
	        background-position: center center;
            background-image: url(<?php echo get_stylesheet_directory_uri(); ?>/roostergrin-logo-full.svg);
            padding-bottom: 30px;
        }
    </style>
<?php }
add_action( 'login_enqueue_scripts', 'custom_login_logo' );

function custom_login_logo_url() {
    return 'http://www.roostergrin.com';
}
add_filter( 'login_headerurl', 'custom_login_logo_url' );

function custom_login_logo_url_title() {
    return 'Rooster Grin Media';
}
add_filter( 'login_headertitle', 'custom_login_logo_url_title' );


/* Class for adding a new field to the options-general.php page */
/* ------------------------------------------------------------ */	

	class Add_Settings_Field {
	
		/**
		 * Class constructor
		 */
		public function __construct() {
			add_action( 'admin_init' , array( &$this , 'register_fields' ) );
		}
	
		/**
		 * Add new fields to wp-admin/options-general.php page
		 */
		public function register_fields() {
			register_setting( 'general', 'extra_blog_description', 'esc_attr' );
			register_setting( 'general', 'extra_blog_description2', 'esc_attr' );
			register_setting( 'general', 'extra_blog_description3', 'esc_attr' );
			register_setting( 'general', 'extra_blog_descriptionB', 'esc_attr' );
			register_setting( 'general', 'extra_blog_description2B', 'esc_attr' );
			register_setting( 'general', 'extra_blog_description3B', 'esc_attr' );	
	
			add_settings_field(
				'phone',
				'<label for="extra_blog_desc_id">' . __( 'Phone Number' , 'extra_blog_description' ) . '</label>',
				array( &$this, 'fields_html' ),
				'general'
			);
			add_settings_field(
				'address',
				'<label for="extra_blog_desc_id">' . __( 'Address' , 'extra_blog_description2' ) . '</label>',
				array( &$this, 'fields_html2' ),
				'general'
			);
			add_settings_field(
				'address2',
				'<label for="extra_blog_desc_id">' . __( 'Address Line 2' , 'extra_blog_description3' ) . '</label>',
				array( &$this, 'fields_html3' ),
				'general'
			);
			add_settings_field(
				'phoneB',
				'<label for="extra_blog_desc_id">' . __( 'Phone Number (#2)' , 'extra_blog_descriptionB' ) . '</label>',
				array( &$this, 'fields_htmlB' ),
				'general'
			);
			add_settings_field(
				'addressB',
				'<label for="extra_blog_desc_id">' . __( 'Address (#2)' , 'extra_blog_description2B' ) . '</label>',
				array( &$this, 'fields_html2B' ),
				'general'
			);
			add_settings_field(
				'address2B',
				'<label for="extra_blog_desc_id">' . __( 'Address Line 2 (#2)' , 'extra_blog_description3B' ) . '</label>',
				array( &$this, 'fields_html3B' ),
				'general'
			);
			
		}
	
		/**
		 * HTML for extra settings
		 */
		public function fields_html() {
			$value = get_option( 'extra_blog_description', '' );
			echo '<input type="text" id="extra_blog_desc_id" name="extra_blog_description" value="' . esc_attr( $value ) . '" />';
		}
		public function fields_html2() {
			$value2 = get_option( 'extra_blog_description2', '' );
			echo '<input type="text" id="extra_blog_desc_id2" name="extra_blog_description2" value="' . esc_attr( $value2 ) . '" />';
		}
		public function fields_html3() {
			$value3 = get_option( 'extra_blog_description3', '' );
			echo '<input type="text" id="extra_blog_desc_id3" name="extra_blog_description3" value="' . esc_attr( $value3 ) . '" />';
		}
		public function fields_htmlB() {
			$valueB = get_option( 'extra_blog_descriptionB', '' );
			echo '<input type="text" id="extra_blog_desc_id" name="extra_blog_descriptionB" value="' . esc_attr( $valueB ) . '" />';
		}
		public function fields_html2B() {
			$value2B = get_option( 'extra_blog_description2B', '' );
			echo '<input type="text" id="extra_blog_desc_id2" name="extra_blog_description2B" value="' . esc_attr( $value2B ) . '" />';
		}
		public function fields_html3B() {
			$value3B = get_option( 'extra_blog_description3B', '' );
			echo '<input type="text" id="extra_blog_desc_id3" name="extra_blog_description3B" value="' . esc_attr( $value3B ) . '" />';
		}

	
	}
	new Add_Settings_Field();
	
	function setting_shortcode( $atts ){
		return get_option( 'extra_blog_description' );
	}
	function setting_shortcode_stripped( $atts ){
		return preg_replace('/[^A-Za-z0-9]/','',get_option( 'extra_blog_description' ));
	}
	function setting_shortcode2( $atts ){
		return get_option( 'extra_blog_description2' );
	}
	function setting_shortcode3( $atts ){
		return get_option( 'extra_blog_description3' );
	}
	function setting_shortcodeB( $atts ){
		return get_option( 'extra_blog_descriptionB' );
	}
	function setting_shortcode_strippedB( $atts ){
		return preg_replace('/[^A-Za-z0-9]/','',get_option( 'extra_blog_descriptionB' ));
	}
	function setting_shortcode2B( $atts ){
		return get_option( 'extra_blog_description2B' );
	}
	function setting_shortcode3B( $atts ){
		return get_option( 'extra_blog_description3B' );
	}
	add_shortcode( 'phone', 'setting_shortcode' );
	add_shortcode( 'phone_stripped', 'setting_shortcode_stripped');
	add_shortcode( 'address', 'setting_shortcode2' );
	add_shortcode( 'address2', 'setting_shortcode3' );
	add_shortcode( 'phoneB', 'setting_shortcodeB' );
	add_shortcode( 'phoneB_stripped', 'setting_shortcode_strippedB');
	add_shortcode( 'addressB', 'setting_shortcode2B' );
	add_shortcode( 'address2B', 'setting_shortcode3B' );

/* Stop auto-production of multiple image sizes */
/* -------------------------------------------- */	

	function remove_default_image_sizes($sizes) {
	    unset( $sizes['thumbnail']);
	    unset( $sizes['medium']);
	    unset( $sizes['large']);
	     
	    return $sizes;
	}
	//add_filter('intermediate_image_sizes_advanced', 'remove_default_image_sizes');


/* Stop auto-production of image links by default in media gallery */
/* --------------------------------------------------------------- */	

	function imagelink_setup() {
		$image_set = get_option( 'image_default_link_type' );
		
		if ($image_set !== 'none') {
			update_option('image_default_link_type', 'none');
		}
	}
	add_action('admin_init', 'imagelink_setup', 10);


/* Stop width & height inline attributes being added by default in media gallery */
/* Also stop absolute image path from being default in from media gallery		 */
/* ----------------------------------------------------------------------------- */	

	function remove_width_attribute( $html ) {
	   $html = preg_replace( '/(width|height)="\d*"\s/', "", $html );
	   
	   $start = 'src="';
	   $end = '/wp-content';
 
	   $html = preg_replace('#('.preg_quote($start).')(.*?)('.preg_quote($end).')#si', 'src="/wp-content', $html);
	   
	   //$html = strstr($html, '/wp-content');
	   
	   return $html;
	}
	add_filter( 'post_thumbnail_html', 'remove_width_attribute', 10 );
	add_filter( 'image_send_to_editor', 'remove_width_attribute', 10 );


/* Creates absolute image path when on localhost    */
/* ------------------------------------------------ */

	function fix_relpath($the_content){
		$url = site_url();
		
		if (strpos($url, 'localhost') !== false) {
	    	return str_replace('="/wp-content', '="' . $url . '/wp-content', $the_content);
	
		}
		
	}
	add_filter('the_content', 'fix_relpath'); 


/* Limit number of saved revisions to 5 */
/* ------------------------------------ */	

	//add_filter( 'wp_revisions_to_keep', 5, 10, 2 );


/* Allow SVG upload (images won't appear in media gallery) */
/* ------------------------------------------------------- */

	function cc_mime_types($mimes) {
		$mimes['svg'] = 'image/svg+xml';
		return $mimes;
	}
	add_filter('upload_mimes', 'cc_mime_types');
	
	// add thumbnail support in media gallery (list view only...) //
	function fix_svg_thumb_display() {
		echo '<style> td.media-icon img[src$=".svg"], img[src$=".svg"].attachment-post-thumbnail { width: 100% !important; height: auto !important; } </style>';
	}
	add_action('admin_head', 'fix_svg_thumb_display');

	
/* Remove Smiley junk code added by WP 4.2+ */
/* ---------------------------------------- */
	
	remove_action( 'wp_head', 'print_emoji_detection_script', 7 );
	remove_action( 'admin_print_scripts', 'print_emoji_detection_script' );
	remove_action( 'wp_print_styles', 'print_emoji_styles' );
	remove_action( 'admin_print_styles', 'print_emoji_styles' );


/* Shortcode setup                          */
/* ---------------------------------------- */

    $shortcodes = array(
		'bg-separator',
		'map',
		'utilities'
    );

    foreach($shortcodes as $shortcode) {
        $path = get_template_directory() . '/shortcodes/' . $shortcode . '.php';
        require_once($path);
    }


/* Contact menu launches modal              */
/* ---------------------------------------- */

	add_filter( 'nav_menu_link_attributes', 'my_nav_menu_attribs', 10, 3 );
	function my_nav_menu_attribs( $atts, $item, $args ) {
		// The ID of the target menu item
		$menu_target = 1314;

		if ($item->ID == $menu_target) {
	    	$atts['data-target'] = '#contactModal';
			$atts['data-toggle'] = 'modal';
		}
		return $atts;
	}

/* Make custom menu links relative not absolute */
/* -------------------------------------------- */

	add_filter('menu_item_type_custom','wp_make_link_relative');


/* Make Header & Footer Post Types in Menu      */
/* -------------------------------------------- */


function header_footer_postype() {
    $args = array(
        'public' => true,
        'label' => 'Header & Footer',
        'supports' => array(
            'title',
            'editor',
			'thumbnail'
        ),
        'menu_icon' => 'dashicons-align-center'
    );
    register_post_type('header_footer', $args);
}

add_action('init', 'header_footer_postype');


/* Make bloginfo & wp_nav_menu shortcode  */
/* -------------------------------------- */


function cockerel_bloginfo_shortcode( $atts ) {
   extract(shortcode_atts(array(
       'key' => '',
   ), $atts));
   return get_bloginfo($key);
}
add_shortcode('bloginfo', 'cockerel_bloginfo_shortcode');

function cockerel_menu_shortcode($atts, $content = null) {
	extract(shortcode_atts(array( 'menu_id' => null, 'class' => null ), $atts));
	return wp_nav_menu( array( 'menu' => $menu_id, 'menu_class' => $class, 'echo' => false ) );
}

add_shortcode('menu', 'cockerel_menu_shortcode');

function cockerel_logo_shortcode( $atts ) {
   extract(shortcode_atts(array(
       'key' => '',
   ), $atts));
   $logo_url =  esc_url(get_stylesheet_directory_uri() . '/images/logos/site-logo.svg');
   return file_get_contents( $logo_url );
}
add_shortcode('site-logo', 'cockerel_logo_shortcode');

