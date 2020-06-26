<?php

$string = file_get_contents("composer.json");
$composer = json_decode($string, true);
if (is_array($composer)) {
    print $composer['version'];
} else {
    throw new Exception('Could not read composer.json');
}
