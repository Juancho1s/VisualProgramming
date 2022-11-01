/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3015D383
/// @DnDArgument : "code" "{$(13_10)$(13_10)		if(hspeed == 0)$(13_10)		{$(13_10)			if(random(3) < 1 && place_free(x - 12, y))$(13_10)			{$(13_10)				hspeed = -global.GHOST_VELOCITY;$(13_10)				vspeed = 0;$(13_10)				if(global.Is_frozen == 1)$(13_10)				{$(13_10)				$(13_10)				}$(13_10)				else$(13_10)				{$(13_10)					sprite_index = Pink_spr_Left;$(13_10)				}			$(13_10)			}$(13_10)			if(random(3) < 1 && place_free(x + 12, y))$(13_10)			{$(13_10)				hspeed = global.GHOST_VELOCITY;$(13_10)				vspeed = 0;$(13_10)				if(global.Is_frozen == 1)$(13_10)				{$(13_10)				$(13_10)				}$(13_10)				else$(13_10)				{$(13_10)					sprite_index = Pink_spr_Right;$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			if(random(3) < 1 && place_free(x, y +12))$(13_10)			{$(13_10)				hspeed = 0;$(13_10)				vspeed = global.GHOST_VELOCITY;$(13_10)				if(global.Is_frozen == 1)$(13_10)				{$(13_10)				$(13_10)				}$(13_10)				else$(13_10)				{$(13_10)					sprite_index = Pink_spr_Down;$(13_10)				}			$(13_10)			}$(13_10)			if(random(3) < 1 && place_free(x, y - 12))$(13_10)			{$(13_10)				hspeed = 0;$(13_10)				vspeed = -global.GHOST_VELOCITY;$(13_10)				if(global.Is_frozen == 1)$(13_10)				{$(13_10)				$(13_10)				}$(13_10)				else$(13_10)				{$(13_10)					sprite_index = Pink_spr_Up;$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)		$(13_10)	$(13_10)}$(13_10)"
{

		if(hspeed == 0)
		{
			if(random(3) < 1 && place_free(x - 12, y))
			{
				hspeed = -global.GHOST_VELOCITY;
				vspeed = 0;
				if(global.Is_frozen == 1)
				{
				
				}
				else
				{
					sprite_index = Pink_spr_Left;
				}			
			}
			if(random(3) < 1 && place_free(x + 12, y))
			{
				hspeed = global.GHOST_VELOCITY;
				vspeed = 0;
				if(global.Is_frozen == 1)
				{
				
				}
				else
				{
					sprite_index = Pink_spr_Right;
				}
			}
		}
		else
		{
			if(random(3) < 1 && place_free(x, y +12))
			{
				hspeed = 0;
				vspeed = global.GHOST_VELOCITY;
				if(global.Is_frozen == 1)
				{
				
				}
				else
				{
					sprite_index = Pink_spr_Down;
				}			
			}
			if(random(3) < 1 && place_free(x, y - 12))
			{
				hspeed = 0;
				vspeed = -global.GHOST_VELOCITY;
				if(global.Is_frozen == 1)
				{
				
				}
				else
				{
					sprite_index = Pink_spr_Up;
				}
			}
		}
		
	
}