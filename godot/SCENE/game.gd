extends Node

onready var _pause_menu: = $PauseMenu/Pause

func _ready() -> void:
  _pause_menu.connect("exit_game", self, "_on_exit_game")

func _on_exit_game() -> void:
  SceneManager.goto_scene("res://SCENE/StartMenu/StartMenu.tscn")
