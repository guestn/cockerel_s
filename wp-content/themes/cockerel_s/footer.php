<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after
 *
 * @package cockerel_s

 */		
	$footerpage = get_posts(
		array(
			'name'      => 'footer',//$footerpostname,
			'post_type' => 'any'
		)
	);
	if ( $footerpage ) {
		$content = $footerpage[0]-> post_content;
		echo do_shortcode($content);
	}
	
	wp_footer(); ?>

	
</body>

</html>
