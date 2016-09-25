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

	<header class="site-header">

		<a href="<?php echo esc_url( home_url('/')); ?>" class="site-logo">
			<img src="<?php echo get_stylesheet_directory_uri(); ?>/images/logos/site-logo.svg" alt="<?php echo( get_bloginfo( 'title' ) ); ?>" />
		</a>

		<nav class="header-menu main-navigation" >
			<?php wp_nav_menu( array( 'theme_location' => 'primary', 'menu_id' => 'primary-menu' ) ); ?>
		</nav>

	</header><!-- /site-header -->

