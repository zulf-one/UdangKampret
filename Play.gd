extends Control

var monei = 12000
var helm = 200
var amP = 0
var amB = 0
# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	$monie/DeMon.set_text(str(monei))
	$pop_usaha/Prod/AM_Produksi.set_text(str(amP))
	$pop_usaha/Prod/AM_Bahan.set_text(str(amB))
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
func _warning():
	
	pass


func _on_Mov_pressed():
	$Button.hide()
	$move.show()
	$warTot.hide()
	$warTot.stop()
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
	$Button.icon=load("res://asset/LOC1.png")
	if $move/warTot2.is_playing():
		$move/warTot2.hide()
		$move/warTot2.stop()
	pass # replace with function body


func _on_02_pressed():
	_fukkenhide()
	$Button.show()
	$map2.show()
	$Button.icon=load("res://asset/LOC2.png")
	pass # replace with function body


func _on_03_pressed():
	_fukkenhide()
	$Button.show()
	$map3.show()
	$Button.icon=load("res://asset/LOC3.png")
	pass # replace with function body


func _on_04_pressed():
	_fukkenhide()
	$Button.show()
	$map4.show()
	$Button.icon=load("res://asset/LOC4.png")
	pass # replace with function body


func _on_05_pressed():
	_fukkenhide()
	$Button.show()
	$map5.show()
	$Button.icon=load("res://asset/LOC5.png")
	pass # replace with function body


func _on_06_pressed():
	_fukkenhide()
	$Button.show()
	$map6.show()
	if $move/warTot3.is_playing():
		$move/warTot3.hide()
		$move/warTot3.stop()
	$Button.icon=load("res://asset/LOC6.png")
	pass # replace with function body


func _on_07_pressed():
	_fukkenhide()
	$Button.show()
	$map7.show()
	$Button.icon=load("res://asset/LOC7.png")
	pass # replace with function body


func _on_08_pressed():
	_fukkenhide()
	$Button.show()
	$map8.show()
	$Button.icon=load("res://asset/LOC8.png")
	pass # replace with function body


func _on_09_pressed():
	_fukkenhide()
	$Button.show()
	$map9.show()
	$Button.icon=load("res://asset/LOC9.png")
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


func _on_ext_pressed():
	get_tree().change_scene("res://MainMenu.tscn")
	pass # replace with function body


func _on_Button2_pressed():
	monei=monei-helm
	$monie/DeMon.set_text(str(monei))
	pass # replace with function body


func _on_jumppoutahere_pressed():
	$pop_usaha/De_Mesin.stop()
	$pop_usaha.hide()
	pass # replace with function body


func _on_perusahaan_pressed():
	$pop_usaha.show()
	pass # replace with function body


func _on_mulai_prod_pressed():
	$pop_usaha/De_Mesin.play()
	pass # replace with function body



func _on_ok_prod_pressed():
	amP = int($pop_usaha/Prod/AM_Produksi.get_text())
	amB = float (amP*0.5/0.8)
	$pop_usaha/Prod/AM_Bahan.set_text(str(amB))
	$pop_usaha/Prod/AM_Produksi.set_editable(false)
	pass # replace with function body


func _on_reset_prod_pressed():
	$pop_usaha/Prod/AM_Produksi.set_editable(true)
	amP = 0
	amB = 0
	$pop_usaha/Prod/AM_Produksi.set_text(str(amP))
	$pop_usaha/Prod/AM_Bahan.set_text(str(amB))
	$pop_usaha/De_Mesin.stop()
	$pop_usaha/De_Mesin.set_frame(0)
	pass # replace with function body



func _on_Waktu_A_timeout():
	$warTot.show()
	$warTot.play()
	$move/warTot2.show()
	$move/warTot2.play()
	pass # replace with function body


func _on_Waktu_B_timeout():
	$warTot.show()
	$warTot.play()
	$move/warTot3.show()
	$move/warTot3.play()
	pass # replace with function body


func _on_Waktu_W_timeout():
	$Waktu_A.start()
	$Waktu_B.start()
	pass # replace with function body
