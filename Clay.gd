extends Control

var uang = 12000
var ProdProc = 0
var BahanProc = 0
var BahanBaku = 100
var Product = 0
var grade = 1
var useless = 0
var rate = 10
var sell = 0
var lotto = 0
var MintaA 
var MintaB 
var MintaC
var MintaD
var a = 0.2
var at=0
var bt=0
var ct=0
var Prd_A
var Prd_B
var Prd_C
var Prd_D

func _ready():
	randomize()
	$UI/mon/monLab.set_text(str(uang))
	MintaA = 50 +((randi() % 10+1)*5)
	MintaB = 40 +((randi() % 8+1)*5)
	MintaC = 60 +((randi() % 12+1)*5)
	MintaD = 60 +((randi() % 4+1)*5)
	Prd_A = [MintaA , MintaA , MintaA , MintaA, MintaA]
	Prd_B = [MintaB , MintaB , MintaB , MintaB, MintaB]
	Prd_C = [MintaC , MintaC , MintaC , MintaC, MintaC]
	Prd_D = [MintaD , MintaD , MintaD , MintaD, MintaD]
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
func _predicto():
	
	pass

func _supply(x,y):
	if uang-x < 0:
		_wrn("Uang Kurang")
	else :
		uang = uang - x 
		BahanBaku+=y
		$UI/mon/monLab.set_text(str(uang))
		_wrn("Pembelian Berhasil")
	pass

func _deliver(x,y):
	if uang-x < 0 :
		_wrn("uang Kurang")
	else : 
		if Product-y < 0 :
			_wrn("Barang Kurang")
		else :
			_wrn("pengiriman segera dilakukan")
			uang = uang - x 
			Product= Product - y 
			$UI/mon/monLab.set_text(str(uang))
			$PERUSAHAAN/Stat/Produk.set_text(str(Product))
			$TRI_DELIVERY.start()
			sell = y
	pass

func _clearWAr():
	$WARNING_MAP/AnimatedSprite.stop()
	$WARNING_MAP.hide()
	$NAVIGATOR/war_1.stop()
	$NAVIGATOR/war_1.hide()
	$NAVIGATOR/war_2.stop()
	$NAVIGATOR/war_2.hide()
	$NAVIGATOR/war_3.stop()
	$NAVIGATOR/war_3.hide()
	pass

func _clearSky():
	$mp1/AKURA.hide()
	$mp2/AKURA.hide()
	$mp4/AKURA.hide()
	$mp1/PREDIS.hide()
	$mp2/PREDIS.hide()
	$mp4/PREDIS.hide()
	$mp1/REAL.hide()
	$mp2/REAL.hide()
	$mp4/REAL.hide()
	pass

func _newOrderA():
	MintaA = 50 +((randi() % 10+1)*5)
	Prd_A[0]= a*MintaA + (1-a)*Prd_A[0]
	Prd_A[1]= a*Prd_A[0] + (1-a)*Prd_A[1]
	Prd_A[2]= a*Prd_A[1] + (1-a)*Prd_A[2]
	at=(3*Prd_A[0])-(3*Prd_A[1])+ Prd_A[2] 
	bt=(((a/2)*(1-a)*(a*Prd_A[0])) - (2*a*Prd_A[1]) + (a*Prd_A[2]))
	ct=((a*a/((2*((1-a)*(1-a))))*(Prd_A[0]-(2*Prd_A[1])+Prd_A[2])) )
	Prd_A[3]= round(at+bt+(ct/2))
	Prd_A[4]= abs((MintaA-Prd_A[3]))
	$mp1/PREDIS/Label.set_text(str(Prd_A[3]))
	$mp1/AKURA/Label.set_text(str(Prd_A[4]))
	$mp1/REAL/Label.set_text(str(MintaA))
	pass

func _newOrderB():
	MintaB = 40 +((randi() % 8+1)*5)
	Prd_B[0]= a*MintaB + (1-a)*Prd_B[0]
	Prd_B[1]= a*Prd_B[0] + (1-a)*Prd_B[1]
	Prd_B[2]= a*Prd_B[1] + (1-a)*Prd_B[2]
	at=(3*Prd_B[0])-(3*Prd_B[1])+ Prd_B[2] 
	bt=(((a/2)*(1-a)*(a*Prd_B[0])) - (2*a*Prd_B[1]) + (a*Prd_B[2]))
	ct=((a*a/((2*((1-a)*(1-a))))*(Prd_B[0]-(2*Prd_B[1])+Prd_B[2])) )
	Prd_B[3]= round(at+bt+(ct/2))
	Prd_B[4]= abs((MintaB-Prd_B[3]))
	$mp2/PREDIS/Label.set_text(str(Prd_B[3]))
	$mp2/AKURA/Label.set_text(str(Prd_B[4]))
	$mp2/REAL/Label.set_text(str(MintaB))
	pass

func _newOrderC():
	MintaC = 60 +((randi() % 12+1)*5)
	Prd_C[0]= a*MintaC + (1-a)*Prd_C[0]
	Prd_C[1]= a*Prd_C[0] + (1-a)*Prd_C[1]
	Prd_C[2]= a*Prd_C[1] + (1-a)*Prd_C[2]
	at=(3*Prd_C[0])-(3*Prd_C[1])+ Prd_C[2] 
	bt=(((a/2)*(1-a)*(a*Prd_C[0])) - (2*a*Prd_C[1]) + (a*Prd_C[2]))
	ct=((a*a/((2*((1-a)*(1-a))))*(Prd_C[0]-(2*Prd_C[1])+Prd_C[2])) )
	Prd_C[3]= round(at+bt+(ct/2))
	Prd_C[4]= abs((MintaC-Prd_C[3]))
	$mp4/PREDIS/Label.set_text(str(Prd_C[3]))
	$mp4/AKURA/Label.set_text(str(Prd_C[4]))
	$mp4/REAL/Label.set_text(str(MintaC))
	pass


func _wrn(x):
	$WRN/Label.set_text(x)
	$WRN.show()
	pass

func _hideall():
	$NAVIGATOR.hide()
	$mp1.hide()
	$mp2.hide()
	$mp3.hide()
	$mp4.hide()
	#$NAVIGATOR/GridContainer/1.icon=load("res://asset/off.png")
	pass

func _popclose():
	$POP_SUP_1.hide()
	$POP_SUP_2.hide()
	$POP_SUP_3.hide()
	$POP_SUP_4.hide()
	$POP_DIST_1.hide()
	$POP_DIST_2.hide()
	$POP_DIST_3.hide()
	$PERUSAHAAN.hide()
	$WRN.hide()
	$POP_SUP_1/bt_beli_1.set_disabled(true)
	$POP_SUP_2/bt_beli_2.set_disabled(true)
	$POP_SUP_3/bt_beli_3.set_disabled(true)
	$POP_SUP_4/bt_beli_4.set_disabled(true)
	pass

func _startclean():
	$POP_SUP_1/ln_berat_1.set_text("")
	$POP_SUP_2/ln_berat_1.set_text("")
	$POP_SUP_3/ln_berat_1.set_text("")
	$POP_SUP_4/ln_berat_1.set_text("")
	$POP_SUP_1/calc_res_1.set_text("")
	$POP_SUP_2/calc_res_1.set_text("")
	$POP_SUP_3/calc_res_1.set_text("")
	$POP_SUP_4/calc_res_1.set_text("")
	$POP_DIST_1/ln_berat_1.set_text("")
	$POP_DIST_1/cald_res_1.set_text("")
	$POP_DIST_2/ln_berat_1.set_text("")
	$POP_DIST_2/cald_res_1.set_text("")
	$POP_DIST_3/ln_berat_1.set_text("")
	$POP_DIST_3/cald_res_1.set_text("")
	pass

func _on_1_pressed():
	_hideall()
	$mp1.show()
	$UI/nav.icon=load("res://asset/d1.png")
	pass # replace with function body


func _on_2_pressed():
	_hideall()
	$mp2.show()
	$UI/nav.icon=load("res://asset/d2.png")
	pass # replace with function body


func _on_3_pressed():
	_hideall()
	$mp3.show()
	$UI/nav.icon=load("res://asset/d3.png")
	pass # replace with function body


func _on_4_pressed():
	_hideall()
	$mp4.show()
	$UI/nav.icon=load("res://asset/d4.png")
	pass # replace with function body


func _on_nav_pressed():
	$NAVIGATOR.show()
	pass # replace with function body


func _on_ex_pressed():
	get_tree().change_scene("res://MainMenu.tscn")
	pass # replace with function body


func _on_calc_app_pressed():
	useless = int ($POP_SUP_1/ln_berat_1.get_text()) * 60
	$POP_SUP_1/calc_res_1.set_text(str(useless))
	useless = 0
	$POP_SUP_1/bt_beli_1.set_disabled(false)
	pass # replace with function body


func _on_calc_app_2_pressed():
	useless = int ($POP_SUP_2/ln_berat_1.get_text()) * 50
	$POP_SUP_2/calc_res_1.set_text(str(useless))
	useless = 0
	$POP_SUP_2/bt_beli_2.set_disabled(false)
	pass # replace with function body


func _on_calc_app_3_pressed():
	useless = int ($POP_SUP_3/ln_berat_1.get_text()) * 45
	$POP_SUP_3/calc_res_1.set_text(str(useless))
	useless = 0
	$POP_SUP_3/bt_beli_3.set_disabled(false)
	pass # replace with function body


func _on_calc_app_4_pressed():
	useless = int ($POP_SUP_4/ln_berat_1.get_text()) * 55
	$POP_SUP_4/calc_res_1.set_text(str(useless))
	useless = 0
	$POP_SUP_4/bt_beli_4.set_disabled(false)
	pass # replace with function body


func _on_SUPP_A_pressed():
	$POP_SUP_1.show()
	_startclean()
	pass # replace with function body


func _on_SUPP_B_pressed():
	$POP_SUP_2.show()
	_startclean()
	pass # replace with function body


func _on_SUPP_C_pressed():
	$POP_SUP_3.show()
	_startclean()
	pass # replace with function body


func _on_SUPP_D_pressed():
	$POP_SUP_1.show()
	_startclean()
	pass # replace with function body


func _on_bt_batal_pressed():
	_popclose()
	pass # replace with function body


func _on_cald_app_1_pressed():
	useless = int ($POP_DIST_1/ln_berat_1.get_text()) * 13
	$POP_DIST_1/cald_res_1.set_text(str(useless))
	useless = 0
	$POP_DIST_1/bt_kirim_1.set_disabled(false)
	pass # replace with function body


func _on_cald_app_2_pressed():
	useless = int ($POP_DIST_2/ln_berat_1.get_text()) * 12
	$POP_DIST_2/cald_res_1.set_text(str(useless))
	useless = 0
	$POP_DIST_2/bt_kirim_2.set_disabled(false)
	pass # replace with function body


func _on_cald_app_3_pressed():
	useless = int ($POP_DIST_3/ln_berat_1.get_text()) * 11
	$POP_DIST_3/cald_res_1.set_text(str(useless))
	useless = 0
	$POP_DIST_3/bt_kirim_3.set_disabled(false)
	pass # replace with function body


func _on_DIST_A_pressed():
	$POP_DIST_1.show()
	_startclean()
	pass # replace with function body


func _on_DIST_B_pressed():
	$POP_DIST_2.show()
	_startclean()
	pass # replace with function body


func _on_DIST_C_pressed():
	$POP_DIST_3.show()
	_startclean()
	pass # replace with function body


func _on_bt_beli_1_pressed():
	_supply(int ($POP_SUP_1/calc_res_1.get_text()) , int ($POP_SUP_1/ln_berat_1.get_text()))
	pass # replace with function body


func _on_bt_beli_2_pressed():
	_supply(int ($POP_SUP_2/calc_res_1.get_text()) , int ($POP_SUP_2/ln_berat_1.get_text()))
	pass # replace with function body


func _on_bt_beli_3_pressed():
	_supply(int ($POP_SUP_3/calc_res_1.get_text()) , int ($POP_SUP_3/ln_berat_1.get_text()))
	pass # replace with function body


func _on_bt_beli_4_pressed():
	_supply(int ($POP_SUP_4/calc_res_1.get_text()) , int ($POP_SUP_4/ln_berat_1.get_text()))
	pass # replace with function body


func _on_ok_prod_pressed():
	ProdProc = int($PERUSAHAAN/ProductionLine/LineProd.get_text())
	BahanProc = int (float (ProdProc*0.5/0.8)+1)
	if (BahanBaku-BahanProc)<0 :
		return
	BahanBaku = BahanBaku-BahanProc 
	$PERUSAHAAN/Stat/BahanBaku.set_text(str(BahanBaku))
	$PERUSAHAAN/ProductionLine/LineBahan.set_text(str(BahanProc))
	$PERUSAHAAN/ProductionLine/LineProd.set_editable(false)
	$PERUSAHAAN/ProductionLine/mulai_prod.set_disabled(false)
	pass # replace with function body


func _on_mulai_prod_pressed():
	$PERUSAHAAN/factory.play()
	pass # replace with function body


func _on_reset_prod_pressed():
	$PERUSAHAAN/ProductionLine/LineProd.set_editable(true)
	ProdProc = 0
	BahanProc = 0
	$PERUSAHAAN/ProductionLine/LineProd.set_text(str(ProdProc))
	$PERUSAHAAN/ProductionLine/LineBahan.set_text(str(BahanProc))
	$PERUSAHAAN/factory.stop()
	$PERUSAHAAN/factory.set_frame(0)
	pass # replace with function body


func _on_factory_animation_finished():
	ProdProc = ProdProc-rate
	if ProdProc > 0 :
		Product = Product+rate
		$PERUSAHAAN/Stat/Produk.set_text(str(Product))
		$PERUSAHAAN/ProductionLine/LineProd.set_text(str(ProdProc))
		$PERUSAHAAN/factory.set_frame(0)
		$PERUSAHAAN/factory.play()
	else :
		ProdProc = ProdProc+rate
		Product = Product+ProdProc
		ProdProc = 0
		$PERUSAHAAN/Stat/Produk.set_text(str(Product))
		$PERUSAHAAN/ProductionLine/LineProd.set_text(str(ProdProc))
		_on_reset_prod_pressed()
	pass # replace with function body


func _on_PERUSAHAAN_pressed():
	$PERUSAHAAN.show()
	$PERUSAHAAN/Stat/BahanBaku.set_text(str(BahanBaku))
	$PERUSAHAAN/Stat/Produk.set_text(str(Product))
	$PERUSAHAAN/Stat/Degrade.set_text(str(grade))
	pass # replace with function body


func _on_SpeedUp_pressed():
	$PERUSAHAAN/factory.get_sprite_frames().set_animation_speed("default",int($PERUSAHAAN/factory.get_sprite_frames().get_animation_speed("default"))+2)
	grade+=2
	$PERUSAHAAN/Stat/Degrade.set_text(str(grade))
	pass # replace with function body


func _on_CapaUp_pressed():
	rate+=10
	grade+=2
	$PERUSAHAAN/Stat/Degrade.set_text(str(grade))
	pass # replace with function body


func _on_bt_kirim_1_pressed():
	_deliver(int($POP_DIST_1/cald_res_1.get_text()),int($POP_DIST_1/ln_berat_1.get_text()))
	pass # replace with function body


func _on_TRI_DELIVERY_timeout():
	_wrn("pengiriman berhasil dilakukan")
	uang += sell*100
	$UI/mon/monLab.set_text(str(uang))
	pass # replace with function body


func _on_bt_kirim_2_pressed():
	_deliver(int($POP_DIST_2/cald_res_1.get_text()),int($POP_DIST_2/ln_berat_1.get_text()))
	pass # replace with function body


func _on_bt_kirim_3_pressed():
	_deliver(int($POP_DIST_3/cald_res_1.get_text()),int($POP_DIST_3/ln_berat_1.get_text()))
	pass # replace with function body


func _on_SUPP_A_REFRESH_timeout():
	pass # replace with function body


func _on_SUPP_B_REFRESH_timeout():
	pass # replace with function body


func _on_SUPP_C_REFRESH_timeout():
	pass # replace with function body


func _on_SUPP_D_REFRESH_timeout():
	pass # replace with function body


func _on_KOTA_R_timeout():
	lotto = randi() % 3
	if lotto == 0 :
		_newOrderA()
		$WARNING_MAP.show()
		$WARNING_MAP/AnimatedSprite.play()
		$NAVIGATOR/war_1.show()
		$NAVIGATOR/war_1.play()
		$mp1/PREDIS.show()
		$RESPONSE.start()
	elif lotto == 1 :
		_newOrderB()
		$WARNING_MAP.show()
		$WARNING_MAP/AnimatedSprite.play()
		$NAVIGATOR/war_2.show()
		$NAVIGATOR/war_2.play()
		$mp2/PREDIS.show()
		$RESPONSE.start()
	else :
		_newOrderC()
		$WARNING_MAP.show()
		$WARNING_MAP/AnimatedSprite.play()
		$NAVIGATOR/war_3.show()
		$NAVIGATOR/war_3.play()
		$mp4/PREDIS.show()
		$RESPONSE.start()
	pass # replace with function body


func _on_RESPONSE_timeout():
	_clearWAr()
	if lotto == 0 :
		$mp1/PREDIS.hide()
		$mp1/REAL.show()
		$mp1/AKURA.show()
		$RESET.start()
	elif lotto == 1 :
		$mp2/PREDIS.hide()
		$mp2/REAL.show()
		$mp2/AKURA.show()
		$RESET.start()
	else :
		$mp4/PREDIS.hide()
		$mp4/REAL.show()
		$mp4/AKURA.show()
		$RESET.start()
	pass # replace with function body


func _on_RESET_timeout():
	_clearSky()
	$KOTA_R.start()
	pass # replace with function body
