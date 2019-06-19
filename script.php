<?php
var_dump(phpversion());

// set User-agent to Chrome Browser 77
ini_set('user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36');


$src = fopen('http://people.math.sc.edu/Burkardt/data/tga/earth.tga', 'r');
$dest = fopen('image.tga', 'w');
stream_copy_to_stream($src, $dest);

var_dump(finfo_file(finfo_open(FILEINFO_MIME_TYPE), 'image.tga'));
