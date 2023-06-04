<?php
// customPostTypeの設定はここで
function university_post_types()
{
    //CampusPostType
    register_post_type('campus', array(
        'capability_type' => 'campus',
        'map_meta_cap' => true,
        'show_in_rest' => true, /* 管理画面をmodern editorに */
        'supports' => array('title', 'editor', 'excerpt'), /*管理画面のUIに関する設定  */
        'rewrite' => array('slug' => 'campuses'), /*url-slugを指定 */
        'has_archive' => true, /* archivePageを作成(archive-event.phpを使用)*/
        'public' => true,
        'labels' => array(    /*管理画面での表示 */
            'name' => 'Campuses',
            'add_new_item' => 'Add New Campus',
            'edit_item' => 'Edit Campus',
            'all_items' => 'All Campuses',
            'singular_name' => 'Campus'
        ),
        'menu_icon' => 'dashicons-location-alt' /*公式のdash-iconから取得可能 */
    ));
    //EventPostType
    register_post_type('event', array(
        'capability_type' => 'event', //defaultだとpost(permissionがpostと同様に継承される)
        'map_meta_cap' => true, //event post type のpermissionを自動でflexibleに設定してくれる
        'show_in_rest' => true, /* 管理画面をmodern editorに */
        'supports' => array('title', 'editor', 'excerpt'), /*管理画面のUIに関する設定  */
        'rewrite' => array('slug' => 'events'), /*url-slugを指定 */
        'has_archive' => true, /* archivePageを作成(archive-event.phpを使用)*/
        'public' => true,
        'labels' => array(    /*管理画面での表示 */
            'name' => 'Events',
            'add_new_item' => 'Add New Event',
            'edit_item' => 'Edit Event',
            'all_items' => 'All Events',
            'singular_name' => 'Event'
        ),
        'menu_icon' => 'dashicons-calendar' /*公式のdash-iconから取得可能 */
    ));

    //programPostType
    register_post_type('program', array(
        'show_in_rest' => true, /* 管理画面をmodern editorに */
        'supports' => array('title'), /*管理画面のUIに関する設定  */
        'rewrite' => array('slug' => 'programs'), /*url-slugを指定 */
        'has_archive' => true, /* archivePageを作成(archive-event.phpを使用)*/
        'public' => true,
        'labels' => array(    /*管理画面での表示 */
            'name' => 'Programs',
            'add_new_item' => 'Add New Program',
            'edit_item' => 'Edit Program',
            'all_items' => 'All Programs',
            'singular_name' => 'Program'
        ),
        'menu_icon' => 'dashicons-awards' /*公式のdash-iconから取得可能 */
    ));
    //ProfessorPostType
    register_post_type('professor', array(
        'show_in_rest' => true, /* カスタムポストタイプのREST APIを使えるようにする */
        'supports' => array('title', 'editor', 'thumbnail'), /*管理画面のUIに関する設定  */
        'public' => true,
        'labels' => array(    /*管理画面での表示 */
            'name' => 'Professors',
            'add_new_item' => 'Add New Professor',
            'edit_item' => 'Edit Professor',
            'all_items' => 'All Professors',
            'singular_name' => 'Professor'
        ),
        'menu_icon' => 'dashicons-welcome-learn-more' /*公式のdash-iconから取得可能 */
    ));
    // Note Post Type
    register_post_type('note', array(
        'capability_type' => 'note',
        'map_meta_cap' => true, //この二行でroleを生成できる
        'show_in_rest' => true, /* カスタムポストタイプのREST APIを使えるようにする */
        'supports' => array('title', 'editor'), /*管理画面のUIに関する設定  */
        'public' => false, /*noteはログインユーザ以外にさらされたくないのでfalseにする */
        'show_ui' => true, /*publicをfalseにするとadmin画面からも非表示になってしまうのでここを
        trueにする必要がある */
        'labels' => array(    /*管理画面での表示 */
            'name' => 'Notes',
            'add_new_item' => 'Add New Note',
            'edit_item' => 'Edit Note',
            'all_items' => 'All Notes',
            'singular_name' => 'Note'
        ),
        'menu_icon' => 'dashicons-welcome-write-blog' /*公式のdash-iconから取得可能 */
    ));
    // Like Post Type
    register_post_type('like', array(
        'supports' => array('title'), /*管理画面のUIに関する設定  */
        'public' => false, /*noteはログインユーザ以外にさらされたくないのでfalseにする */
        'show_ui' => true, /*publicをfalseにするとadmin画面からも非表示になってしまうのでここを
        trueにする必要がある */
        'labels' => array(    /*管理画面での表示 */
            'name' => 'Likes',
            'add_new_item' => 'Add New Like',
            'edit_item' => 'Edit Like',
            'all_items' => 'All Likes',
            'singular_name' => 'Like'
        ),
        'menu_icon' => 'dashicons-heart' /*公式のdash-iconから取得可能 */
    ));
}

add_action('init', 'university_post_types');
