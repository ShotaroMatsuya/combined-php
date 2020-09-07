<?php
get_header();

while (have_posts()) {
    the_post(); ?>

    <div class="page-banner">
        <div class="page-banner__bg-image" style="background-image: url(<?php echo get_theme_file_uri('/images/ocean.jpg'); ?>);">
        </div>
        <div class="page-banner__content container container--narrow">
            <h1 class="page-banner__title"><?php the_title(); ?></h1>
            <div class="page-banner__intro">
                <p>Dont foret replac me lator.</p>
            </div>
        </div>
    </div>

    <div class="container container--narrow page-section">
        <?php
        $theParent = wp_get_post_parent_id(get_the_ID()); /* 親ページのidを取得 */
        if ($theParent) { ?>
            <!-- 小ページにのみ表示 -->
            <div class="metabox metabox--position-up metabox--with-home-link">
                <p>
                    <a class="metabox__blog-home-link" href="<?php echo get_permalink($theParent); ?>">
                        <i class="fa fa-home" aria-hidden="true"></i> Back to <?php echo get_the_title($theParent); ?>
                    </a>
                    <span class="metabox__main"><?php the_title(); ?></span>
                </p>
            </div> <!-- getがつく関数はechoする必要がある -->
        <?php }
        ?>

        <?php
        $testArray = get_pages(array(   /* pageがセットされていなかったらfalseを返す */
            'child_of' => get_the_id()  /* child_ofに親ページをセットすると小ページをセットしてくれる　 */
        ));
        if ($theParent or $testArray) { ?>
            <!-- 親ページを持つ or 親ページ自身  -->
            <div class="page-links">
                <h2 class="page-links__title">
                    <a href="<?php echo get_permalink($theParent); ?>"><?php echo get_the_title($theParent); ?></a>
                </h2>
                <ul class="min-list">
                    <?php
                    if ($theParent) {
                        $findChildrenOf = $theParent;   /* 親のページ */
                    } else {
                        $findChildrenOf = get_the_id(); /* 現在のページ */
                    }
                    wp_list_pages(array(
                        'title_li' => NULL,   /* titleを出力するかどうか  */
                        'child_of' => $findChildrenOf,  /*  ここに常に親ページがセットされていてほしい */
                        'sort_column' => 'menu_order'  /* 初期はalphanumericになっているが、メニュー画面から変えられるようになる */
                    )); ?>
                </ul>
            </div>
        <?php } ?>

        <div class="generic-content">
            <?php the_content(); ?>
        </div>

    </div>
<?php }

get_footer();
?>