<?php
get_header();
while (have_posts()) {
    the_post();
    pageBanner(); ?>
    <div class="container container--narrow page-section">
        <div class="metabox metabox--position-up metabox--with-home-link">
            <p>
                <a class="metabox__blog-home-link" href="<?php echo get_post_type_archive_link('campus'); ?>"><i class="fa fa-home" aria-hidden="true"></i> All Campuses
                </a> <!--  アーカイブリンクの生成 -->
                <span class="metabox__main"><?php the_title(); ?></span>
            </p>
        </div>
        <div class="generic-content"><?php the_content(); ?></div>
        <?php
        $mapLocation = get_field('map_location');
        ?>
        <div class="acf-map">
            <div class="marker" data-lat="<?php echo $mapLocation['lat']; ?>" data-lng="<?php echo $mapLocation['lng']; ?>">
                <h3><?php the_title(); ?></h3>
                <?php echo $mapLocation['address']; ?>
            </div>
        </div>





        <!-- programsポストのカスタムクエリを作成(カスタムフィールドでprogramsとcampusは紐付けられている) -->
        <?php
        $relatedPrograms = new WP_Query(array(  /* custom-queryを作成 (デフォルトだとtypeがpostになっている) */
            'posts_per_page' => -1, /*全件表示 */
            'post_type' => 'program',
            'orderby' => 'title',
            'order' => 'ASC',     /*昇順 */
            'meta_query' => array(     /*filterを設定 */
                array( /*カスタムフィールドとrelationshipのあるpostのみfiltering */
                    'key' => 'related_campus', //カスタムフィールド名
                    'compare' => 'LIKE',
                    'value' => '"' . get_the_ID() . '"' //現在表示されているpostId
                )
            )
        ));

        if ($relatedPrograms->have_posts()) {
            echo '<hr class="section-break">';
            echo '<h2 class="headline headline--medium"> Programs Available At This Campus</h2>';
            echo '<ul class="min-list link-list">';
            while ($relatedPrograms->have_posts()) {
                $relatedPrograms->the_post(); ?>
                <li>
                    <a href="<?php the_permalink(); ?>">
                        <?php the_title(); ?>
                    </a>
                </li>
        <?php }
            echo '</ul>';
        }
        wp_reset_postdata(); /*カスタムクエリをwhileLoopしたあとにはこれをセットするのがbestPractice */
        ?>


    </div>


<?php }
get_footer();

?>