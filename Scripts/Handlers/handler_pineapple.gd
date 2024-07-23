class_name HandlerPineapples
extends Node
## manages pineapples and related signals

## Singleton referance
static var ref : HandlerPineapples


## singleton check
func _enter_tree() -> void:
	if not ref:
		ref = self
		return
	
	queue_free()


## returns the current amount of pineapples avaible
func pineapples() -> int:
	return Game.ref.data.pineapples


func create_pineapple(quantity : int) -> void:
	Game.ref.data.pineapples += quantity


func consume_pineapple() -> void:
	pass

