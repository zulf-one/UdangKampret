extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Button_pressed():
	$Button.hide()
	$move.show()
	pass # replace with function body

func _fukkenhide():
	$move.hide()
	$map1.hide()
	$map2.hide()
	$map3.hide()
	$map4.hide()
	$map5.hide()
	$map6.hide()
	$map7.hide()
	$map8.hide()
	$map9.hide()
	pass

func _on_01_pressed():
	_fukkenhide()
	$Button.show()
	$map1.show()
	pass # replace with function body


func _on_02_pressed():
	_fukkenhide()
	$Button.show()
	$map2.show()
	pass # replace with function body


func _on_03_pressed():
	_fukkenhide()
	$Button.show()
	$map3.show()
	pass # replace with function body


func _on_04_pressed():
	_fukkenhide()
	$Button.show()
	$map4.show()
	pass # replace with function body


func _on_05_pressed():
	_fukkenhide()
	$Button.show()
	$map5.show()
	pass # replace with function body


func _on_06_pressed():
	_fukkenhide()
	$Button.show()
	$map6.show()
	pass # replace with function body


func _on_07_pressed():
	_fukkenhide()
	$Button.show()
	$map7.show()
	pass # replace with function body


func _on_08_pressed():
	_fukkenhide()
	$Button.show()
	$map8.show()
	pass # replace with function body


func _on_09_pressed():
	_fukkenhide()
	$Button.show()
	$map9.show()
	pass # replace with function body


func _on_rumah_pressed():
	_fukkenhide()
	$map5.show()
	pass # replace with function body
