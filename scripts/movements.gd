extends KinematicBody2D

const tileSize = 64

func get_input():
	if Input.is_action_just_pressed('ui_right'):
		position.x += tileSize
	if Input.is_action_just_pressed('ui_left'):
		position.x -= tileSize
	if Input.is_action_just_pressed('ui_down'):
		position.y += tileSize
	if Input.is_action_just_pressed('ui_up'):
		position.y -= tileSize

func _physics_process(_delta):
	get_input()
