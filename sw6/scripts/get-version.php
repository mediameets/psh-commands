<?php

if (file_exists("manifest.xml")) {
    $string = file_get_contents("manifest.xml");
    $xml = simplexml_load_string($string);
    if ($xml instanceof SimpleXMLElement) {
        print $xml->meta->version;
    } else {
        throw new Exception('Could not read manifest.xml');
    }
} else {
    $string = file_get_contents("composer.json");
    $composer = json_decode($string, true);
    if (is_array($composer)) {
        print $composer['version'];
    } else {
        throw new Exception('Could not read composer.json');
    }
}
