extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Barra").hide()
	get_node("Ferramenta1").set_disabled(true)
	get_node("Ferramenta2").set_disabled(true)
	get_node("Ferramenta3").set_disabled(true)
	get_node("Ferramenta4").set_disabled(true)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Ferramenta1_pressed():
	if(Script_global.cursor != 1):
		Script_global.cursor = 1
	else:
		Script_global.cursor = 0
		
	pass # Replace with function body.


func _on_Ferramenta2_pressed():
	if(Script_global.cursor != 2):
		Script_global.cursor = 2
	else:
		Script_global.cursor = 0
		
	pass # Replace with function body.


func _on_Ferramenta3_pressed():
	if(Script_global.cursor != 3):
		Script_global.cursor = 3
	else:
		Script_global.cursor = 0
		
	pass # Replace with function body.


func _on_Ferramenta4_pressed():
	if(Script_global.cursor != 4):
		Script_global.cursor = 4
	else:
		Script_global.cursor = 0
		
	pass # Replace with function body.
