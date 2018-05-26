extends Control
var MintaA
var MintaB
var MintaC
var MintaD
var mango = 0
var a = 0.2
var at=0
var bt=0
var ct=0
var Prd_A
var Prd_B
var Prd_C
var Prd_D

func _ready():
	MintaA = 50 +(((randi()%10)+1)*5)
	MintaB = 40 +(((randi()%8)+1)*5)
	MintaC = 60 +(((randi()%12)+1)*5)
	MintaD = 60 +(((randi()%4)+1)*5)
	Prd_A = [MintaA , MintaA , MintaA , MintaA]
	Prd_B = [MintaB , MintaB , MintaB , MintaB]
	Prd_C = [MintaC , MintaC , MintaC , MintaC]
	Prd_D = [MintaD , MintaD , MintaD , MintaD]
	$Button.set_text(str(MintaA))
	$Button2.set_text(str(MintaB))
	$Button3.set_text(str(MintaC))
	$Button4.set_text(str(MintaD))
	$proga.set_text(str(Prd_A[0],Prd_A[1],Prd_A[2]))
	$progb.set_text(str(Prd_B[0],Prd_B[1],Prd_B[2]))
	$progc.set_text(str(Prd_C[0],Prd_C[1],Prd_C[2]))
	$progd.set_text(str(Prd_D[0],Prd_D[1],Prd_D[2]))
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_NEWA_pressed():
	MintaA = 50 +((randi() % 10+1)*5)
	$ACTUAL_A.set_text(str(MintaA))
	Prd_A[0]= a*MintaA + (1-a)*Prd_A[0]
	Prd_A[1]= a*Prd_A[0] + (1-a)*Prd_A[1]
	Prd_A[2]= a*Prd_A[1] + (1-a)*Prd_A[2]
	at=(3*Prd_A[0])-(3*Prd_A[1])+ Prd_A[2] 
	bt=(((a/2)*(1-a)*(a*Prd_A[0])) - (2*a*Prd_A[1]) + (a*Prd_A[2]))
	ct=(a*a/((1-2*a*a)*(Prd_A[0]-(2*Prd_A[1])+Prd_A[2])))
	Prd_A[3]= at+bt+(ct/2)
	print (at)
	print (bt)
	print (ct)
	print (Prd_A[3])
	$proga.set_text(str(Prd_A[0],Prd_A[1],Prd_A[2]))
	$Button.set_text(str(Prd_A[3]))
	pass # replace with function body


func _on_NEWB_pressed():
	MintaB = 40 +((randi() % 8+1)*5)
	pass # replace with function body


func _on_NEWC_pressed():
	MintaC = 60 +((randi() % 12+1)*5)
	pass # replace with function body


func _on_NEWD_pressed():
	MintaD = 60 +((randi() % 4+1)*5)
	pass # replace with function body
