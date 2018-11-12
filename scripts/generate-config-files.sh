#!/bin/bash
_env='dev
e2e
prd'

var="`less ./environment.properties`"

for NAME in $_env
do
    env="$NAME"
    echo "${var//SOURCE/$env}" > ./configs/$env-environment.cfg
done
