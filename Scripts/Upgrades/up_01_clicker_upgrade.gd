class_name Up01ClickerUpgrade
extends Node
## Upgrade 01 - Incresses pineapples created by the clicker

## emitted when the upgrade has leveled up
signal leveled_up


## level of the upgrade
var level : int
## title/name of the upgrade
var title : String = "Clicker Upgrade"
# base cost of the upgrade
var base_cost : int = 5


## load data
func _init() -> void:
	level = Game.ref.data.up_01_level


## desctription of the upgrade effcts and the cost
func description() -> String:
	var _description : String = "Increases the amount of pineapples per click"
	_description += "\nEffects : +1 pineapple / level"
	_description += "\nCost : %s" %cost()
	
	return _description


## returns the current cost based on level and the base_cost
func cost() -> int:
	return int(base_cost * pow(1.5, level))


## returns wether or not the player can buy upgrades
func can_afford() -> bool:
	if HandlerPineapples.ref.pineapples() >= cost():
		return true
	
	return false


## consumes pineapples to level up
func level_up() -> void:
	var error : Error = HandlerPineapples.ref.consume_pineapple(cost())
	if not error:
		level += 1
		Game.ref.data.up_01_level = level
		
		leveled_up.emit()
