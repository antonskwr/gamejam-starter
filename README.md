# Repo setup

## Editor indentation setup (before you start)

GDScript indentation for this repo is 2 spaces

* Create empty Godot project and open it
* Go to Editor->Editor Settings...
* Under "Text Editor/Indent" set type to "Spaces" and size to "2"

## Cloning

```
git clone <link_to_repo> <target_dir>
cd <target_dir>
```

## Required tech

* Godot 3.5
* Aseprite 1.2.40
* Go (at least 1.14)
* Git
* Bash

## Aseprite exporter setup

```
git submodule update --init --remote
cd aseprite-exporter
go build .
```

To use Aseprite exporter run:

```
./export_aseprite.sh
```
