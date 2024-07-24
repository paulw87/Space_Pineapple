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


##emitted when pineapples have been created
signal pineapples_created(quantity : int)
##emitted when pineapples have been consumed
signal pineapples_conusmed(quantity : int)


## returns the current amount of pineapples avaible
func pineapples() -> int:
	return Game.ref.data.pineapples


## add a sperficic amount of pineapples
func create_pineapple(quantity : int) -> void:
	Game.ref.data.pineapples += quantity
	pineapples_created.emit(quantity)


## consumes pineapples
func consume_pineapple(quantity : int) -> Error:
	if quantity > Game.ref.data.pineapples:
		return Error.FAILED
	
	Game.ref.data.pineapples -= quantity
	pineapples_conusmed.emit(quantity)
	
	return Error.OK
