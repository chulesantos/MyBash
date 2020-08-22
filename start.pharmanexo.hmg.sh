#!/bin/bash

docker run -d -it -v ~/Developer/Pharmanexo/HMG:/var/www --name pharmanexo-hmg -p 12345:80 chulesantos/apache_php:1

docker start pharmanexo-hmg

docker exec -it pharmanexo-hmg bash service apache2 start