<?php
get_header();
pageBanner(array(
    'title' => '過去イベント一覧',
    'subtitle' => '過去イベント保管庫です'
)); ?>
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
            $pastEvents->the_post();
            get_template_part('template-parts/content', 'event');
        }
        /*paginationリンクをカスタムクエリと紐付ける必要がある */
        echo paginate_links(array(
            'total' => $pastEvents->max_num_pages, /*最大ページ数をdynamicに取得 */

        ));


        ?>

    </div>
    <?php
    get_footer();
    ?>