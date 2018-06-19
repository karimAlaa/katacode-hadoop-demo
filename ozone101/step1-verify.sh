#!/usr/bin/env bash
(( $(docker-compose ps -q 2>/dev/null | wc -l) >= 4 )) && echo \"done\"
