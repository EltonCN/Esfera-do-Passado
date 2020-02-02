extends Sprite


# Declare member variables here. Examples:

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var indice = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	indice = name[4]
	indice = int(indice)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(get_parent().getparent().estagio >= indice):
		visible = true
	else:		
		visible = false
	pass
