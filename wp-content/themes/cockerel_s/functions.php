<?php
/**
 * cockerel_s functions and definitions
 *
 * @package cockerel_s
 */

if ( ! function_exists( 'cockerel_s_setup' ) ) :
/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function cockerel_s_setup() {
	/*
	 * Make theme available for translation.
	 * Translations can be filed in the /languages/ directory.
	 * If you're building a theme based on test_s, use a find and replace
	 * to change 'test_s' to the name of your theme in all the template files
	 */
	load_theme_textdomain( 'test_s', get_template_directory() . '/languages' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
	 * Let WordPress manage the document title.
	 * By adding theme support, we declare that this theme does not use a
	 * hard-coded <title> tag in the document head, and expect WordPress to
	 * provide it for us.
	 */
	add_theme_support( 'title-tag' );

	/*
	 * Enable support for Post Thumbnails on posts and pages.
	 *
	 * @link http://codex.wordpress.org/Function_Reference/add_theme_support#Post_Thumbnails
	 */
	add_theme_support( 'post-thumbnails' );

	// This theme uses wp_nav_menu() in one location.
	register_nav_menus( array(
		'primary' => esc_html__( 'Primary Menu', 'test_s' ),
	) );

	/*
	 * Switch default core markup for search form, comment form, and comments
	 * to output valid HTML5.
	 */
	add_theme_support( 'html5', array(
		'search-form',
		'comment-form',
		'comment-list',
		'gallery',
		'caption',
	) );

	/*
	 * Enable support for Post Formats.
	 * See http://codex.wordpress.org/Post_Formats
	 */
	add_theme_support( 'post-formats', array(
		'aside',
		'image',
		'video',
		'quote',
		'link',
	) );
	
	/*
	 * Enable support for custom header
	 * See https://codex.wordpress.org/Custom_Headers
	 */
	$args = array(
		'width'         => 250,
		'height'        => 50,
		'default-image' => get_template_directory_uri() . '/images/logo.png',
		'uploads'       => true,
	);
	add_theme_support( 'custom-header', $args );

	// Set up the WordPress core custom background feature.
	add_theme_support( 'custom-background', apply_filters( 'test_s_custom_background_args', array(
		'default-color' => 'ffffff',
		'default-image' => '',
	) ) );
}
endif; // test_s_setup
add_action( 'after_setup_theme', 'cockerel_s_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function test_s_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'test_s_content_width', 640 );
}
add_action( 'after_setup_theme', 'test_s_content_width', 0 );

/**
 * Register widget area.
 *
 * @link http://codex.wordpress.org/Function_Reference/register_sidebar
 */
function cockerel_s_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'test_s' ),
		'id'            => 'sidebar-1',
		'description'   => '',
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget'  => '</aside>',
		'before_title'  => '<h1 class="widget-title">',
		'after_title'   => '</h1>',
	) );
}
add_action( 'widgets_init', 'cockerel_s_widgets_init' );

/**
 * Update the ancient version of jquery.
 */
function replace_jquery() {
	if (!is_admin()) {
		wp_deregister_script('jquery');
		wp_register_script('jquery', 'https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.2/jquery.min.js', false, '2.1.4');
	}
}
add_action('wp_enqueue_scripts', 'replace_jquery');

/**
 * Enqueue scripts and styles.
 */
function cockerel_s_scripts() {

	wp_enqueue_style( 'bootstrap', get_template_directory_uri() . '/bootstrap/css/bootstrap.min.css');
	
	wp_enqueue_style( 'cockerel_s-style', get_stylesheet_uri() );

	wp_enqueue_style( 'font-awesome', 'https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css');
	
	wp_enqueue_style( 'google-fonts', 'http://fonts.googleapis.com/css?family=Open+Sans+Condensed:700');
	
	wp_enqueue_style( 'slick-style', get_template_directory_uri() . '/css/slick.css' );
	
	wp_enqueue_style( 'slick-theme-style', get_template_directory_uri() . '/css/slick-theme.css' );
	
	wp_enqueue_script( 'packery', '//cdnjs.cloudflare.com/ajax/libs/packery/1.4.2/packery.pkgd.min.js', array('jquery'), '', true);
	
	//wp_enqueue_script( 'modernizr', '//cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js', array('jquery'), '', true);
		
	wp_enqueue_script( 'slick', '//cdn.jsdelivr.net/jquery.slick/1.5.9/slick.min.js', array('jquery'), '', true );	
	
	wp_enqueue_script( 'stellar', get_template_directory_uri() . '/js/jquery.stellar.min.js', array('jquery'), '', true );
	
	wp_enqueue_script( 'smoothscroll', get_template_directory_uri() . '/js/jquery.smooth-scroll.js', array('jquery'), '', true );	

	wp_enqueue_script( 'cockerel_s-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20120206', '', true );

	//wp_enqueue_script( 'test_s-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20130115', true );
	
	wp_enqueue_script( 'bootstrap-js', '//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js', '', true );
			
	wp_enqueue_script( 'googlemaps', get_template_directory_uri() . '/js/googlemaps.js', array( 'googlemaps-api' ), '', false );
	
	wp_enqueue_script( 'main', get_template_directory_uri() . '/js/main.js', array('jquery', 'stellar', 'slick', 'packery'), '', true );
	
	//wp_enqueue_script( 'modernizr', get_template_directory_uri() . 'js/modernizr.custom.js', array(), '', false );

    wp_enqueue_script( 'googlemaps-api', '//maps.googleapis.com/maps/api/js?key=AIzaSyC3YH6ekPHy7YLA3NApjQ4hmpT24IDNM6U', '', '', false );




	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'cockerel_s_scripts' );

/**
 * Implement the Custom Header feature.
 */
	require get_template_directory() . '/inc/custom-header.php';
	
/**
 * Custom template tags for this theme.
 */
	require get_template_directory() . '/inc/template-tags.php';
	
/**
 * Custom functions that act independently of the theme templates.
 */
	require get_template_directory() . '/inc/extras.php';
	
/**
 * Customizer additions.
 */
	require get_template_directory() . '/inc/customizer.php';
	
/**
 * Load Jetpack compatibility file.
 */
	require get_template_directory() . '/inc/jetpack.php';
	

