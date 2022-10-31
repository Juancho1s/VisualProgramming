/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 62ECF5B1
/// @DnDArgument : "var" "global.Is_frozen"
/// @DnDArgument : "value" "1"
if(global.Is_frozen == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B83A17F
	/// @DnDParent : 62ECF5B1
	/// @DnDArgument : "expr" "score + 100"
	/// @DnDArgument : "var" "score"
	score = score + 100;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 42B74C82
	/// @DnDApplyTo : other
	/// @DnDParent : 62ECF5B1
	/// @DnDArgument : "x" "383"
	/// @DnDArgument : "y" "383"
	with(other) {
	x = 383;
	y = 383;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 07A4E001
	/// @DnDApplyTo : other
	/// @DnDParent : 62ECF5B1
	/// @DnDArgument : "direction" "90"
	with(other) {
	direction = 90;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4ABB2DAA
	/// @DnDApplyTo : other
	/// @DnDParent : 62ECF5B1
	/// @DnDArgument : "speed" "2"
	with(other) speed = 2;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4ADBB645
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48A6DC57
	/// @DnDParent : 4ADBB645
	/// @DnDArgument : "var" "global.Is_dying"
	if(global.Is_dying == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0593D4FC
		/// @DnDParent : 48A6DC57
		/// @DnDArgument : "expr" "lives - 1"
		/// @DnDArgument : "var" "lives"
		lives = lives - 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7AD49A55
		/// @DnDParent : 48A6DC57
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "global.Is_dying"
		global.Is_dying = 1;
	
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 5C1FCBAE
		/// @DnDParent : 48A6DC57
		/// @DnDArgument : "soundid" "PacDies_snd"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "soundid" "PacDies_snd"
		var l5C1FCBAE_0 = PacDies_snd;
		if (!audio_is_playing(l5C1FCBAE_0))
		{
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 0D2AE794
			/// @DnDParent : 5C1FCBAE
			speed = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 66D96FFD
			/// @DnDParent : 5C1FCBAE
			/// @DnDArgument : "spriteind" "Pacman_dies"
			/// @DnDSaveInfo : "spriteind" "Pacman_dies"
			sprite_index = Pacman_dies;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 1EEF46AD
			/// @DnDParent : 5C1FCBAE
			/// @DnDArgument : "soundid" "PacDies_snd"
			/// @DnDSaveInfo : "soundid" "PacDies_snd"
			audio_play_sound(PacDies_snd, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 4A6FA1A6
			/// @DnDParent : 5C1FCBAE
			/// @DnDArgument : "steps" "60"
			/// @DnDArgument : "steps_relative" "1"
			/// @DnDArgument : "alarm" "1"
			alarm_set(1, 60 + alarm_get(1));
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 468B6F46
		/// @DnDParent : 48A6DC57
		/// @DnDArgument : "var" "lives"
		if(lives == 0)
		{
			/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 050BC6FE
			/// @DnDParent : 468B6F46
			/// @DnDArgument : "room" "Room_GameOver"
			/// @DnDSaveInfo : "room" "Room_GameOver"
			room_goto(Room_GameOver);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5C852445
		/// @DnDParent : 48A6DC57
		else
		{
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 37C05AF5
			/// @DnDParent : 5C852445
			/// @DnDArgument : "steps" "75"
			/// @DnDArgument : "alarm" "1"
			alarm_set(1, 75);
		}
	}
}