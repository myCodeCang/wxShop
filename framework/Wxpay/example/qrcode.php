<?php
error_reporting(E_ERROR);
require_once IA_ROOT . '/framework/Wxpay/example/phpqrcode/phpqrcode.php';
$url = urldecode($_GET["data"]);
QRcode::png($url);
