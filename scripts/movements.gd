extends KinematicBody2D

const tileSize = 16
const top    = 32
const left   = 144
const right  = 752
const bottom = 496

func get_input():
	var newPosition = position
	
	if Input.is_action_just_pressed('ui_right'):
		newPosition += Vector2( tileSize,         0)
	elif Input.is_action_just_pressed('ui_left'):
		newPosition += Vector2(-tileSize,         0)
	elif Input.is_action_just_pressed('ui_down'):
		newPosition += Vector2(        0,  tileSize)
	elif Input.is_action_just_pressed('ui_up'):
		newPosition += Vector2(        0, -tileSize)
	elif Input.is_action_just_pressed('ui_left_up'):
		newPosition += Vector2(-tileSize, -tileSize)
	elif Input.is_action_just_pressed("ui_left_down"):
		newPosition += Vector2(-tileSize,  tileSize)
	elif Input.is_action_just_pressed("ui_right_down"):
		newPosition += Vector2( tileSize,  tileSize)
	elif Input.is_action_just_pressed("ui_right_up"):
		newPosition += Vector2( tileSize, -tileSize)
	
	if newPosition != position:
		return is_action(newPosition)
	return false

func is_action(newPosition):
	if newPosition.x >= left and newPosition.x <= right and newPosition.y >= top and newPosition.y <= bottom:
		position = newPosition
		global.tick()
		return true
	return false

func _physics_process(_delta):
	get_input()
