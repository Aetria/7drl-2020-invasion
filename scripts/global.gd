extends Node

const timeStep = 5
var minutes = 0
var hours = 0
var played = true

var game_log = ["", "", ""]

var player

func tick():
	minutes += timeStep
	if minutes % 60 == 0:
		hours += 1
		minutes = 0
	if hours % 24 == 0:
		hours = 0
	
	add_log("%02d:%02d" % [hours, minutes])
	played = true

func add_log(text):
	game_log.pop_front()
	game_log.push_back(text)

func _process(_delta):
	if played:
		played = false
