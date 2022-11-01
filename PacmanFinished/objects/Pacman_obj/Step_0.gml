{
	if(global.Is_dying)
	{
		exit;
	}

	if(keyboard_check(vk_left) && place_free(x - 8, y)) 
	{		
			direction = 180;
			sprite_index = LEFT_SPRITE;
			speed = global.PACMAN_SPEED;				
	}
	
	if(keyboard_check(vk_right) && place_free(x + 8, y))
	{					
			direction = 0;
			sprite_index = RIGHT_SPRITE;
			speed = global.PACMAN_SPEED;		
	}
	
	if(keyboard_check(vk_up) && place_free(x, y - 8))
	{					
			direction = 90;
			sprite_index = UP_SPRITE;
			speed = global.PACMAN_SPEED;
	}
	
	if(keyboard_check(vk_down) && place_free(x, y + 8))
	{			
			direction = 270;
			sprite_index = DOWN_SPRITE;
			speed = global.PACMAN_SPEED;
	}
	
	if(speed > 0)
	{
		image_speed = 1;		
	}
	else
	{
		image_speed = 0;
		image_index = 2;
	}
	
}

