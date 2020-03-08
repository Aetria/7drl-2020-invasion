extends Node2D

class_name TurnQueue

var current_entity

func initialize():
	current_entity = get_child(0)
	print(current_entity)

func add_to_list(child):
	add_child(child)

func play_turn():
	yield(current_entity.play_turn(), "completed")
	var next_idx = current_entity.get_index() + 1 % get_child_count()
	current_entity = get_child(next_idx)
