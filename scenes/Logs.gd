extends Node

func _process(_delta):
	if global.game_log[0] != null:
		$line0.text = global.game_log[0]
	if global.game_log[1] != null:
		$line1.text = global.game_log[1]
	if global.game_log[2] != null:
		$line2.text = global.game_log[2]
