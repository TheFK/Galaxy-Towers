obj_second_stack.card_object = ds_list_find_value(obj_rest_cards.rest_cards,0)
obj_second_stack.current_value = get_card_obj_value(obj_second_stack.card_object)
ds_list_delete(obj_rest_cards.rest_cards,0)