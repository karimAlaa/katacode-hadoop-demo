#!/usr/bin/env bash
(( $(docker-compose  logs scm | grep Registered 2>/dev/null | wc -l) >= 1 )) && echo \"done\"
