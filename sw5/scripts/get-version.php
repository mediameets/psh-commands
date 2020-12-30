<?php

if (file_exists("plugin.xml")) {
    $string = file_get_contents("plugin.xml");
    $xml = simplexml_load_string($string);
    if ($xml instanceof SimpleXMLElement) {
        print $xml->version;
    } else {
        throw new Exception('Could not read plugin.xml');
    }
} else {
    throw new Exception('Version detection for legacy plugin not implemented yet!');
}
