<?php
/**
 * The template for displaying the homepage.
 *
 *
 * @package cockerel_s
 */
get_header(); ?>

	<section id="hero" class="hero">
		
	<?php 
		if(get_field('content_type') == 'slider') { ?>
		
			<div class="hero-slider">
				<?php for ($i = 1; $i <=4; $i++) {
					if (get_field('hero-slide-' . $i)) { ?>
						<div id="slide-<?php $i ?>" class="<?php if(get_field('hero-text-color-' . $i)) { the_field('hero-text-color-' . $i); } ?>">
							<img src="<?php the_field('hero-slide-' . $i) ?>" />
							<?php
							if (get_field('hero-text-' . $i)) { ?>
								<h2 class="<?php the_field('hero-text-color-' . $i) ?> <?php the_field('hero-text-position-' . $i) ?>">
									<?php the_field('hero-text-' . $i) ?>
								</h2>
							<?php } ?>
						</div>
				<?php } 
				} ?>
			</div>
			
		<?php	
		} else if(get_field('content_type') == 'static') {
			
			if (get_field('hero')) { ?>
			<div class="hero-single">
				
				<img src="<?php the_field('hero') ?>"/>
				<?php if (get_field('hero-text-single')) { ?>
				<h2 class="<?php the_field('hero-text-color-single') ?> <?php the_field('hero-text-position-single') ?>">
					<?php the_field('hero-text-single') ?>
				</h2>
				<?php } ?>
			</div>
			<?php } 
		
		} else if(get_field('content_type') == 'video') {
		
			if (get_field('video_url')) { ?>
			<div class="hero-video">
				
				<video <?php if(get_field('video_loop') == true) {echo 'loop ';}; if(get_field('video_autoplay') == true) { echo 'autoplay'; }?>>
					<?php get_field('video_autoplay')?>
					<source src="<?php echo get_stylesheet_directory_uri(); ?><?php the_field('video_url');?>" type="video/mp4" >
						<?php if (get_field('video_underlay')) { ?>
						<img class="video-underlay" src="<?php the_field('video_underlay');?>" />
						<?php } ?>
						Unfortunately, your browser does not support the video tag.
				</video>
				
			</div>
		<?php } 
		}
		
		?>
		
		<div class="tagline-container">
			<h1 class="centered"><?php echo get_bloginfo ( 'description' );  ?></h1>
		</div>
		
	</section>
	
	<section class="content">

		<?php while ( have_posts() ) : the_post(); ?>
		<?php get_template_part( 'template-parts/content', 'page' ); ?>
		<?php endwhile ?>
	
	</section>

<?php get_footer(); ?>
