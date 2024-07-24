class_name PrototypeUpgrades
extends Control
## view for the upgrades


##referance to the user interface
@export var user_interface : User_Interface
##view referance
@export var view : User_Interface.Views


## ititialize visibility at launch
func _ready() -> void:
	visible = false
	
	user_interface.navigation_requested.connect(_on_navigation_request)


##watch for naigation request
func _on_navigation_request(requested_view : User_Interface.Views) -> void:
	if requested_view == view:
		visible = true
		return
	
	visible = false
