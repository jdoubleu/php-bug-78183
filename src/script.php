<?php
var_dump(phpversion());

var_dump(finfo_file(finfo_open(FILEINFO_MIME_TYPE), 'earth.tga'));
