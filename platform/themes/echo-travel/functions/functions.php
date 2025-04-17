<?php

register_sidebar([
    'id' => 'header_sidebar',
    'name' => __('Header sidebar'),
    'description' => __('Header sidebar'),
]);

register_sidebar([
    'id' => 'above_footer_sidebar',
    'name' => __('Above footer sidebar'),
    'description' => __('Above footer sidebar'),
]);

app()->booted(function () {
    remove_sidebar('header_top_sidebar');
});
