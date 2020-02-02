extends GridContainer

var tocando = false
var sequencia_tocando = null

var tempo = 0
var indice = 0


func tocar(sequencia):
	tocando = true
	sequencia_tocando = sequencia
	pass

func tocar_tom(tom):
	get_node("Tom"+str(tom)).tocar()
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(tocando == true):
		if(tempo > 1):
			if(indice==5):
				indice = 0
				tocando = false
			else:
				tocar_tom(sequencia_tocando[indice])
				tempo = 0	
		else:
			tempo += delta
	
		
	pass
