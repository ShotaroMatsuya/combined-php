<?php
add_action('rest_api_init', 'universityRegisterSearch');
function universityRegisterSearch()
{
    //第一引数はnamespace、第２引数はroute名(postsやprofessors)、第三引数はrestにrequestが来たあとに何をするかを記述
    register_rest_route('university/v1', 'search', array(
        'method' => WP_REST_SERVER::READABLE, //get,post,put,deleteなどが来る
        'callback' => 'universitySearchResults', //returnする連想配列がwpによってJSONとして変換される
    ));
}
function universitySearchResults($data)
{
    $mainQuery = new WP_Query(array( //検索wordに応じたカスタムクエリを作成
        'post_type' => array('post', 'page', 'professor', 'program', 'campus', 'event'),
        's' => sanitize_text_field($data['term']), // sに指定された値だけがjsonから抽出される  urlクエリ内のproperty名を指定 
    ));
    $results = array(
        'generalInfo' => array(),
        'professors' => array(),
        'programs' => array(),
        'events' => array(),
        'campuses' => array()
    );
    while ($mainQuery->have_posts()) {
        $mainQuery->the_post();
        if (get_post_type() == 'post' or get_post_type() == 'page') {
            array_push($results['generalInfo'], array(
                'title' => get_the_title(),
                'permalink' => get_the_permalink(),
                'postType' => get_post_type(),
                'authorName' => get_the_author()
            ));
        }
        if (get_post_type() == 'professor') {
            array_push($results['professors'], array(
                'title' => get_the_title(),
                'permalink' => get_the_permalink(),
                'image' => get_the_post_thumbnail_url(0, 'professorLandscape'), //第一引数はpostId"0"にすると現在ページのidになる、第2引数はsizingの指定
            ));
        }
        if (get_post_type() == 'program') {

            $relatedCampuses = get_field('related_campus');
            if ($relatedCampuses) {
                foreach ($relatedCampuses as $campus) {
                    array_push($results['campuses'], array(
                        'title' => get_the_title($campus), //postオブジェクトを引数に入れる
                        'permalink' => get_the_permalink($campus)
                    ));
                }
            }

            array_push($results['programs'], array(
                'title' => get_the_title(),
                'permalink' => get_the_permalink(),
                'id' => get_the_ID() //related_programsで使うid
            ));
        }
        if (get_post_type() == 'campus') {
            array_push($results['campuses'], array(
                'title' => get_the_title(),
                'permalink' => get_the_permalink()
            ));
        }
        if (get_post_type() == 'event') {
            $eventDate = new DateTime(get_field('event_date'));
            $description = null;
            if (has_excerpt()) {
                $description = get_the_excerpt();
            } else {
                $description =  wp_trim_words(get_the_content(), 18);
            };

            array_push($results['events'], array(
                'title' => get_the_title(),
                'permalink' => get_the_permalink(),
                'month' => $eventDate->format('M'),
                'day' => $eventDate->format('d'),
                'description' => $description
            ));
        }
    }

    if ($results['programs']) {
        $programsMetaQuery = array('relation' => 'OR'); //meta_queryの条件はdefaultだとandになっている
        foreach ($results['programs'] as $item) {
            array_push($programsMetaQuery, array(
                'key' => 'related_programs', //custom-field名
                'compare' => 'LIKE',
                'value' => '"' . $item['id'] . '"', //jsonファイル内でjsonファイルのdataを参照
            ));
        }

        $programRelationshipQuery = new WP_Query(array(
            'post_type' => array('professor', 'event'), //カスタムクエリのpost-type
            // 'meta_query' => array(
            //     'relation' => 'OR',
            //     array(  //filtering
            //         'key' => 'related_programs', //custom-field名
            //         'compare' => 'LIKE',
            //         'value' => '"' . $results['programs'][0]['id'] . '"', //jsonファイル内でjsonファイルのdataを参照
            //     ),
            //     array(  //filtering
            //         'key' => 'related_programs', //custom-field名
            //         'compare' => 'LIKE',
            //         'value' => '"' . $results['programs'][1]['id'] . '"', //該当するprogramsが複数あるとき
            //     )
            // )
            'meta_query' => $programsMetaQuery,
        ));
        while ($programRelationshipQuery->have_posts()) {
            $programRelationshipQuery->the_post();

            if (get_post_type() == 'event') {
                $eventDate = new DateTime(get_field('event_date'));
                $description = null;
                if (has_excerpt()) {
                    $description = get_the_excerpt();
                } else {
                    $description =  wp_trim_words(get_the_content(), 18);
                };

                array_push($results['events'], array(
                    'title' => get_the_title(),
                    'permalink' => get_the_permalink(),
                    'month' => $eventDate->format('M'),
                    'day' => $eventDate->format('d'),
                    'description' => $description
                ));
            }


            if (get_post_type() == 'professor') {
                array_push($results['professors'], array(
                    'title' => get_the_title(),
                    'permalink' => get_the_permalink(),
                    'image' => get_the_post_thumbnail_url(0, 'professorLandscape'),
                ));
            }
        }
        $results['professors'] = array_values(array_unique($results['professors'], SORT_REGULAR));
        $results['events'] = array_values(array_unique($results['events'], SORT_REGULAR));
        //array_unique関数は重複する要素を削除して一つにしてくれる
        //array_values()を使用してキーを振り直す
    }
    return $results;
}
