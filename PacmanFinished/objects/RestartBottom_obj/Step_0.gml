/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 2D7BBA39
var l2D7BBA39_0;
l2D7BBA39_0 = mouse_check_button(mb_left);
if (l2D7BBA39_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D36BBDC
	/// @DnDParent : 2D7BBA39
	/// @DnDArgument : "var" "score"
	score = 0;

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 6D30DBA6
	/// @DnDParent : 2D7BBA39
	/// @DnDArgument : "room" "Room1"
	/// @DnDSaveInfo : "room" "Room1"
	room_goto(Room1);
}