extends Node2D

const PlayerClass = preload("res://scenes/Player.tscn")
const EntityClass = preload("res://scenes/Entity.tscn")

var entity = EntityClass.instance()

func _ready():
	global.player = PlayerClass.instance()
	global.player.position = Vector2(448, 496)
	entity.position = Vector2(448, 32)
	add_child(global.player)
	add_child(entity)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
