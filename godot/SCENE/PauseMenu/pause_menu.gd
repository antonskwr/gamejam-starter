extends Control

onready var _resume_button: = $CenterContainer/VBoxContainer/ButtonsContainer/ResumeButton
onready var _exit_button: = $CenterContainer/VBoxContainer/ButtonsContainer/ExitButton
# onready var _viewport: = get_viewport()

func _ready() -> void:
  # set_as_toplevel(true)
  _resume_button.connect("pressed", self, "_on_Resume_pressed")
  _exit_button.connect("pressed", self, "_on_Exit_pressed")
  # _viewport.connect("size_changed", self, "_on_viewport_size_changed")

func _input(event: InputEvent) -> void:
  if event.is_action_pressed("pause"):
    var new_pause_state = not get_tree().paused
    get_tree().paused = new_pause_state
    visible = new_pause_state

    if visible:
      _resume_button.grab_focus()

func _on_Resume_pressed() -> void:
  get_tree().paused = false
  visible = false

func _on_Exit_pressed() -> void:
  get_tree().paused = false
  SignalManager.emit_signal(Signals.exit_game)

# func _on_viewport_size_changed() -> void:
#   self.set_margins_preset(PRESET_WIDE)
