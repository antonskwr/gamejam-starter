extends Node

export(String, FILE, "*.tscn") var START_LEVEL = "res://SCENE/MainScene/MainScene.tscn"
export(PackedScene) var Player = preload("res://SCENE/Entity/Player/Player.tscn")

var _map
var _player

func initialize() -> void:
	_player = Player.instance()
	change_level(START_LEVEL)
	add_child(_player)

func change_level(scene_path: String) -> void:
	if _map:
		_map.queue_free()
	_map = load(scene_path).instance()
	add_child(_map)
	move_child(_map, 0)
	var spawn = _map.get_node("SpawnPoint")
	_player.global_position = spawn.global_position
