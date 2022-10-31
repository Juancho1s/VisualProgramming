/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 0ED21BBD
/// @DnDArgument : "soundid" "Pellet_snd"
/// @DnDSaveInfo : "soundid" "Pellet_snd"
audio_play_sound(Pellet_snd, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 427C0863
/// @DnDArgument : "expr" "score + 50"
/// @DnDArgument : "var" "score"
score = score + 50;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 14070FAC
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "global.Is_frozen"
global.Is_frozen = 1;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 12620745
/// @DnDApplyTo : {Blue_obj}
/// @DnDArgument : "spriteind" "Froz"
/// @DnDSaveInfo : "spriteind" "Froz"
with(Blue_obj) {
sprite_index = Froz;
image_index = 0;
}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 7355BB64
/// @DnDApplyTo : {Orange_obj}
/// @DnDArgument : "spriteind" "Froz"
/// @DnDSaveInfo : "spriteind" "Froz"
with(Orange_obj) {
sprite_index = Froz;
image_index = 0;
}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 60513802
/// @DnDApplyTo : {Pink_obj}
/// @DnDArgument : "spriteind" "Froz"
/// @DnDSaveInfo : "spriteind" "Froz"
with(Pink_obj) {
sprite_index = Froz;
image_index = 0;
}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 38720541
/// @DnDApplyTo : {Red_obj}
/// @DnDArgument : "spriteind" "Froz"
/// @DnDSaveInfo : "spriteind" "Froz"
with(Red_obj) {
sprite_index = Froz;
image_index = 0;
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 76FF33FA
/// @DnDApplyTo : other
/// @DnDArgument : "speed" "1"
with(other) speed = 1;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0DC7C621
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 1D4832FB
/// @DnDApplyTo : all
/// @DnDArgument : "steps" "250"
with(all) {
alarm_set(0, 250);

}