extends KinematicBody2D

const tileSize = 16
const logLines = 4
var gameHeight = ProjectSettings.get_setting("display/window/size/height")
var gameWidth = ProjectSettings.get_setting("display/window/size/width")

func get_input():
	if Input.is_action_just_pressed('ui_right'):
		position.x += tileSize
		if position.x >= gameWidth - tileSize: position.x = gameWidth - tileSize
	if Input.is_action_just_pressed('ui_left'):
		position.x -= tileSize
		if position.x <= 0: position.x = 0
	if Input.is_action_just_pressed('ui_down'):
		position.y += tileSize
		if position.y >= gameHeight - (tileSize + logLines * tileSize): position.y = gameHeight - (tileSize + logLines * tileSize)
	if Input.is_action_just_pressed('ui_up'):
		position.y -= tileSize
		if position.y <= 0: position.y = 0
	if Input.is_action_just_pressed('ui_left_up'):
		position += Vector2(-tileSize, -tileSize)
		if position.x <= 0: position.x = 0
		if position.y <= 0: position.y = 0
	if Input.is_action_just_pressed("ui_left_down"):
		position += Vector2(-tileSize, tileSize)
		if position.x <= 0: position.x = 0
		if position.y >= gameHeight - (tileSize + logLines * tileSize): position.y = gameHeight - (tileSize + logLines * tileSize)
	if Input.is_action_just_pressed("ui_right_down"):
		position += Vector2(tileSize, tileSize)
		if position.x >= gameWidth - tileSize: position.x = gameWidth - tileSize
		if position.y >= gameHeight - (tileSize + logLines * tileSize): position.y = gameHeight - (tileSize + logLines * tileSize)
	if Input.is_action_just_pressed("ui_right_up"):
		position += Vector2(tileSize, -tileSize)
		if position.x >= gameWidth - tileSize: position.x = gameWidth - tileSize
		if position.y <= 0: position.y = 0

func _physics_process(_delta):
	get_input()
