#!/bin/bash

docker run -d -it -v ~/Developer/Pharmanexo/PRD:/var/www/html --name pharmanexo-hmg -p 80:80 chulesantos/php7.2

docker start pharmanexo-prd

docker exec -it pharmanexo-prd bash service apache2 start