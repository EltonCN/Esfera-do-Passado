extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Dungeon1_Frag_pressed():
	disabled = true
	hide()
	Script_global.fragmento = 1
	Script_global.seta[1] = 1
	
	pass # Replace with function body.
