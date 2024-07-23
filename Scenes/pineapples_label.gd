class_name labelpineapples
extends Label
##display amount of pineapples



## connecting signals 
func _ready() -> void:
	update_text()
	HandlerPineapples.ref.pineapples_created.connect(update_text)
	HandlerPineapples.ref.pineapples_conusmed.connect(update_text)

## updates the text to refelt the currect amount of pineaple
func update_text(_quantity : int = -1) -> void:
	text = "Pineapples: %s" %HandlerPineapples.ref.pineapples()
	
