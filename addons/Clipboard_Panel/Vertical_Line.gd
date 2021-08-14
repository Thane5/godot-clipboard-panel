tool
extends HBoxContainer

const ICON_COPY = "ActionCopy"
const ICON_CLEAR = "Clear"
const ICON_REMOVE = "Remove"


func _enter_tree():

	var copyIcon = get_icon(ICON_COPY, 'EditorIcons')
	get_node("Copy").set_button_icon(copyIcon)

	var clearIcon = get_icon(ICON_CLEAR, 'EditorIcons')
	get_node("Clear").set_button_icon(clearIcon)

	var removeIcon = get_icon(ICON_REMOVE, 'EditorIcons')
	get_node("Remove").set_button_icon(removeIcon)



func _on_Copy_pressed():
	get_node("TextEdit").select_all()
	get_node("TextEdit").copy()
	yield(get_tree().create_timer(0.1), "timeout")
	get_node("TextEdit").deselect()
	
func _on_Clear_pressed():
	get_node("TextEdit").set_text("")


func _on_Remove_pressed():
	var container = (get_node(".."))
	if container.get_child_count() > 1:
		self.queue_free()



