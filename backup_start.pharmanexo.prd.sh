#!/bin/bash

docker run -d -it -v ~/Developer/Pharmanexo/PRD:/var/www --name pharmanexo-prd -p 80:80 chulesantos/php7.2