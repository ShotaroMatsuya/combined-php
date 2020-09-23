<?php
add_action('rest_api_init', 'universityLikeRoutes');

function universityLikeRoutes()
{
    register_rest_route('university/v1', 'manageLike', array(
        'methods' => 'POST', // adding Like post
        'callback' => 'createLike'
    ));
    register_rest_route('university/v1', 'manageLike', array(
        'methods' => 'DELETE', // deleting like post
        'callback' => 'deleteLike'
    ));
}

function createLike($data)
{
    if (is_user_logged_in()) { //subscriberのみがLIkeできる
        $professor = sanitize_text_field($data['professorId']);
        $existQuery = new WP_Query(array(  //currnet user の持っているlike postを確認
            'author' => get_current_user_id(), // 
            'post_type' => 'like',
            'meta_query' => array( //professorIDと一致した like post を取得したい
                array(
                    'key' => 'liked_professor_id', //custom field name
                    'compare' => '=',
                    'value' => $professor // current professorID
                )
            )
        ));
        if ($existQuery->found_posts == 0 and get_post_type($professor) == 'professor') { //professor-type以外のpostIDが取得されることを防ぐ
            // create new like post
            return wp_insert_post(array( //新しいpostを追加するwp関数 成功したらpostIdをreturnする
                'post_type' => 'like',
                'post_status' => 'publish',
                'post_title' => 'second Post Test',
                'meta_input' => array( //customFieldsをここにセット
                    'liked_professor_id' => $professor,
                )

            ));
        } else {
            die("invalid professor id");
        }
    } else {
        die('Only logged in users can create a like.');
    }
}
function deleteLike($data)
{
    $likeId = sanitize_text_field($data['like']);
    if (get_current_user_id() == get_post_field('post_author', $likeId) and get_post_type($likeId) == 'like') {
        wp_delete_post($likeId, true);
        return 'Congrats , like deleted';
    } else {
        die("You do not have permission to delete that.");
    }
}
