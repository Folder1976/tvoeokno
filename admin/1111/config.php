<?php
    //echo __DIR__;
    define('TMP_DIR', '');
//echo __DIR__;
    // HTTP
    define('HTTP_SERVER', 'http://tvoeokno.ua/'.TMP_DIR.'admin/');
    define('HTTP_CATALOG', 'http://tvoeokno.ua/'.TMP_DIR.'');

    // HTTPS
    define('HTTPS_SERVER', 'http://tvoeokno.ua/'.TMP_DIR.'admin/');
    define('HTTPS_CATALOG', 'http://tvoeokno.ua/'.TMP_DIR.'');

     define('MAIN_DIR', '/home/tvoeok/tvoeokno.ua/www/');

    // DIR
    define('DIR_APPLICATION', MAIN_DIR.TMP_DIR.'admin/');
    define('DIR_SYSTEM', MAIN_DIR.TMP_DIR.'system/');
    define('DIR_LANGUAGE', MAIN_DIR.TMP_DIR.'admin/language/');
    define('DIR_TEMPLATE', MAIN_DIR.TMP_DIR.'admin/view/template/');
    define('DIR_CONFIG', MAIN_DIR.TMP_DIR.'system/config/');
    define('DIR_IMAGE', MAIN_DIR.TMP_DIR.'image/');
    define('DIR_CACHE', MAIN_DIR.TMP_DIR.'system/storage/cache/');
    define('DIR_DOWNLOAD', MAIN_DIR.TMP_DIR.'system/storage/download/');
    define('DIR_LOGS', MAIN_DIR.TMP_DIR.'system/storage/logs/');
    define('DIR_MODIFICATION', MAIN_DIR.TMP_DIR.'system/storage/modification/');
    define('DIR_UPLOAD', MAIN_DIR.TMP_DIR.'system/storage/upload/');
    define('DIR_CATALOG', MAIN_DIR.TMP_DIR.'catalog/');

    // DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'tvoeok.mysql.tools');
define('DB_USERNAME', 'tvoeok_folder');
define('DB_PASSWORD', 'rzpptnl6');
define('DB_DATABASE', 'tvoeok_folder');
define('DB_PORT', '3306');
define('DB_PREFIX', 'oc_');



    // Import
    define('EXCEL_IMPORT_EXPORT_CATEGORY_ID_REMOVED', '0');
    define('EXCEL_IMPORT_EXPORT_CATEGORY_ID_ROOT', '0');

?>