extends Node

func _init():
  setup_signals()

func setup_signals():
  add_user_signal(Signals.exit_game)
  add_user_signal(Signals.enemy_hp_ch)
  add_user_signal(Signals.player_dead)
