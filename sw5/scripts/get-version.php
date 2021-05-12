<?php

if (file_exists("plugin.xml")) {
    $string = file_get_contents("plugin.xml");
    $xml = simplexml_load_string($string);
    if ($xml instanceof SimpleXMLElement) {
        print $xml->version;
    } else {
        throw new Exception('Could not read plugin.xml');
    }
} else if (file_exists("plugin.json")) {
    $string = file_get_contents("plugin.json");
    $data = json_decode($string, true);
    if (is_array($data)) {
        print $data['currentVersion'];
    } else {
        throw new Exception('Could not read plugin.json');
    }
} else {
    throw new Exception('Version detection for other methods than plugin.xml and plugin.json not implemented!');
}
