<?php
/**
 * The header for the theme.
 *
 * Displays all of the <head> section and everything up till <div id="content">
 *
 * @package cockerel_s
 */
 
 
 
?>
<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
	<link rel="shortcut icon" href="<?php echo get_stylesheet_directory_uri(); ?>/favicon.ico" />
	<base href="/" />
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
	
<?php
	//$postname = $atts['header'];
	
	$headerpage = get_posts(
		array(
			'name'      => 'header',
			'post_type' => 'any'
		)
	);
	
	if ( $headerpage ) {
		$content = $headerpage[0]-> post_content;
		echo do_shortcode($content);
	}
?>
