<?php
get_header();
pageBanner(array(
    'title' => 'All Events',
    'subtitle' => 'See what is going on in our world.'
));
?>
<div>

    <div class="container container--narrow page-section">
        <?php while (have_posts()) {
            the_post();
            get_template_part('template-parts/content', 'event');
        }

        echo paginate_links();


        ?>
        <hr class="section-break">
        <p>過去のイベント情報 <a href="<?php echo site_url('/past-event') ?>">過去のイベント情報保管庫です</a></p>

    </div>
    <?php
    get_footer();
    ?>