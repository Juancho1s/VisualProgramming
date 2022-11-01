/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5C7AE33C
/// @DnDArgument : "code" "{$(13_10)$(13_10)	sprite_index = Orange_spr_Idle;$(13_10)	image_speed = 0;$(13_10)	$(13_10)	$(13_10)	direction = choose(0, 90, 180, 270);$(13_10)	motion_set(direction, global.GHOST_VELOCITY);$(13_10)$(13_10)}$(13_10)"
{

	sprite_index = Orange_spr_Idle;
	image_speed = 0;
	
	
	direction = choose(0, 90, 180, 270);
	motion_set(direction, global.GHOST_VELOCITY);

}