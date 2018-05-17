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

func _popclose():
	$pop_kotaA.hide()
	$pop_kotaB.hide()
	$pop_kotaC.hide()
	$pop_kotaD.hide()
	$pop_dist1.hide()
	$pop_dist2.hide()
	$pop_dist3.hide()
	$pop_dist4.hide()
	$pop_supp1.hide()
	$pop_supp2.hide()
	$pop_supp3.hide()
	$pop_supp4.hide()
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

func _on_back_pressed():
	_popclose()
	pass # replace with function body


func _on_kota_1_pressed():
	$pop_kotaA.show()
	pass # replace with function body


func _on_dist_1_pressed():
	$pop_dist1.show()
	pass # replace with function body


func _on_dist_2_pressed():
	$pop_dist2.show()
	pass # replace with function body



func _on_supplier2_pressed():
	$pop_supp2.show()
	pass # replace with function body


func _on_supplier1_pressed():
	$pop_supp1.show()
	pass # replace with function body


func _on_dist_3_pressed():
	$pop_dist3.show()
	pass # replace with function body


func _on_kota_2_pressed():
	$pop_kotaB.show()
	pass # replace with function body


func _on_kota_3_pressed():
	$pop_kotaC.show()
	pass # replace with function body


func _on_dist_4_pressed():
	$pop_dist4.show()
	pass # replace with function body


func _on_kota_4_pressed():
	$pop_kotaD.show()
	pass # replace with function body


func _on_supplier4_pressed():
	$pop_supp4.show()
	pass # replace with function body


func _on_supplier3_pressed():
	$pop_supp3.show()
	pass # replace with function body
