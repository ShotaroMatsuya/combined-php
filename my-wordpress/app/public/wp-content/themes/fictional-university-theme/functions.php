<?php
require get_theme_file_path('/inc/search-route.php');


function university_custom_rest()
{   //第一引数はカスタムしたいpost-type、第２引数は追加したいproperty-name
    //第三引数はarray、authorNameのpropにセットしたいvalueをreturnする関数をセット
    register_rest_field('post', 'authorName', array(
        'get_callback' => function () {
            return get_the_author();
        }
    ));
}
//REST APIをカスタマイズする
add_action('rest_api_init', 'university_custom_rest');

function pageBanner($args = NULL)
{
    if (!$args['title']) {
        $args['title'] = get_the_title(); /*titleが引数にセットされていない場合はページタイトルを使用 */
    }
    if (!$args['subtitle']) {
        $args['subtitle'] = get_field('page_banner_subtitle'); /*subtitleが引数にセットされていない場合はカスタムフィールドを使用 */
    }
    if (!$args['photo']) {
        if (get_field('page_banner_background_image') and !is_archive() and !is_home()) { /*カスタムフィールドにセットされている場合*/
            $args['photo'] = get_field('page_banner_background_image')['sizes']['pageBanner']; /*カスタムフィールド名　返り値は連想配列なので　functions.phpでセットしたnameをkeyにセット */
        } else {
            $args['photo'] = get_theme_file_uri('/images/ocean.jpg'); /*どちらもセットされていないとき */
        }
    }
?>
    <div class="page-banner">
        <div class="page-banner__bg-image" style="background-image: url(
            <?php echo $args['photo'];
            ?>);">
        </div>
        <div class="page-banner__content container container--narrow">
            <h1 class="page-banner__title"><?php echo $args['title']; ?></h1>
            <div class="page-banner__intro">
                <p><?php echo $args['subtitle']; ?></p>
            </div>
        </div>
    </div>

<?php
}

function university_files()
{
    wp_enqueue_style('custom-google-fonts', '//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
    wp_enqueue_style('font-awesome', '//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
    wp_enqueue_script('googleMap', '//maps.googleapis.com/maps/api/js?key=your_APIKey', NULL, '1.0', true);


    if (strstr($_SERVER['SERVER_NAME'], 'fictional-university.local')) {
        wp_enqueue_script('main-university-js', 'http://localhost:3000/bundled.js', NULL, '1.0', true);
    } else {
        wp_enqueue_script('our-vendors-js', get_theme_file_uri('/bundled-assets/vendors~scripts.9678b4003190d41dd438.js'), NULL, '1.0', true);
        wp_enqueue_script('main-university-js', get_theme_file_uri('/bundled-assets/scripts.94a757b907734cb51f99.js'), NULL, '1.0', true);
        wp_enqueue_style('our-main-styles', get_theme_file_uri('/bundled-assets/styles.94a757b907734cb51f99.css'));
    }
    wp_localize_script('main-university-js', 'universityData', array( //指定されたjsファイル内にdataを渡すことができるBuilt-in-function
        'root_url' => get_site_url(), //現在のurlを取得


    ));
}

add_action('wp_enqueue_scripts', 'university_files');

//テーマに追加する機能
function university_features()
{
    // register_nav_menu( 'headerMenuLocation','Header Menu Location');
    // register_nav_menu( 'footerLocationOne','Footer Location One');
    // register_nav_menu( 'footerLocationTwo','Footer Location Two');  管理画面のMenuでカスタマイズすることができる

    add_theme_support('title-tag'); /*各ページにタイトルを自動で割り当てる機能 */
    add_theme_support('post-thumbnails'); /*各投稿にfeaturedImageを追加できるようにする */
    add_image_size('professorLandscape', 400, 260, true); /*横長画像を自動でクリエイト 第一引数はニックネーム、第２引数はwidth、第三引数はheight、トリミング位置(trueだとcenter) */
    add_image_size('professorPortrait', 480, 650, true); /*縦長画像を自動でクリエイト */
    add_image_size('pageBanner', 1500, 350, true); /*縦長画像を自動でクリエイト */
}
add_action('after_setup_theme', 'university_features');

function university_adjust_queries($query)

{   //campus post typeのカスタムクエリの設定(表示数や表示順を変えるのみ)
    if (!is_admin() and is_post_type_archive('campus') and is_main_query()) {
        $query->set('posts_per_page', -1);
    }

    // program post typeのカスタムクエリを自動で作成
    if (!is_admin() and is_post_type_archive('program') and is_main_query()) {
        $query->set('orderby', 'title');
        $query->set('order', 'ASC');
        $query->set('posts_per_page', -1);
    }
    if (!is_admin() and is_post_type_archive('event') and $query->is_main_query()) { /*管理画面にいないとき かつ　eventアーカイブにいるとき かつ main-queryにいるとき(意図せずカスタムクエリを操作しないため) */
        $today = date('Ymd'); /*現在日時 */

        $query->set('meta_key', 'event_date');
        $query->set('orderby', 'meta_value_num');
        $query->set('order', 'ASC');
        $query->set('meta_query', array(     /*filterを設定 */
            array( /*todayよりも先のものだけ表示 */
                'key' => 'event_date',
                'compare' => '>=',
                'value' => $today,
                'type' => 'numeric'

            )
        ));
    }
}

add_action('pre_get_posts', 'university_adjust_queries');

function universityMapKey($api)
{
    $api['key'] = 'Your_APIKey';
    return $api;
}

add_filter('acf/fields/google_map/api', 'universityMapKey');


// Redirect subscriber accounts out of admin and onto homepage
add_action('admin_init', 'redirectSubsToFrontend');

function redirectSubsToFrontend()
{
    $ourCurrentUser = wp_get_current_user(); //user情報の取得（オブジェクト型)
    if (count($ourCurrentUser->roles) == 1 and $ourCurrentUser->roles[0] == 'subscriber') {
        wp_redirect(site_url('/'));
        exit; //redirect時には必ずexit
    }
}
add_action('wp_loaded', 'noSubsAdminBar');

function noSubsAdminBar()
{
    $ourCurrentUser = wp_get_current_user();
    if (count($ourCurrentUser->roles) == 1 and $ourCurrentUser->roles[0] == 'subscriber') {
        show_admin_bar(false);
    }
}
//Customize Login Screen
add_filter('login_headerurl', 'ourHeaderUrl');
function ourHeaderUrl()
{
    return esc_url(site_url('/'));
}
add_action('login_enqueue_scripts', 'ourLoginCSS');
function ourLoginCSS()
{
    wp_enqueue_style('custom-google-fonts', '//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');

    wp_enqueue_style('our-main-styles', get_theme_file_uri('/bundled-assets/styles.94a757b907734cb51f99.css'));
}

add_filter('login_headertitle', 'ourLoginTitle');
function ourLoginTitle()
{
    return get_bloginfo('name');
}
