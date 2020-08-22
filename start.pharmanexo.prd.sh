#!/bin/bash

docker run -d -it -v ~/Developer/Pharmanexo/PRD:/var/www --name pharmanexo-prd -p 80:80 chulesantos/apache_php:1

docker start pharmanexo-prd

docker exec -it pharmanexo-prd bash service apache2 start