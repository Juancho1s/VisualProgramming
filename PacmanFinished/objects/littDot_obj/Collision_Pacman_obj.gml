/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 7EE738C5
/// @DnDArgument : "soundid" "Pellet_snd"
/// @DnDSaveInfo : "soundid" "Pellet_snd"
audio_play_sound(Pellet_snd, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0CFA3B6A
/// @DnDArgument : "expr" "global.littDots + 1"
/// @DnDArgument : "var" "global.littDots"
global.littDots = global.littDots + 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 35D18B21
/// @DnDArgument : "expr" "score + 10"
/// @DnDArgument : "var" "score"
score = score + 10;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 632586CF
instance_destroy();