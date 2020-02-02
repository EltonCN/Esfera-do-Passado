extends GridContainer

var tocando = false
var sequencia_tocando = null

var indice = 0

var tom_atual = null

func tocar(sequencia):
	tocando = true
	sequencia_tocando = sequencia
	tocar_tom(sequencia[0])
	indice = 1
	pass

func tocar_tom(tom):
	tom_atual = get_node("Tom"+str(tom))
	tom_atual.tocar()
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(tocando == true):

		if(tom_atual.get_node("AudioStreamPlayer2D").playing ==  false):
			if(indice==5):
				indice = 0
				tocando = false
			else:
				tocar_tom(sequencia_tocando[indice])
				indice+=1	
	
		
	pass
