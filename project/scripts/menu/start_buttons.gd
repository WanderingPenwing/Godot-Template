extends VBoxContainer

# Ui element, handles the start menu

var options : Resource = load("res://scenes/options.tscn") # To go to the sound settings
var game : Resource = load("res://scenes/level_zero.tscn") # To start the game



func _ready() -> void :
	$Start.become_selected(true)



func _on_start_activate(_name : String) -> void :
	SceneTransition.change_to_scene(game)



func _on_options_activate(_name : String) -> void :
	Transition.change_to_scene(options)



func _on_credits_activate(_name : String) -> void :
	pass # Replace with function body.



func _on_quit_activate(_name : String) -> void :
	get_tree().quit()
