/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5C7AE33C
/// @DnDArgument : "code" "{$(13_10)$(13_10)	sprite_index = Blue_spr_Idle;$(13_10)	image_speed = 0;$(13_10)	$(13_10)	GHOST_VELOCITY = 3;$(13_10)	$(13_10)	direction = choose(0, 90, 180, 270);$(13_10)	motion_set(direction, GHOST_VELOCITY);$(13_10)$(13_10)}$(13_10)"
{

	sprite_index = Blue_spr_Idle;
	image_speed = 0;
	
	GHOST_VELOCITY = 3;
	
	direction = choose(0, 90, 180, 270);
	motion_set(direction, GHOST_VELOCITY);

}