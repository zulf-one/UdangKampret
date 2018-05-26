extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_bt_rules_pressed():
	$pg_default.hide()
	$pg_rules.show()
	pass # replace with function body


func _on_bt_score_pressed():
	$pg_default.hide()
	$pg_score.show()
	pass # replace with function body


func _on_bt_exit_pressed():
	get_tree().quit()
	pass # replace with function body


func _on_bt_back_pressed():
	$pg_rules.hide()
	$pg_default.show()
	pass # replace with function body


func _on_bt_back2_pressed():
	$pg_score.hide()
	$pg_default.show()
	pass # replace with function body


func _on_bt_start_pressed():
	$pg_default.hide()
	$Name.show()
	pass # replace with function body


func _on_y_pressed():
	get_tree().change_scene("res://Play.tscn")
	pass # replace with function body


func _on_N_pressed():
	get_tree().change_scene("res://Faggot.tscn")
	pass # replace with function body
