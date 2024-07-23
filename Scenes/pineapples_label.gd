class_name labelpineapples
extends Label
##display amount of pineapples

## temp func to update the text
func _process(_delta: float) -> void:
	update_text()

## updates the text to refelt the currect amount of pineaple
func update_text() -> void:
	text = "Pineapples: %s" %Game.ref.data.pineapples
	
