extends Control

var monei = 12000
var helm = 200
var amP = 0
var amB = 0
var BB = 1000
var prod = 0
var grad = 0
var MintaA = 50 +((randi() % 10+1)*5)
var MintaB = 40 +((randi() % 8+1)*5)
var MintaC = 60 +((randi() % 12+1)*5)
var MintaD = 60 +((randi() % 4+1)*5)
var mango = 0
# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	$monie/DeMon.set_text(str(monei))
	$pop_usaha/Prod/AM_Produksi.set_text(str(amP))
	$pop_usaha/Prod/AM_Bahan.set_text(str(amB))
	$pop_usaha/raw/raw_num.set_text(str(BB))
	$pop_usaha/done/done_num.set_text(str(prod))
	$pop_usaha/grade/grade_num.set_text(str(grad))
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
func _warning(tetx):
	$WARN/warnLabel.set_text(str(tetx))
	$WARN.show()
	pass


func _on_Mov_pressed():
	$Button.hide()
	$move.show()
	$warTot.hide()
	$warTot.stop()
	$rumah.hide()
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
func _dicsole():
	mango = 0
	$pop_dist1/L_dis_1.set_text("")
	$pop_dist1/BB_dist_1.set_text("")
	$pop_dist2/L_dis_2.set_text("")
	$pop_dist2/BB_dist_2.set_text("")
	$pop_dist3/L_dis_3.set_text("")
	$pop_dist3/BB_dist_3.set_text("")
	$pop_dist4/L_dis_4.set_text("")
	$pop_dist4/BB_dist_4.set_text("")
	$pop_supp1/BB_supp_1.set_text("")
	$pop_supp1/TB_supp_1.set_text("")
	$pop_supp2/BB_supp_2.set_text("")
	$pop_supp2/TB_supp_2.set_text("")
	$pop_supp3/BB_supp_3.set_text("")
	$pop_supp3/TB_supp_3.set_text("")
	$pop_supp4/BB_supp_4.set_text("")
	$pop_supp4/TB_supp_4.set_text("")
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
	_dicsole()
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
	$pop_supp2/BB_supp_2.set_text("")
	$pop_supp2/TB_supp_2.set_text("")
	pass # replace with function body


func _on_supplier1_pressed():
	$pop_supp1.show()
	$pop_supp1/BB_supp_1.set_text("")
	$pop_supp1/TB_supp_1.set_text("")
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
	$pop_supp4/BB_supp_4.set_text("")
	$pop_supp4/TB_supp_4.set_text("")
	pass # replace with function body


func _on_supplier3_pressed():
	$pop_supp3.show()
	$pop_supp3/BB_supp_3.set_text("")
	$pop_supp3/TB_supp_3.set_text("")
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
	$pop_usaha/Prod/AM_Produksi.set_text(str(amP))
	$pop_usaha/Prod/AM_Bahan.set_text(str(amB))
	$pop_usaha/raw/raw_num.set_text(str(BB))
	$pop_usaha/done/done_num.set_text(str(prod))
	$pop_usaha/grade/grade_num.set_text(str(grad))
	pass # replace with function body


func _on_mulai_prod_pressed():
	$pop_usaha/De_Mesin.play()
	pass # replace with function body



func _on_ok_prod_pressed():
	amP = int($pop_usaha/Prod/AM_Produksi.get_text())
	amB = int (float (amP*0.5/0.8)+1)
	BB = BB-amB 
	$pop_usaha/raw/raw_num.set_text(str(BB))
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


func _on_De_Mesin_animation_finished():
	amP = amP-10
	if amP > 0 :
		prod = prod+10
		$pop_usaha/done/done_num.set_text(str(prod))
		$pop_usaha/Prod/AM_Produksi.set_text(str(amP))
		$pop_usaha/De_Mesin.set_frame(0)
		$pop_usaha/De_Mesin.play()
	else :
		amP = amP+10 
		prod = prod+amP
		amP = 0
		$pop_usaha/done/done_num.set_text(str(prod))
		$pop_usaha/Prod/AM_Produksi.set_text(str(amP))
		_on_reset_prod_pressed()
	pass # replace with function body


func _on_Cacl_1_pressed():
	mango = int ($pop_dist1/BB_dist_1.get_text()) * 13
	$pop_dist1/L_dis_1.set_text(str(mango))
	mango = 0
	pass # replace with function body


func _on_Cacl_2_pressed():
	mango = int ($pop_dist2/BB_dist_2.get_text()) * 12
	$pop_dist2/L_dis_2.set_text(str(mango))
	mango = 0
	pass # replace with function body


func _on_Cacl_3_pressed():
	mango = int ($pop_dist3/BB_dist_3.get_text()) * 11
	$pop_dist3/L_dis_3.set_text(str(mango))
	mango = 0
	pass # replace with function body


func _on_Cacl_4_pressed():
	mango = int ($pop_dist4/BB_dist_4.get_text()) * 12
	$pop_dist4/L_dis_4.set_text(str(mango))
	mango = 0
	pass # replace with function body


func _on_Hitung_sup_1_pressed():
	mango = int ($pop_supp1/BB_supp_1.get_text()) * 60
	$pop_supp1/TB_supp_1.set_text(str(mango))
	mango = 0
	pass # replace with function body


func _on_Hitung_sup_2_pressed():
	mango = int ($pop_supp2/BB_supp_2.get_text()) * 60
	$pop_supp2/TB_supp_2.set_text(str(mango))
	mango = 0
	pass # replace with function body


func _on_Hitung_sup_3_pressed():
	mango = int ($pop_supp3/BB_supp_3.get_text()) * 60
	$pop_supp3/TB_supp_3.set_text(str(mango))
	mango = 0
	pass # replace with function body


func _on_Hitung_sup_4_pressed():
	mango = int ($pop_supp4/BB_supp_4.get_text()) * 60
	$pop_supp4/TB_supp_4.set_text(str(mango))
	mango = 0
	pass # replace with function body


func _on_buy_supp_1_pressed():
	monei = monei - int($pop_supp1/TB_supp_1.get_text()) 
	if monei > 0:
		$monie/DeMon.set_text(str(monei))
		BB = BB+ int($pop_supp1/BB_supp_1.get_text())
		_on_back_pressed()
		_warning("PEMBELIAN SUKSES")
	else :
		monei = monei + int($pop_supp1/TB_supp_1.get_text())
		_on_back_pressed()
		_warning("DUIT KURANG CUY")
	pass # replace with function body


func _on_allrite_pressed():
	$WARN.hide()
	_on_back_pressed()
	pass # replace with function body


func _on_buy_supp_2_pressed():
	monei = monei - int($pop_supp2/TB_supp_2.get_text()) 
	if monei > 0:
		$monie/DeMon.set_text(str(monei))
		BB = BB+ int($pop_supp2/BB_supp_2.get_text())
		_on_back_pressed()
		_warning("PEMBELIAN SUKSES")
	else :
		monei = monei + int($pop_supp2/TB_supp_2.get_text())
		_on_back_pressed()
		_warning("DUIT KURANG CUY")
	pass # replace with function body


func _on_buy_supp_3_pressed():
	monei = monei - int($pop_supp3/TB_supp_3.get_text()) 
	if monei > 0:
		$monie/DeMon.set_text(str(monei))
		BB = BB+ int($pop_supp3/BB_supp_3.get_text())
		_on_back_pressed()
		_warning("PEMBELIAN SUKSES")
	else :
		monei = monei + int($pop_supp3/TB_supp_3.get_text())
		_on_back_pressed()
		_warning("DUIT KURANG CUY")
	pass # replace with function body


func _on_buy_supp_4_pressed():
	monei = monei - int($pop_supp4/TB_supp_4.get_text()) 
	if monei > 0:
		$monie/DeMon.set_text(str(monei))
		BB = BB+ int($pop_supp4/BB_supp_4.get_text())
		_on_back_pressed()
		_warning("PEMBELIAN SUKSES")
	else :
		monei = monei + int($pop_supp4/TB_supp_4.get_text())
		_on_back_pressed()
		_warning("DUIT KURANG CUY")
	pass # replace with function body
