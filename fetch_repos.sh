#!/bin/bash

repos=(
    "api=https://github.com/nagy135/matinka-calendar-api"
    "react=https://github.com/nagy135/matinka-calendar-react"
)
for r in "${repos[@]}"
do
    name=$(echo $r | cut -d'=' -f1)
    url=$(echo $r | cut -d'=' -f2)
    git clone $url $name
done
