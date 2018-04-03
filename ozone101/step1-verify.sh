#!/usr/bin/env bash
(( $(docker-compose ps | grep tutorial 2>/dev/null | wc -l) >= 4 )) && echo \"done\"
