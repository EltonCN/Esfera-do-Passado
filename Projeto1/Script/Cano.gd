extends TextureButton

var l
var c
var pai

var cima = 0
var esq = 0
var dir = 0
var baixo = 0

var vazio = null
var lava

# Called when the node enters the scene tree for the first time.
func _ready():
	l = self.name[4]
	c = self.name[6]
	
	l = int(l)
	c = int(c)
	
	pai = get_parent()
	
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(vazio == null):
		#Atualiza para quais direções existe fluxo
		if(abs(pai.estado[l][c]) == 1): #Reto
			vazio = load("res://Sprite/Cano_Reto.png")
			lava = load("res://Sprite/Cano_RetoL.png")	
		elif(abs(pai.estado[l][c]) == 2): #Curvo
			vazio = load("res://Sprite/Cano_Curva.png")
			lava = load("res://Sprite/Cano_CurvaL.png")		
		else: #Triplo
			vazio = load("res://Sprite/Cano_Triplo.png")
			lava = load("res://Sprite/Cano_TriploL.png")
	
	
	
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
			cima = 1
			dir = 1
		elif(pai.rot[l][c] == 90):
			baixo = 1
			dir = 1
		elif(pai.rot[l][c] == 180):
			esq = 1
			baixo = 1
		else:
			cima = 1
			esq = 1		
	else: #Triplo
		if(pai.rot[l][c] == 0):
			cima = 1
			dir = 1
			esq = 1
		elif(pai.rot[l][c] == 90):
			cima = 1
			baixo = 1
			dir = 1
		elif(pai.rot[l][c] == 180):
			dir = 1
			baixo = 1
			esq = 1
		else:
			cima = 1
			baixo = 1
			esq = 1
	
	#Atualiza a textura
	if(pai.estado[l][c]>0):
		set_normal_texture(vazio)
	else:
		set_normal_texture(lava)
	
	set_rotation((pai.rot[l][c])*PI/180)
			
func _on_Cano_pressed():
	pai.rot[l][c] += 90
	
	if(pai.rot[l][c] == 360):
		pai.rot[l][c] = 0
		pass
	
	
	pass # Replace with function body.
