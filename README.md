# Repo setup

```
git clone <link_to_repo> <target_dir>
cd <target_dir>
```

## Required tech

* Godot
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
