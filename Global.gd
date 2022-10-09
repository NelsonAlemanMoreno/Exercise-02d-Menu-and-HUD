extends Node

var score = 0
var time = 30
var lives = 0

func _ready():
	randomize()

func _unhandled_input(event):
	if event.is_action_pressed("menu"):
		get_tree().quit()


func update_score(s):
	score += s
	var HUD = get_node_or_null("/root/Game/UI/HUD")
	if HUD != null:
		HUD.update_score()

func update_lives(l):
	lives += l
	if lives < 0:
		var _scene = get_tree().change_scene("res://UI/End_game.tscn")
	
	else:
		var HUD = get_node_or_null("/root/Game/UI/HUD")
		if HUD != null:
			HUD.update_lives()
		
func reset():
	score = 0
	time = 30
	lives = 5
