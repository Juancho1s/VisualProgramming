/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F6BA5A5
/// @DnDArgument : "var" "global.Is_frozen"
/// @DnDArgument : "value" "1"
if(global.Is_frozen == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 51563DF6
	/// @DnDParent : 0F6BA5A5
	/// @DnDArgument : "expr" "score + 200"
	/// @DnDArgument : "var" "score"
	score = score + 200;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 363C0356
	/// @DnDApplyTo : other
	/// @DnDParent : 0F6BA5A5
	/// @DnDArgument : "x" "383"
	/// @DnDArgument : "y" "383"
	with(other) {
	x = 383;
	y = 383;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 53F1C8C8
	/// @DnDApplyTo : other
	/// @DnDParent : 0F6BA5A5
	/// @DnDArgument : "direction" "90"
	with(other) {
	direction = 90;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 61EC4E55
	/// @DnDApplyTo : other
	/// @DnDParent : 0F6BA5A5
	/// @DnDArgument : "speed" "2"
	with(other) speed = 2;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4AD2BE2B
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E3023FC
	/// @DnDParent : 4AD2BE2B
	/// @DnDArgument : "var" "global.Is_dying"
	if(global.Is_dying == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 19D80FC1
		/// @DnDParent : 3E3023FC
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "global.Is_dying"
		global.Is_dying = 1;
	
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 14A81735
		/// @DnDParent : 3E3023FC
		/// @DnDArgument : "soundid" "PacDies_snd"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "soundid" "PacDies_snd"
		var l14A81735_0 = PacDies_snd;
		if (!audio_is_playing(l14A81735_0))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0E9D058F
			/// @DnDParent : 14A81735
			/// @DnDArgument : "expr" "lives -1"
			/// @DnDArgument : "var" "lives"
			lives = lives -1;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 4D35C140
			/// @DnDParent : 14A81735
			/// @DnDArgument : "soundid" "PacDies_snd"
			/// @DnDSaveInfo : "soundid" "PacDies_snd"
			audio_play_sound(PacDies_snd, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 05AA08FF
			/// @DnDParent : 14A81735
			speed = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 2F07BF55
			/// @DnDParent : 14A81735
			/// @DnDArgument : "spriteind" "Pacman_dies"
			/// @DnDSaveInfo : "spriteind" "Pacman_dies"
			sprite_index = Pacman_dies;
			image_index = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 66F4D950
		/// @DnDParent : 3E3023FC
		/// @DnDArgument : "var" "lives"
		/// @DnDArgument : "op" "3"
		if(lives <= 0)
		{
			/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 4FCC627D
			/// @DnDParent : 66F4D950
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
			/// @DnDHash : 3BEC0BDB
			/// @DnDParent : 66F4D950
			/// @DnDArgument : "room" "Room_GameOver"
			/// @DnDSaveInfo : "room" "Room_GameOver"
			room_goto(Room_GameOver);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5EC9668F
		/// @DnDParent : 3E3023FC
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 29CAEAA3
			/// @DnDParent : 5EC9668F
			/// @DnDArgument : "steps" "75"
			/// @DnDArgument : "alarm" "1"
			alarm_set(1, 75);
		}
	}
}