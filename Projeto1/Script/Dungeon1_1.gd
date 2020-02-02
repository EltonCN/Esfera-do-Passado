extends Node2D

var cena_ferramenta = load("res://Nós/Ferramenta.tscn")
var ferramenta = null

var estagio = 0
var tempo = 9

var sequencia = []
var atual = 0
var Genius = null

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func atualizar(novo):
	if(estagio == 3):
		return
	
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
	ferramenta = cena_ferramenta.instance()
	ferramenta.name = "Ferramenta"
	add_child(ferramenta)
	
	Script_global.seta[0] = 0
	Script_global.seta[1] = 0
	Script_global.seta[2] = 0
	Script_global.seta[3] = 0
	
	for i in range(3):
		sequencia.append([])
		for j in range(5):
			sequencia[i].append(0)
			
	sequencia[0][0] = 0
	sequencia[0][1] = 0
	sequencia[0][2] = 0
	sequencia[0][3] = 0
	sequencia[0][4] = 0
	
	sequencia[1][0] = 0
	sequencia[1][1] = 0
	sequencia[1][2] = 0
	sequencia[1][3] = 0
	sequencia[1][4] = 0
	
	sequencia[2][0] = 0
	sequencia[2][1] = 0
	sequencia[2][2] = 0
	sequencia[2][3] = 0
	sequencia[2][4] = 0
	
	Genius = get_node("Genius")
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(estagio < 3):		
		if(tempo<10):
			tempo += delta
		else:
			tempo = 0
			Genius.tocar(sequencia[estagio])
	
	if(estagio == 3):
		Script_global.seta[2] = 1
		Script_global.proxima_cena[0] = "Dungeon1/Dungeon1_2"
			
	pass
