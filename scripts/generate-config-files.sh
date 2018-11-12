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

var2="`less ./source-registration.properties`"

for NAME in $_env
do
    env="$NAME"
    echo "${var2//SOURCE/$env}" > ./configs/$env-source-registration.cfg
done
