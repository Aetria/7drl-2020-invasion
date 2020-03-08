extends Node2D

const PlayerClass = preload("res://scenes/Player.tscn")
const EntityClass = preload("res://scenes/Entity.tscn")

var entity:StaticBody2D = EntityClass.instance()
var tq = TurnQueue.new()

func _ready():
	global.player = PlayerClass.instance()
	global.player.position = Vector2(448, 496)
	entity.position = Vector2(448, 32)
	tq.add_to_list(global.player)
	#tq.add_to_list(entity)
	tq.initialize()

func _process(_delta):
	tq.play_turn()
	print("turn")
	pass
