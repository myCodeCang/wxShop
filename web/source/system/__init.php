<?php
/**
 * [WeEngine System] Copyright (c) 2014 WE7.CC
 * WeEngine is NOT a free software, it under the license terms, visited http://www.qynetwork.io/ for more details.
 */

define('IN_GW', true);
if ($controller == 'system' && $action == 'content_provider') {
	$system_activie = 2;
} else {
	$system_activie = 1;
}
