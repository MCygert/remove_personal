#!/bin/bash

dir=$PWD
root_directory="remove_personal"
dir="${dir##*/}"

if [ $dir != $root_directory ] 
    then
    echo 'You are not in root directory'
else
    if [ ! -d data ]; then
        mkdir data
    fi
    cd data
    kaggle competitions download -c pii-detection-removal-from-educational-data
    unzip pii-detection-removal-from-educational-data.zip 
    rm pii-detection-removal-from-educational-data.zip 
fi
