/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 708CBA00
/// @DnDApplyTo : {StartBottom_obj}
var l708CBA00_0;
with(StartBottom_obj) l708CBA00_0 = mouse_check_button(mb_left);
if (l708CBA00_0)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 1932FC5F
	/// @DnDParent : 708CBA00
	/// @DnDArgument : "room" "Room1"
	/// @DnDSaveInfo : "room" "Room1"
	room_goto(Room1);
}