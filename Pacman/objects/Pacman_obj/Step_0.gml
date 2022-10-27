{

	if(keyboard_check(vk_left) == true)
	{
		if(place_meeting(x - 12, y, Wall) == false)
		{
			direction = 180;
			
		}		
	}
	
	if(keyboard_check(vk_right) == true)
	{
		if(place_meeting(x + 12, y, Wall) == false)
		{			
			direction = 0;

		}		
	}
	
	if(keyboard_check(vk_up) == true)
	{
		if(place_meeting(x, y - 12, Wall) == false)
		{			
			direction = 90;

		}		
	}
	
	if(keyboard_check(vk_down) == true)
	{
		if(place_meeting(x, y + 12, Wall) == false)
		{			
			direction = 270;

		}		
	}
	
	move_contact_solid(direction, PACMAN_SPEED);

}

