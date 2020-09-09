<?php
get_header();
while (have_posts()) {
    the_post(); ?>
    <div class="page-banner">
        <div class="page-banner__bg-image" style="background-image: url(<?php echo get_theme_file_uri('/images/ocean.jpg'); ?>);"></div>
        <div class="page-banner__content container container--narrow">
            <h1 class="page-banner__title"><?php the_title(); ?></h1>
            <div class="page-banner__intro">
                <p>Dont forget replace me lator.</p>
            </div>
        </div>
    </div>
    <div class="container container--narrow page-section">
        <div class="metabox metabox--position-up metabox--with-home-link">
            <p>
                <a class="metabox__blog-home-link" href="<?php echo get_post_type_archive_link('program'); ?>"><i class="fa fa-home" aria-hidden="true"></i> All Programs
                </a> <!--  アーカイブリンクの生成 -->
                <span class="metabox__main"><?php the_title(); ?></span>
            </p>
        </div>
        <div class="generic-content"><?php the_content(); ?></div>
        <!-- eventsポストのカスタムクエリを作成(カスタムフィールドでeventsとprogramsは紐付けられている) -->
        <?php
        $today = date('Ymd'); /*現在日時 */
        $homepageEvents = new WP_Query(array(  /* custom-queryを作成 (デフォルトだとtypeがpostになっている) */
            'posts_per_page' => 2,
            'post_type' => 'event',
            'meta_key' => 'event_date', /*カスタムフィールド名 */
            'orderby' => 'meta_value_num', /* カスタムフィールドのvalue(デフォルトだとpost_date) */
            'order' => 'ASC',     /*昇順 */
            'meta_query' => array(     /*filterを設定 */
                array( /*todayよりも先のものだけ表示 */
                    'key' => 'event_date',
                    'compare' => '>=',
                    'value' => $today,
                    'type' => 'numeric'
                ),
                array(
                    'key' => 'related_programs', //カスタムフィールド名
                    'compare' => 'LIKE',
                    'value' => '"' . get_the_ID() . '"' //現在表示されているpostId
                )
            )
        ));

        while ($homepageEvents->have_posts()) {
            $homepageEvents->the_post(); ?>
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
                    <p><?php if (has_excerpt()) {
                            echo get_the_excerpt();
                        } else {
                            echo wp_trim_words(get_the_content(), 18);
                        }; ?><a href="<?php the_permalink(); ?>" class="nu gray">Learn more</a></p>
                </div>
            </div>
        <?php
        }
        ?>


    </div>


<?php }
get_footer();

?>