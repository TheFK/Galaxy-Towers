if(open = true and clickable = true and os_type = os_windows){
	instance_create_depth(self.x,self.y,self.depth - 1, obj_card_hover)
	if(y < start_y + 10){
		vspeed = 1	
	}
}