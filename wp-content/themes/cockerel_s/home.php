<?php
/**
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package cockerel_s
 */

get_header(); ?>
	<div id="primary" class="content-area page-<?php echo get_the_title( $ID ); ?>" >
		<section class="hero-section">
			<img class="hero" src="<?php the_field('hero'); ?>"/>
		</section>
		<section class="triangles page-title">
			 <h1><?php echo get_the_title( $ID ); ?></h1>
		</section>
		<section class="container">
			<?php while ( have_posts() ) : the_post(); ?>

			<?php get_template_part( 'template-parts/content', 'single' ); ?>


			<?php
				// If comments are open or we have at least one comment, load up the comment template.
				if ( comments_open() || get_comments_number() ) :
					comments_template();
				endif;
			?>
			<hr>

		<?php endwhile; // End of the loop. ?>

		</section>
		</main><!-- #main -->
	</div><!-- #primary -->

<?php get_sidebar(); ?>
<?php get_footer(); ?>
