if(instance_exists(obj_card_parent)){
	with obj_card_parent{
		instance_destroy(self)	
	}
}
else{
	bonus_score = ds_list_size(obj_rest_cards.rest_cards) * 10000
	
	handler.game_score += bonus_score
	score_text = instance_create_depth(obj_rest_cards.x,obj_rest_cards.y - 200, obj_rest_cards.depth-1 ,obj_score_change_text)
	score_text.change_value = bonus_score
}
if(instance_exists(obj_tower_clear)){
	with obj_tower_clear{
		instance_destroy(self)	
	}
}

obj_main_stack.stack_enabled = false
obj_main_stack.card_object = 0
obj_second_stack.stack_enabled = false
obj_second_stack.card_object = 0
handler.combo = 0

if(handler.game_round < 10){
	show_ok_dialog("Round " + string(handler.game_round) + " ended. Starting Round " + string(handler.game_round + 1), scr_next_round_dialog)
}
else{
	show_ok_dialog("Round " + string(handler.game_round) + " ended. Game ends now!", scr_game_ends_dialog)
}