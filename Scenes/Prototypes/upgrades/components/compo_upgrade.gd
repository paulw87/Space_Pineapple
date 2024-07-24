class_name CompoUpgrade
extends Control
##componet displying upgrade


## referance to the title label
@export var label_title : Label
## referance to the description rich text label
@export var label_description : RichTextLabel
# referance to the purchanse upgrae button
@export var button : Button


## upgrae display
var upgrade : Up01ClickerUpgrade
 

func _ready() -> void:
	upgrade = Up01ClickerUpgrade.new()
	
	update_label_title()
	update_lebel_description()
	update_button()
	
	HandlerPineapples.ref.pineapples_created.connect(update_button)
	HandlerPineapples.ref.pineapples_conusmed.connect(update_button)
	
	upgrade.leveled_up.connect(update_label_title)
	upgrade.leveled_up.connect(update_lebel_description)
	upgrade.leveled_up.connect(update_button)
	
	

## upates the title of the upgrade
func update_label_title() -> void:
	var text : String = upgrade.title + " %" %upgrade.level
	label_title.text = text


## updates the upgrae descripton
func update_lebel_description() -> void:
	label_description.text = upgrade.description()



## updates the button avaibilty
func update_button(_quantity : int = -1) -> void:
	if upgrade.can_afford():
		button.disabled = false
		return
	
	button.disabled = true
	
