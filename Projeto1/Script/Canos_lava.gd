extends GridContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var estado = []
var rot = []
var sprite = [load("res://Sprite/Prova_Cano"),load("res://Sprite/Prova_Cano"),load("res://Sprite/Prova_Cano")]

func atualiza(l,c):
	if(estado < 0):
		return
	
	estado[l][c] *= -1
	
	var cano = get_node("Cano"+str(l)+"_"+str(c))
	
	if(cano.cima == 1):
		if(l-1>=0):
			atualiza(l-1,c)
	
	if(cano.baixo == 1):
		if(l+1<=2):
			atualiza(l+1,c)
			
	if(cano.esq == 1):
		if(c-1>=0):
			atualiza(l,c-1)		
	
	if(cano.dir == 1):
		if(c+1<=6):
			atualiza(l,c+1)
	
	pass

func atualiza_lava():
	for i in range(3):
		for j in range(7):
			if(estado[i][j] < 0):
				estado[i][j] *= -1
	
	atualiza(0,0)
	
			
	pass


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
	estado[0][1] = 1
	estado[0][2] = 1
	estado[0][3] = 1
	estado[0][4] = 1
	estado[0][5] = 1
	estado[0][6] = 1
	
	estado[1][0] = 1
	estado[1][1] = 1
	estado[1][2] = 1
	estado[1][3] = 1
	estado[1][4] = 1
	estado[1][5] = 1
	estado[1][6] = 1
	
	estado[2][0] = 1
	estado[2][1] = 1
	estado[2][2] = 1
	estado[2][3] = 1
	estado[2][4] = 1
	estado[2][5] = 1
	estado[2][6] = 1
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
