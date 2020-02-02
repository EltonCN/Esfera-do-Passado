extends GridContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var estado = [[0,0,0,0,0,0,0],[0,0,0,0,0,0,0],[0,0,0,0,0,0,0]]
var rot = []

var concluido = -2

func atualiza(l,c):
	if(estado[l][c] < 0):
		return
	
	estado[l][c] *= -1
	
	var cano = get_node("Cano"+str(l)+"_"+str(c))
	
	if(cano.cima == 1):
		if(l-1>=0):
			if(get_node("Cano"+str(l-1)+"_"+str(c)).baixo == 1):
				atualiza(l-1,c)
	
	if(cano.baixo == 1):
		if(l+1<=2):
			if(get_node("Cano"+str(l+1)+"_"+str(c)).cima == 1):
				atualiza(l+1,c)
			
	if(cano.esq == 1):
		if(c-1>=0):
			if(get_node("Cano"+str(l)+"_"+str(c-1)).dir == 1):
				atualiza(l,c-1)		
	
	if(cano.dir == 1):
		if(c+1<=6):
			if(get_node("Cano"+str(l)+"_"+str(c+1)).esq == 1):
				atualiza(l,c+1)
	
	pass

func disable(l, c):
	get_node("Cano"+str(l)+"_"+str(c)).set_disabled(true)

func atualiza_lava():
	for i in range(3):
		for j in range(7):
			if(estado[i][j] < 0):
				estado[i][j] *= -1
	
	atualiza(0,0)
			
	pass

func atualiza_textura():
	for i in range(3):
		for j in range(7):
			get_node("Cano"+str(i)+"_"+str(j)).atualiza_textura()

# Called when the node enters the scene tree for the first time.
func _ready():
	add_constant_override("hseparation", 0) 
	add_constant_override("vseparation", 0)

	
	for i in range(3):
		estado.append([])
		rot.append([])
		
		for j in range(7):
			estado[i].append(1)
			rot[i].append(0)
		estado.append([0])
		
			
	estado[0][0] = 1
	estado[0][1] = 2
	estado[0][2] = 1
	estado[0][3] = 3
	estado[0][4] = 2
	estado[0][5] = 2
	estado[0][6] = 1
	
	estado[1][0] = 3
	estado[1][1] = 1
	estado[1][2] = 3
	estado[1][3] = 2
	estado[1][4] = 3
	estado[1][5] = 2
	estado[1][6] = 2
	
	estado[2][0] = 2
	estado[2][1] = 1
	estado[2][2] = 2
	estado[2][3] = 2
	estado[2][4] = 2
	estado[2][5] = 2
	estado[2][6] = 1
	
	disable(1,2)
	disable(0,0)
	disable(1,4)
	disable(2,6)
	disable(0,3)
	
	rot[1][2] = 90
	rot[0][3] = 180
	rot[1][4] = 270
	rot[0][2] = 90
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(concluido < 0):
		atualiza_textura()
		concluido += 1
		
	atualiza_lava()
	
	if(estado[2][6]<0):
		concluido = 1
		atualiza_textura()
		get_parent().concluido = 1	
	pass
