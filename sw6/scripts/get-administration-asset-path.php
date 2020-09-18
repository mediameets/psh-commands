<?php

$path = 'Resources/app/administration';
print file_exists("manifest.xml") ? $path : 'src/' . $path;
