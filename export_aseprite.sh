#!/bin/bash

aseprite_run_cmd=""

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    aseprite_run_cmd="aseprite"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    aseprite_run_cmd="/Applications/Aseprite.app/Contents/MacOS/aseprite"
else
    echo ERROR: os not supported
    exit 1
fi

projects_dir="aseprite/"
export_dir="godot/assets/aseprite/"
db_path="export_time.db"

if [ -e ./aseprite-exporter/aseprite-exporter ]
then
  ./aseprite-exporter/aseprite-exporter export -execpath $aseprite_run_cmd -source $projects_dir -target $export_dir -db $db_path -mute
else
  echo './aseprite-exporter/aseprite-exporter no such file, use "go build" to build aseprite-exporter'
  exit 1
fi
