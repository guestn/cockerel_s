<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after
 *
 * @package cockerel_s

 */

?>
	<footer class="site-footer">

		<section id="top-footer" class="top-footer">
			
			<div class="container">
				<h4>Some text in the top-footer area</h4>
				<div class="scroll-up arrow">
					<i class="fa fa-chevron-up"></i>
				</div>
			</div>	
				
		</section><!-- /top-footer -->

		<section id="mid-footer" class="mid-footer">

			<div class="container">

				<div class="col-md-2 col-sm-2 col-xs-3 logo" >
					<a href="<?php echo esc_url( home_url('/')); ?>" class="site-logo">
						<img src="<?php echo get_stylesheet_directory_uri(); ?>/images/logos/site-logo.svg" alt="<?php echo( get_bloginfo( 'title' ) ); ?>" />
					</a>
				</div>

				<div class="col-md-4 col-sm-6 col-xs-9 sitemap">
					<h3>Sitemap</h3>
					<?php wp_nav_menu( array( 'menu_id' => 'location-menu' ) ); ?>
				</div>

				<div class="col-md-3 col-sm-3 col-xs-4 address">
					<h3>Contact Us</h3>
					<a href="tel:1<?php echo preg_replace('/[^A-Za-z0-9]/', '', do_shortcode('[phone]')) ?>">
						<i class="fa fa-phone"></i><span><?php echo do_shortcode('[phone]') ?></span>
					</a>
					<a href="https://www.google.com/maps/place/<?php echo do_shortcode('[address]') . do_shortcode('[address2]')?>">
						<i class="fa fa-map"></i><span><?php echo do_shortcode('[address]') ?></span><br>
						<span><?php echo do_shortcode('[address2]') ?></span>
					</a>
				</div>

				<div class="col-md-2 col-xs-12 social-media">
						<a target="_blank" title="Twitter" href="https://twitter.com/"><i class="fa fa-twitter fa-2x"></i></a>
						<a target="_blank" title="Facebook" href="https://www.facebook.com/"><i class="fa fa-facebook fa-2x"></i></a>
						<a target="_blank" title="YouTube" href="https://www.youtube.com/"><i class="fa fa-youtube fa-2x"></i></a>
						<a target="_blank" title="Instagram" href="https://www.instagram.com/"><i class="fa fa-instagram fa-2x"></i></a>
						<a target="_blank" title="Instagram" href="https://www.linkedin.com/"><i class="fa fa-linkedin fa-2x"></i></a>

				</div>

			</div>

		</section><!-- /mid-footer -->

		<section class="final-footer" id="final-footer">
			<span>&#169; <?php echo date('Y') . '&nbsp;'; echo get_option('blogname'); ?></span><span class="pull-right">Online Advantage by <a href="http://roostergrin.com/" rel="designer">Rooster Grin Media <img id="author-logo" src="<?php echo get_stylesheet_directory_uri(); ?>/images/logos/rg-logo-white.svg"></a></span>
		</section>

	</footer><!-- /site-footer -->
</div><!-- #page -->

			<?php wp_footer(); ?>

			<!-- Modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >

			  <div class="modal-dialog" role="document">

			    <div class="modal-content">
			      <?php echo do_shortcode('[contact-form-7 id="545" title="Appointment Form"]'); ?>
			    </div>

			  </div>

			</div>


</body>

</html>
