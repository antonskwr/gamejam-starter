extends Control

onready var _start_button: = $CenterContainer/VBoxContainer/ButtonsContainer/StartButton
onready var _exit_button: = $CenterContainer/VBoxContainer/ButtonsContainer/ExitButton
# onready var _viewport: = get_viewport()

func _ready() -> void:
  # set_as_toplevel(true) #??????????????????????????????????
  _start_button.connect("pressed", self, "_on_Start_pressed")
  _exit_button.connect("pressed", self, "_on_Exit_pressed")
  # _viewport.connect("size_changed", self, "_on_viewport_size_changed")
  _start_button.grab_focus()

func _on_Start_pressed() -> void:
  SceneManager.goto_scene("res://SCENE/Game.tscn")

func _on_Exit_pressed() -> void:
  get_tree().quit()

#??????????????????????????????????
# func _on_viewport_size_changed() -> void:
#   self.set_margins_preset(PRESET_WIDE)
