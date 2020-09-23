<?php
get_header();
while (have_posts()) {
    the_post();
    pageBanner();

?>
    <div class="container container--narrow page-section">
        <div class="generic-content">
            <div class="row group">
                <!-- 2カラムレイアウト -->
                <div class="one-third">
                    <?php the_post_thumbnail('professorPortrait'); ?>
                </div>
                <div class="two-third">
                    <?php
                    $likeCount = new WP_Query(array(
                        'post_type' => 'like',
                        'meta_query' => array( //professorIDと一致した like post を取得したい
                            array(
                                'key' => 'liked_professor_id', //custom field name
                                'compare' => '=',
                                'value' => get_the_ID() // current professorID
                            )
                        )
                    ));
                    $existStatus = 'no';
                    if (is_user_logged_in()) {

                        $existQuery = new WP_Query(array(  //currnet user の持っているlike postを確認
                            'author' => get_current_user_id(), // 
                            'post_type' => 'like',
                            'meta_query' => array( //professorIDと一致した like post を取得したい
                                array(
                                    'key' => 'liked_professor_id', //custom field name
                                    'compare' => '=',
                                    'value' => get_the_ID() // current professorID
                                )
                            )
                        ));
                        if ($existQuery->found_posts) { //like postを一つでももっていればtrueになる
                            $existStatus = 'yes';
                        }
                    }

                    ?>
                    <span class="like-box" data-like="<?php echo $existQuery->posts[0]->ID; ?>" data-professor="<?php the_ID(); ?>" data-exists="<?php echo $existStatus; ?>">
                        <!-- jsにprofessor-post-idを渡すためにカスタム属性を利用 -->
                        <!-- jsにLike-post-idを渡すためにカスタム属性を利用 -->
                        <i class="fa fa-heart-o" aria-hidden="true"></i>
                        <i class="fa fa-heart" aria-hidden="true"></i>
                        <span class="like-count"><?php echo $likeCount->found_posts; ?></span>
                        <!-- found_postsメソッドはlikeのpost数をoutputしてくれる関数-->
                    </span>
                    <?php the_content(); ?>
                </div>

            </div>
        </div>
        <?php

        $relatedPrograms = get_field('related_programs');  /*カスタムフィールドに設定したFieldNameをセットするとarrayが帰ってくる */
        if ($relatedPrograms) {

            echo '<hr class="section-break">';
            echo '<h2 class="headline headline--medium">担当学科</h2>';
            echo '<ul class="link-list min-list">';
            foreach ($relatedPrograms as $program) { /* $programはオブジェクト */ ?>
                <li><a href="<?php echo get_the_permalink($program); ?>">
                        <?php echo get_the_title($program); ?></a> </li>
        <?php }
            echo '</ul>';
        }


        ?>
    </div> <?php }
        get_footer();

            ?>