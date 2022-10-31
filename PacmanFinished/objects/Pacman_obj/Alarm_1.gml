/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 195A39A5
/// @DnDArgument : "var" "global.Is_dying"
global.Is_dying = 0;

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 2EC3510A
/// @DnDApplyTo : {Pacman_obj}
/// @DnDArgument : "x" "383"
/// @DnDArgument : "y" "611"
with(Pacman_obj) {
x = 383;
y = 611;
}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 42E57531
/// @DnDApplyTo : {Pacman_obj}
/// @DnDArgument : "spriteind" "Pacman_spr_Right"
/// @DnDSaveInfo : "spriteind" "Pacman_spr_Right"
with(Pacman_obj) {
sprite_index = Pacman_spr_Right;
image_index = 0;
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 4D3FFB4F
/// @DnDApplyTo : {Pacman_obj}
with(Pacman_obj) speed = 0;

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 3B605AE1
/// @DnDApplyTo : {Blue_obj}
/// @DnDArgument : "x" "383"
/// @DnDArgument : "y" "383"
with(Blue_obj) {
x = 383;
y = 383;
}

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 136A17A1
/// @DnDApplyTo : {Orange_obj}
/// @DnDArgument : "x" "383"
/// @DnDArgument : "y" "383"
with(Orange_obj) {
x = 383;
y = 383;
}

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 0601BEBA
/// @DnDApplyTo : {Pink_obj}
/// @DnDArgument : "x" "383"
/// @DnDArgument : "y" "383"
with(Pink_obj) {
x = 383;
y = 383;
}

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 74D9E67C
/// @DnDApplyTo : {Red_obj}
/// @DnDArgument : "x" "383"
/// @DnDArgument : "y" "383"
with(Red_obj) {
x = 383;
y = 383;
}