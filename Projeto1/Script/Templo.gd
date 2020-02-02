extends Node2D


var cena_seta = load("res://Nós/Seta.tscn")
var seta = null

var textura = ["Templo/Templo2.png", ""]
var indice = 0
var nFundo = 2

onready var fundo

var terminado = true

func altera_textura(endereco):
	fundo = load("res://Sprite/"+endereco)
	get_node("Fundo").texture = fundo

# Called when the node enters the scene tree for the first time.
func _ready():
	
	Script_global.seta[0] = 0
	Script_global.seta[1] = 0
	Script_global.seta[3] = 0
	
	seta = cena_seta.instance()
	seta.name = "Seta"
	add_child(seta)
	
	if(Script_global.fragmento == 1):
		altera_textura("Templo/Templo1.png")
		Script_global.seta[2] = 1
		Script_global.proxima_cena[2] = "Dungeon2/Dungeon2"
	else:
		Script_global.seta[2] = 0
		
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Script_global.fragmento != 1):
		if(terminado == true):
			altera_textura(textura[indice])
			indice+=1
			terminado = false
			get_node("Timer").start(1)
	pass


func _on_Timer_timeout():
	terminado = true
	pass # Replace with function body.
