<?php
get_header();
while (have_posts()) {
    the_post();
    pageBanner(); ?>
    <div class="container container--narrow page-section">
        <div class="metabox metabox--position-up metabox--with-home-link">
            <p>
                <a class="metabox__blog-home-link" href="<?php echo get_post_type_archive_link('program'); ?>"><i class="fa fa-home" aria-hidden="true"></i> All Programs
                </a> <!--  アーカイブリンクの生成 -->
                <span class="metabox__main"><?php the_title(); ?></span>
            </p>
        </div>
        <div class="generic-content"><?php the_field('main_body_content'); ?></div>
        <!-- eventsポストのカスタムクエリを作成(カスタムフィールドでeventsとprogramsは紐付けられている) -->
        <?php
        $relatedProfessors = new WP_Query(array(  /* custom-queryを作成 (デフォルトだとtypeがpostになっている) */
            'posts_per_page' => -1, /*全件表示 */
            'post_type' => 'professor',
            'orderby' => 'title',
            'order' => 'ASC',     /*昇順 */
            'meta_query' => array(     /*filterを設定 */
                array( /*カスタムフィールドとrelationshipのあるpostのみfiltering */
                    'key' => 'related_programs', //カスタムフィールド名
                    'compare' => 'LIKE',
                    'value' => '"' . get_the_ID() . '"' //現在表示されているpostId
                )
            )
        ));

        if ($relatedProfessors->have_posts()) {
            echo '<hr class="section-break">';
            echo '<h2 class="headline headline--medium"> ' . get_the_title() . 'Professors</h2>';
            echo '<ul class="professor-cards">';
            while ($relatedProfessors->have_posts()) {
                $relatedProfessors->the_post(); ?>
                <li class="professor-card__list-item">
                    <a class="professor-card" href="<?php the_permalink(); ?>">
                        <img class="professor-card__image" src="<?php the_post_thumbnail_url('professorLandscape'); ?>"> <!-- add-image-sizeで指定したニックネーム -->
                        <span class="professor-card__name">
                            <?php the_title(); ?></span>
                    </a>
                </li>
            <?php }
            echo '</ul>';
        }
        wp_reset_postdata(); /*カスタムクエリをwhileLoopしたあとにはこれをセットするのがbestPractice */




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
                array( /*カスタムフィールドとrelationshipのあるpostのみfiltering */
                    'key' => 'related_programs', //カスタムフィールド名
                    'compare' => 'LIKE',
                    'value' => '"' . get_the_ID() . '"' //現在表示されているpostId
                )
            )
        ));

        if ($homepageEvents->have_posts()) {
            echo '<hr class="section-break">';
            echo '<h2 class="headline headline--medium">Upcoming ' . get_the_title() . 'Events</h2>';
            while ($homepageEvents->have_posts()) {
                $homepageEvents->the_post();
                get_template_part('template-parts/content', 'event');
            }
        }

        wp_reset_postdata();  /*メインクエリ(programs)を使用するためにカスタムクエリ(この場合、eventポスト)をリセットする必要がある */

        $relatedCampuses = get_field('related_campus');
        if ($relatedCampuses) {
            echo '<hr class="section-break">';
            echo '<h2 class="headline headline--medium">' . get_the_title() . ' is Available At These Campuses:</h2>';
            echo '<ul class="min-list link-list">';
            foreach ($relatedCampuses as $campus) {
            ?>
                <li><a href="<?php echo get_the_permalink($campus); ?>"><?php echo get_the_title($campus); ?></a></li>
        <?php
            }
            echo '</ul>';
        }

        ?>


    </div>


<?php }
get_footer();

?>