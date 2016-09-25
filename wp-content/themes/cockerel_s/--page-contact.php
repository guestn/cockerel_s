<?php
/**
 * The template for displaying homepage.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package cockerel_s
 */

get_header(); ?>
	<div id="primary" class="content-area page-contact" >

		<section class="hero-section">
			<img class="hero-single" src="<?php the_field('hero'); ?>"/>
		</section>
		<?php if(get_field('blurb')): ?>
		<section class="container" id="page-intro-text">
			<?php the_field('page-intro-text'); ?>
		</section>
		<?php endif; ?>
		
		<section id="page-title">
			<h1 class="centered"><?php echo get_the_title( $ID ); ?></h1>
		</section>

		<section id="googlemaps">
			
			<div class="container">
				<div id="gmaps1"></div>
				<span id="latitude" class="latitude hidden" data-value="<?php the_field('latitude') ?>"></span>
				<span id="longitude" class="longitude hidden" data-value="<?php the_field('longitude') ?>"></span>
			</div>
			
		</section>

		<section id="send-us-text">
			<div class="container">
				<div class="col-md-8 col-md-offset-2">
					<h2 class="centered">Send Us a Message</h2>
					<h4 class="centered">To schedule a complimentary consultation, please complete and submit the request form below. Our Patient Care Coordinator will contact you to confirm your appointment.</h4>
				</div>
			</div>
		</section>
		
		<section id="contact-form">
			<div class="container">
			<?php echo do_shortcode('[contact-form-7 id="51" title="Contact form 1"]'); ?>
			</div>
		</section>
		</main><!-- #main -->
	</div><!-- #primary -->
	
<?php get_footer(); ?>
