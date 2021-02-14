#!/bin/bash
composer install 
ls bin -all 
ls -all
vendor/phing/phing/bin/phing build-dev

php-fpm
