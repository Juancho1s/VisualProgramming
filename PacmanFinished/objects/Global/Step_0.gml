/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 56B9A99B
/// @DnDArgument : "var" "global.littDots"
/// @DnDArgument : "value" "288"
if(global.littDots == 288)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 72C5214D
	/// @DnDApplyTo : {Pacman_obj}
	/// @DnDParent : 56B9A99B
	with(Pacman_obj) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 305B626F
	/// @DnDApplyTo : {Blue_obj}
	/// @DnDParent : 56B9A99B
	with(Blue_obj) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 584AA602
	/// @DnDApplyTo : {Orange_obj}
	/// @DnDParent : 56B9A99B
	with(Orange_obj) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 76CEA546
	/// @DnDApplyTo : {Pink_obj}
	/// @DnDParent : 56B9A99B
	with(Pink_obj) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 477BA220
	/// @DnDApplyTo : {Red_obj}
	/// @DnDParent : 56B9A99B
	with(Red_obj) instance_destroy();

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 76AE1EAC
	/// @DnDParent : 56B9A99B
	/// @DnDArgument : "room" "Win"
	/// @DnDSaveInfo : "room" "Win"
	room_goto(Win);
}