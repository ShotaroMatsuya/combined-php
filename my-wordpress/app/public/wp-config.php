<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'GW1XkOE6TstI1ccrFLVo9Q1U28XsonDImtLE6y4kj0ZsDiz8dXXlbmLVA/EX51DsY4OeLRvUYrwzEzNFlehdbw==');
define('SECURE_AUTH_KEY',  'NXMxh2y668p94O6rmn80Ut8DSi+JrGGIB7t9uwpFasTHAI3mO6hCscgYE/GVdmoWCjQtGWocDLCJDQuZRkM8YA==');
define('LOGGED_IN_KEY',    '9W9xyahw6JS9DhSDDudtbpJx28Oc4mRCmKeMD23n0KFu0w4t/R7ksbV2/yyHFGwzgbqZCvnxX3v3/n3Y5EReog==');
define('NONCE_KEY',        'Y+xvlix/f5u6a92YjHTPXzETRcmSKe3zbCtzd9NP1C8bKuPIvNu1KZMyD6bQkEdifvp8ZzGOieUU+Do5XVugcg==');
define('AUTH_SALT',        'fGhh7dywGb5cMV8S4Nc/hQrs8AizQMWdvoxH+8BAPsAOJM68nlEVdijcb7rnMJDqkyvUzq+pdhMrV4Yb46Mgtg==');
define('SECURE_AUTH_SALT', 'l8OWGPBCKvl98D7Bakhm4VgzQSC30+rZFLLRZfMfVa8zGurQeNAt05yVD5ONVoTD7sVgB/svLyFEjGIqoSJIhQ==');
define('LOGGED_IN_SALT',   'XwgFZBHLavtDlRvNMyosuxwLGJ+G5LvAiQontUFRz6Zy2jp3/p+cFhqj7sJcm3lE/BUE5qWwBcq4RVb/fawakA==');
define('NONCE_SALT',       'io1EeCH6sFnvucY0dynVC0uuCTRXMJySAyTGCb0j7fD8VnTlwr5b0fUpjyUeMq5eEOa7mtc5iOP8JeSha/P1fw==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
