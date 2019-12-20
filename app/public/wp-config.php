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
define('AUTH_KEY',         'PE59TTQt8VYjw9Bl0Ulcy30+wSjHz8U2xDTIQWl4gYjsbyyf4isi/GwGlfrW+tjmJqPbFwZcdnCUXRPd4tEfKw==');
define('SECURE_AUTH_KEY',  'CzwntmThYKMaIkkAusWvoYbDY3QqNPOzc6y7e1mal102qbCQ+54Ikuu/AO9MArmrLW3dCnKpA9Q/LHVdjoeiHA==');
define('LOGGED_IN_KEY',    'Pr807ogYvE+pAAvlr/Cau3ecX7IdHSWaRVJTJjfrZfgWU7QnAT/Ab9qDMS7JWR3ghFDD8LmepkyLE6ivBneClQ==');
define('NONCE_KEY',        '7wOIZx5jBikC1BjbfaFBCy3Em7LKWgsYJekkjnp8UwRi2WrzpxOgSAv8SAdCOuiC09Lelo1s7w1FTR+Gw++4Ng==');
define('AUTH_SALT',        'XLg5sqWSmKPjgpMKITjR4Yz/lVUCiw0CXWm8jOSfIG31vzPyo6zr+1uehHzi3SLJP7ANwJQP3RD2iNTSeJym+g==');
define('SECURE_AUTH_SALT', 'NfidvRt+3do0vPzqm9bqdftk8aG1VnUUZGJ8ArUu5syjlyoLOyBxWaBEzSdaTuJfdadLYoDgbdQTvswNMVFLKQ==');
define('LOGGED_IN_SALT',   'zN2+D1C2/p6jp14kD5DVZj8yKOXZNkETc/zlxmEuMNZD/FLj3Dq7YEN/mdz9pHQq0BJHLRat3YgbolwUuCwo/w==');
define('NONCE_SALT',       '9iBw9TdR+50ruTvfWoajoAkRxMzSwdCj5VPbplp+Ozcxp+606U8TGeQGnfm85uwGJhKFsyUewUr3RZExJPsj5Q==');

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
