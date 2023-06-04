<?php
get_header();
pageBanner(array(
    'title' => 'Search Results',
    'subtitle' => 'You searched for &ldquo;' . esc_html(get_search_query()) . '&rdquo;.'
)); ?>
<div>
    <div class="container container--narrow page-section">
        <?php
        if (have_posts()) {

            while (have_posts()) {
                the_post();
                get_template_part('template-parts/content', get_post_type());
            }
            echo paginate_links();
        } else {
            echo '<h2 class="headline headline--small-plus">検索結果がみつかりませんでした</h2>';
        }

        get_search_form();
        ?>

    </div>
    <?php
    get_footer();
    ?>