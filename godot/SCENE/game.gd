extends Node

onready var _pause_menu: = $PauseMenu/Pause
onready var _level = $GameWorld/Level

func _ready() -> void:
  SignalManager.connect(Signals.exit_game, self, "_on_exit_game")
  _level.initialize()

func change_level(scene_path: String) -> void:
  get_tree().paused = true
  #start fade out of the game here
  #yield(transition_node, "transition_finished_signal")
  _level.change_level(scene_path)
  #connect to portals on level if such system is in use
  get_tree().paused = false
  #start fade in to the game here

func _on_exit_game() -> void:
  SceneManager.goto_scene("res://SCENE/StartMenu/StartMenu.tscn")

# func _on_Portal_player_entered(target_map_path: String) -> void:
#   change_level(target_map_path)
