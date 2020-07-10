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
db_path="asset-exporter/export_time.db"
go run asset-exporter/exporter.go $aseprite_run_cmd $projects_dir $export_dir $db_path
