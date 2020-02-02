extends Area2D

var tipo

onready var apagado
onready var aceso

# Called when the node enters the scene tree for the first time.
func _ready():
	
	tipo = self.name[7]
	tipo = int(tipo)
	
	apagado = load("res://Sprite/Cristal"+str(tipo)+".png")
	aceso = load("res://Sprite/CristalA"+str(tipo)+".png")
	
	Sprite.texture = apagado
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Cristal_body_entered(body):
	get_parent().atualizar(tipo)
	Sprite.texture = aceso	


func _on_Cristal_body_exited(body):
	Sprite.texture = apagado
	pass # Replace with function body.
