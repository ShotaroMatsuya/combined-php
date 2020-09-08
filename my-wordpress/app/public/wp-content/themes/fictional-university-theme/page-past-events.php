<?php
get_header(); ?>
<div class="page-banner">
    <div class="page-banner__bg-image" style="background-image: url(<?php echo get_theme_file_uri('/images/ocean.jpg'); ?>);"></div>
    <div class="page-banner__content container container--narrow">
        <h1 class="page-banner__title">
            Past Events
        </h1>
        <div class="page-banner__intro">
            <p>
                A recap of our past events.
            </p>
        </div>
    </div>
</div>
<div>

    <div class="container container--narrow page-section">
        <?php

        $today = date('Ymd'); /*現在日時 */
        $pastEvents = new WP_Query(array(  /* customqueryを作成  */
            'paged' => get_query_var('paged', 1), /*paginationLinkのurlクエリと紐付けるために必要(pageが取得できなかったら1にセット) */
            'post_type' => 'event',
            'meta_key' => 'event_date', /*カスタムフィールド名 */
            'orderby' => 'meta_value_num', /* カスタムフィールドのvalue(デフォルトだとpost_date) */
            'order' => 'ASC',     /*昇順 */
            'meta_query' => array(     /*filterを設定 */
                array( /*todayよりも昔のものだけ表示 */
                    'key' => 'event_date',
                    'compare' => '<',
                    'value' => $today,
                    'type' => 'numeric'
                )
            )
        ));
        while ($pastEvents->have_posts()) {
            $pastEvents->the_post(); ?>
            <div class="event-summary">
                <a class="event-summary__date t-center" href="#">
                    <span class="event-summary__month">
                        <?php
                        $eventDate = new DateTime(get_field('event_date')); /* custom-fieldプラグインの持つ関数(valueを取得する) */
                        echo $eventDate->format('M'); /* JUN JUL SEP  */

                        ?></span>
                    <span class="event-summary__day">
                        <?php
                        $eventDate = new DateTime(get_field('event_date'));
                        echo $eventDate->format('d'); /* 01-30 */

                        ?></span>
                </a>
                <div class="event-summary__content">
                    <h5 class="event-summary__title headline headline--tiny"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h5>
                    <p><?php echo wp_trim_words(get_the_content(), 18); ?><a href="<?php the_permalink(); ?>" class="nu gray">Learn more</a></p>
                </div>
            </div>


        <?php }
        /*paginationリンクをカスタムクエリと紐付ける必要がある */
        echo paginate_links(array(
            'total' => $pastEvents->max_num_pages, /*最大ページ数をdynamicに取得 */

        ));


        ?>

    </div>
    <?php
    get_footer();
    ?>