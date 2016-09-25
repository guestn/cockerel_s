<?php
/**
 * The template for displaying 404 pages (not found).
 *
 * @package test_s
 */

get_header(); ?>

	<div id="primary" class="content-area">
		<main id="main" class="site-main error-404" role="main">
			<section class="error-404 not-found">
				<header class="page-header">
					<h1 class="page-title"><?php esc_html_e( 'Oops! That page can&rsquo;t be found.', 'test_s' ); ?></h1>
				</header><!-- .page-header -->

				<div class="page-content container">
					<h3>It looks like nothing was found at this location.</h3>
					<p>Maybe <a href="/">go back home?</a></p>
				</div><!-- .page-content -->
			</section><!-- .error-404 -->

		</main><!-- #main -->
	</div><!-- #primary -->

<?php get_footer(); ?>
