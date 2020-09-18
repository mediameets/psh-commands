<?php

$path = 'Resources/app/storefront';
print file_exists("manifest.xml") ? $path : 'src/' . $path;
