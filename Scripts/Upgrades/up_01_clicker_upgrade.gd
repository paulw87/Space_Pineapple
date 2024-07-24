class_name Up01ClickerUpgrade
## Upgrade 01 - Incresses pineapples created by the clicker

## level of the upgrade
var level : int = 0
## title/name of the upgrade
var title : String = "Clicker Upgrade"
# base cost of the upgrade
var base_cost : int = 5

## desctription of the upgrade effcts and the cost
func description() -> String:
	var description : String = "Increases the amount of pineapples per click"
	description += "\nEffects : +1 pineapple / level"
	description += "\nCost : %s" %cost()
	
	return description()

## returns the current cost based on level and the base_cost
func cost() -> int:
	return base_cost * pow(1.5, level)
