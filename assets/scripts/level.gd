extends Node2D

@onready var actionable_finder :Area2D = $Player/Direction/ActionableFinder

func _ready():
	pass # Replace with function body.

func _process(delta):
	pass
	
func _unhandled_input(event):
	if Input.is_action_just_pressed("ui_accept"):
		var actionables = actionable_finder.get_overlapping_areas()
		if actionables.size() > 0:
			actionables[0].action()
		return
