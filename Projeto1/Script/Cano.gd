extends TextureButton

var l
var c
var pai

var cima = 0
var esq = 0
var dir = 0
var baixo = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	l = self.name[4]
	c = self.name[6]
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	cima = 0
	baixo = 0
	esq = 0
	dir = 0
	
	#Atualiza para quais direções existe fluxo
	if(abs(pai.estado[l][c]) == 1): #Reto
		if(pai.rot[l][c] == 0 or pai.rot[l][c] == 180):
			cima = 1
			baixo = 1
		else:
			esq = 1
			dir = 1
	elif(abs(pai.estado[l][c]) == 2): #Curvo
		if(pai.rot[l][c] == 0):
			dir = 1
			baixo = 1
		elif(pai.rot[l][c] == 90):
			baixo = 1
			esq = 1
		elif(pai.rot[l][c] == 180):
			esq = 1
			cima = 1
		else:
			cima = 1
			dir = 1		
	else: #Triplo
		if(pai.rot[l][c] == 0):
			cima = 1
			dir = 1
			baixo = 1
		elif(pai.rot[l][c] == 90):
			esq = 1
			baixo = 1
			dir = 1
		elif(pai.rot[l][c] == 180):
			cima = 1
			baixo = 1
			esq = 1
		else:
			cima = 1
			dir = 1
			esq = 1
			
			
func _on_Cano_pressed():
	pai.rot[l][c] += 90
	
	if(pai.rot[l][c] == 360):
		pai.rot[l][c] = 0
		pass
	
	pass # Replace with function body.
