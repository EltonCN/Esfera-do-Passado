extends Area2D

var tipo

onready var apagado
onready var aceso

# Called when the node enters the scene tree for the first time.
func _ready():
	
	tipo = self.name[7]
	tipo = int(tipo)
	
	apagado = load("res://Sprite/Gelo/Cristal"+str(tipo)+".png")
	aceso = load("res://Sprite/Gelo/Cristal"+str(tipo)+"A.png")
	
	get_node("Sprite").texture = apagado
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Cristal_body_entered(body):
	if(body.name == "Patinador"):
		get_tree().get_root().get_node("Node2D").atualizar(tipo)
		get_tree().get_root().get_node("Node2D/Cristais/Tom"+str(tipo+1)).play()
		get_node("Sprite").texture = aceso


func _on_Cristal_body_exited(body):
	get_node("Sprite").texture = apagado
	pass # Replace with function body.
