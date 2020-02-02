extends Node2D

var cena_seta = load("res://Nós/Seta.tscn")
var seta = null

var estagio = 0
var tempo = 6

var sequencia = []
var atual = 0
var Genius = null

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func atualizar(novo):
	if(estagio == 3):
		return
	
	novo+=1
	
	
	print(novo)
	
	if(novo == sequencia[estagio][atual]):
		atual += 1
	else:
		atual = 0
		
	if(atual == 5):
		estagio += 1
		atual = 0
	
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	seta = cena_seta.instance()
	seta.name = "Ferramenta"
	add_child(seta)
	
	Script_global.seta[0] = 0
	Script_global.seta[1] = 0
	Script_global.seta[2] = 0
	Script_global.seta[3] = 0
	
	for i in range(3):
		sequencia.append([])
		for j in range(5):
			sequencia[i].append(0)
			
	sequencia[0][0] = 1
	sequencia[0][1] = 2
	sequencia[0][2] = 3
	sequencia[0][3] = 4
	sequencia[0][4] = 5
	
	sequencia[1][0] = 3
	sequencia[1][1] = 2
	sequencia[1][2] = 5
	sequencia[1][3] = 4
	sequencia[1][4] = 1
	
	sequencia[2][0] = 5
	sequencia[2][1] = 5
	sequencia[2][2] = 4
	sequencia[2][3] = 2
	sequencia[2][4] = 3
	
	Genius = get_node("Genius")
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(estagio < 3):		
		if(tempo<8):
			tempo += delta
		else:
			tempo = 0
			Genius.tocar(sequencia[estagio])
	
	if(estagio == 3):
		Script_global.seta[2] = 1
		Script_global.proxima_cena[2] = "Dungeon1/Dungeon1_2"
			
	pass
