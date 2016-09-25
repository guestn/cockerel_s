<?php
    function cockerel_s_bg_separator($atts, $content = '') {

        $title = isset($atts['title']) ? $atts['title'] : '';
        $image = isset($atts['image']) ? $atts['image'] : '';

        $html = '<section class="bg-separator shadow" style="background-image:url(' . $image  . '); padding:' . $atts['padding'] . ' 0 ' . $atts['padding'] . ' 0" data-stellar-background-ratio="' .  $atts['stellar'] . '">';
        $html .= '<div class="container">';

        $html .= '<h2>' . $title . '</h2>';
        $html .= $content;
        $html .= '</div>';
        $html .= '</section>';
        return do_shortcode($html);
    }

    add_shortcode('bg-separator', 'cockerel_s_bg_separator');
?>