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
	<div id="primary" class="content-area page-<?php echo $post->post_name; ?>" >
		<section class="hero-section">
			 <img ckass="hero-single" src="<?php echo the_field('hero'); ?>"/>
			 <?php if(get_field('tagline')): ?>
			<h3 class="tagline"><?php the_field('tagline'); ?></h3>
			<?php endif; ?>
		</section>
		<section class="page-title">
			 <h1 class="centered"><?php echo get_the_title( $post ); ?></h1>
		</section>
		<section>
			<?php while ( have_posts() ) : the_post(); ?>
			<?php get_template_part( 'template-parts/content', 'page' ); ?>
			<?php endwhile ?>
		</section>
		</main><!-- #main -->
	</div><!-- #primary -->

<?php get_footer(); ?>
