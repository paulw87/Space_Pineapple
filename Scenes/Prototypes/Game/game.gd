class_name Game
extends Node
## Main node of the game

## Singleton referance
static var ref : Game


## singleton check
func _singleton_check() -> void:
	if not ref:
		ref = self
		return
	
	queue_free()


## data contains the data to save and load
var data : Data

## sigleton check and initiziation
func _enter_tree() -> void:
	_singleton_check()
	data = Data.new()
