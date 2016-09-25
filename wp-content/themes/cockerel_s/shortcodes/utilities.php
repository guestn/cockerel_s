<?php
    function cockerel_s_currentyear($atts, $content = '') {

		$html = date('Y');
        return do_shortcode($html);
    }

    add_shortcode('currentyear', 'cockerel_s_currentyear');
?>