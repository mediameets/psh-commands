<?php

if (file_exists("composer.json")) {
    $string = file_get_contents("composer.json");
    $data = json_decode($string, true);
    if (is_array($data)) {
        switch ($data['type']) {
            case 'shopware-frontend-plugin':
                print 'Frontend';
                break;
            case 'shopware-backend-plugin':
                print 'Backend';
                break;
            case 'shopware-core-plugin':
                print 'Core';
                break;
            default:
                throw new Exception($data['type'] . ' type detection not implemented yet!');
        }
    } else {
        throw new Exception('Could not read composer.json!');
    }
} else {
    throw new Exception('Type detection is only possible with composer.json!');
}
