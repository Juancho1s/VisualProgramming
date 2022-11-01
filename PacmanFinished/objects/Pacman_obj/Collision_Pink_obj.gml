/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 689A0B95
/// @DnDArgument : "var" "global.Is_frozen"
/// @DnDArgument : "value" "1"
if(global.Is_frozen == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2E856FB5
	/// @DnDParent : 689A0B95
	/// @DnDArgument : "expr" "score + 100"
	/// @DnDArgument : "var" "score"
	score = score + 100;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 1845731B
	/// @DnDApplyTo : other
	/// @DnDParent : 689A0B95
	/// @DnDArgument : "x" "383"
	/// @DnDArgument : "y" "383"
	with(other) {
	x = 383;
	y = 383;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 16A05492
	/// @DnDApplyTo : other
	/// @DnDParent : 689A0B95
	/// @DnDArgument : "direction" "90"
	with(other) {
	direction = 90;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 31FB648D
	/// @DnDApplyTo : other
	/// @DnDParent : 689A0B95
	/// @DnDArgument : "speed" "2"
	with(other) speed = 2;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 775830E6
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4927C723
	/// @DnDParent : 775830E6
	/// @DnDArgument : "var" "global.Is_dying"
	if(global.Is_dying == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 59017979
		/// @DnDParent : 4927C723
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "global.Is_dying"
		global.Is_dying = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 39511DDE
		/// @DnDParent : 4927C723
		/// @DnDArgument : "expr" "lives - 1"
		/// @DnDArgument : "var" "lives"
		lives = lives - 1;
	
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 70FBB661
		/// @DnDParent : 4927C723
		/// @DnDArgument : "soundid" "PacDies_snd"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "soundid" "PacDies_snd"
		var l70FBB661_0 = PacDies_snd;
		if (!audio_is_playing(l70FBB661_0))
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 68FB50CF
			/// @DnDParent : 70FBB661
			speed = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 1DD4A1A0
			/// @DnDParent : 70FBB661
			/// @DnDArgument : "spriteind" "Pacman_dies"
			/// @DnDSaveInfo : "spriteind" "Pacman_dies"
			sprite_index = Pacman_dies;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 25F5390C
			/// @DnDParent : 70FBB661
			/// @DnDArgument : "soundid" "PacDies_snd"
			/// @DnDSaveInfo : "soundid" "PacDies_snd"
			audio_play_sound(PacDies_snd, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 2DCE7DF4
			/// @DnDParent : 70FBB661
			/// @DnDArgument : "steps" "60"
			/// @DnDArgument : "alarm" "1"
			alarm_set(1, 60);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 29BED3F8
		/// @DnDParent : 4927C723
		/// @DnDArgument : "var" "lives"
		if(lives == 0)
		{
			/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 5A61340E
			/// @DnDParent : 29BED3F8
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
			/// @DnDHash : 741D16E4
			/// @DnDParent : 29BED3F8
			/// @DnDArgument : "room" "Room_GameOver"
			/// @DnDSaveInfo : "room" "Room_GameOver"
			room_goto(Room_GameOver);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 151462DE
		/// @DnDParent : 4927C723
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 17CC1323
			/// @DnDParent : 151462DE
			/// @DnDArgument : "steps" "75"
			/// @DnDArgument : "alarm" "1"
			alarm_set(1, 75);
		}
	}
}