{
	
	var ins1 = collision_rectangle(x + 8, y + 8, x + 20, y + 20, littDot_obj, false, false);
	var ins2 = collision_rectangle(x + 8, y + 8, x + 20, y + 20, BigDot_obj, false, false);
	if (ins1 != noone)
	{
		instance_destroy(ins1)
		return;	
	}
	
	if (ins2 != noone)
	{
		instance_destroy(ins2)
		return;	
	}

	if(keyboard_check(vk_left) == true)
	{
		if(place_meeting(x - 8, y, Wall) == false)
		{
			direction = 180;
			sprite_index = LEFT_SPRITE;
			image_speed = 1;
		}		
	}
	
	if(keyboard_check(vk_right) == true)
	{
		if(place_meeting(x + 8, y, Wall) == false)
		{			
			direction = 0;
			sprite_index = RIGHT_SPRITE;
			image_speed = 1;
		}		
	}
	
	if(keyboard_check(vk_up) == true)
	{
		if(place_meeting(x, y - 8, Wall) == false)
		{			
			direction = 90;
			sprite_index = UP_SPRITE;
			image_speed = 1;
		}		
	}
	
	if(keyboard_check(vk_down) == true)
	{
		if(place_meeting(x, y + 8, Wall) == false)
		{			
			direction = 270;
			sprite_index = DOWN_SPRITE;
			image_speed = 1;
		}		
	}
	
	move_contact_solid(direction, PACMAN_SPEED);

}

