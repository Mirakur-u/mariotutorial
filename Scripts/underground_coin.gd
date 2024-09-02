extends Area2D

class_name CollectableCoin



func _on_body_entered(body: Node2D) -> void:
	if (body is Player):
		queue_free()
		get_tree().get_first_node_in_group("level_manager").on_coin_collected()
