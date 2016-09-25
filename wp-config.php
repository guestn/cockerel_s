<?php

// Configuration common to all environments
include_once __DIR__ . '/wp-config.common.php';

/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'cockerel_s');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '@hN,R{N_wJA(2vG1j<sqd.I|-IS29-^eb*W#VJ{:s47j)Rq|#^c4c7*t<vyrdc#?');
define('SECURE_AUTH_KEY',  'QF_3D=X sUgr3V;vBSZ(l]4i1}F@.!^]0=J@x`JtsJ!fv)mT-e>_W:W|i^+P[T{e');
define('LOGGED_IN_KEY',    '7ou?oP9<UEh{DS,(#Y(r2WLc%kK`CzVe[gM:W6Ztp&=^YxML7Q|Zggnjpoa-((sH');
define('NONCE_KEY',        'e|7vc|i3T`?Q)CIyn/qn{E|Geio@To)w;V|_<di<8=:k38fv+osgl94gnUfrMg@m');
define('AUTH_SALT',        '6W+L_qdp,M,6ji$XwKJ$nv+Wd+m9~j^o0v-!BD57* eftJus|8]x:.FH9:F~.YaI');
define('SECURE_AUTH_SALT', '1<+i[VEC}|x`g^00Hf57qr67>dpx;v^D=+|`.$ps>Z*)F&nE*oIsYS#PagKCAc{E');
define('LOGGED_IN_SALT',   'O!QPiT=r|c{6.T,J1 F]5n%8YW_-~FwDACp+[WpF2&&SAz4SXIGXJ($Rb-]-GM^b');
define('NONCE_SALT',       '588^tzou&$q!E-A15mjE*q0&Jp)/*kK7ez07D)h-nR7)nM&PZL>yfaa KIlLYe?f');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

define('VP_ENVIRONMENT', 'development');
/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

/* set up upload directory */
