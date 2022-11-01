/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 56B9A99B
/// @DnDArgument : "var" "global.littDots"
/// @DnDArgument : "value" "288"
if(global.littDots == 288)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 5678579E
	/// @DnDParent : 56B9A99B
	/// @DnDArgument : "soundid" "badass_victory_85546"
	/// @DnDSaveInfo : "soundid" "badass_victory_85546"
	audio_play_sound(badass_victory_85546, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 3492008A
	/// @DnDParent : 56B9A99B
	/// @DnDArgument : "soundid" "Siren_snd"
	/// @DnDSaveInfo : "soundid" "Siren_snd"
	audio_stop_sound(Siren_snd);

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 62F91330
	/// @DnDParent : 56B9A99B
	/// @DnDArgument : "code" "{$(13_10)	$(13_10)	global.GHOST_VELOCITY = 0;$(13_10)	PACMAN_SPEED = 0;$(13_10)	speed = 0;$(13_10)	Pink_obj.speed = 0;$(13_10)	Red_obj.speed = 0;$(13_10)	Blue_obj.speed = 0;$(13_10)	Orange_obj.speed = 0;$(13_10)$(13_10)	x = xstart;$(13_10)	y = ystart;$(13_10)	$(13_10)	Pink_obj.x = Pink_obj.xstart;$(13_10)	Pink_obj.y = Pink_obj.ystart;$(13_10)	Pink_obj.sprite_index = Pink_spr_Idle;$(13_10)	$(13_10)	Red_obj.x = Red_obj.xstart;$(13_10)	Red_obj.y = Red_obj.ystart;$(13_10)	Red_obj.sprite_index = Red_spr_Idle;$(13_10)	$(13_10)	Blue_obj.x = Blue_obj.xstart;$(13_10)	Blue_obj.y = Blue_obj.ystart;$(13_10)	Blue_obj.sprite_index = Blue_spr_Idle;$(13_10)	$(13_10)	Orange_obj.x = Orange_obj.xstart;$(13_10)	Orange_obj.y = Orange_obj.ystart;$(13_10)	Orange_obj.sprite_index = Orange_spr_Idle;$(13_10)		$(13_10)}$(13_10)"
	{
		
		global.GHOST_VELOCITY = 0;
		PACMAN_SPEED = 0;
		speed = 0;
		Pink_obj.speed = 0;
		Red_obj.speed = 0;
		Blue_obj.speed = 0;
		Orange_obj.speed = 0;
	
		x = xstart;
		y = ystart;
		
		Pink_obj.x = Pink_obj.xstart;
		Pink_obj.y = Pink_obj.ystart;
		Pink_obj.sprite_index = Pink_spr_Idle;
		
		Red_obj.x = Red_obj.xstart;
		Red_obj.y = Red_obj.ystart;
		Red_obj.sprite_index = Red_spr_Idle;
		
		Blue_obj.x = Blue_obj.xstart;
		Blue_obj.y = Blue_obj.ystart;
		Blue_obj.sprite_index = Blue_spr_Idle;
		
		Orange_obj.x = Orange_obj.xstart;
		Orange_obj.y = Orange_obj.ystart;
		Orange_obj.sprite_index = Orange_spr_Idle;
			
	}

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 76AE1EAC
	/// @DnDParent : 56B9A99B
	/// @DnDArgument : "room" "Win"
	/// @DnDSaveInfo : "room" "Win"
	room_goto(Win);
}