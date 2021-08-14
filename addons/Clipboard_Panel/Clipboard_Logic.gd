tool
extends Control

export(NodePath) var parentPath
const ICON_ADD = "Add"

func _enter_tree():
	var vLine = load("res://addons/Clipboard_Panel/Text_Line.tscn").instance()
	get_node(parentPath).add_child(vLine)
	
	var addIcon = get_icon(ICON_ADD, 'EditorIcons')
	get_node("ScrollContainer/HBoxContainer/Add").set_button_icon(addIcon)	

	
#	sometimes i get strange ghost instances in my scene so maybe this removes them?
func _exit_tree():
	for child in get_node("ScrollContainer/HBoxContainer/InstanceContainer").get_children():
		if get_node("ScrollContainer/HBoxContainer/InstanceContainer").get_child_count() > 1:
			child.queue_free()


func _on_Add_pressed():
	var vLine = load("res://addons/Clipboard_Panel/Text_Line.tscn").instance()
	get_node(parentPath).add_child(vLine)
