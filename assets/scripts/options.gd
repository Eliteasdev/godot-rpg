extends Control

func _ready():
	set_process_input(true)

func _input(event):
	if(get_parent().name != "Menu"):
		if(Input.is_action_just_pressed("ui_text_clear_carets_and_selection")):
			visible = !visible
			%Gui.visible = !%Gui.visible
	

func _on_button_pressed():
	visible = !visible
