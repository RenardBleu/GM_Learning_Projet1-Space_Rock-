/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5E45C7A7
/// @DnDArgument : "expr" "-delta_time / 1000000"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "powerup_time"
powerup_time += -delta_time / 1000000;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 437EB7A1
/// @DnDArgument : "key" "vk_escape"
var l437EB7A1_0;l437EB7A1_0 = keyboard_check(vk_escape);if (l437EB7A1_0){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 5B139B60
	/// @DnDParent : 437EB7A1
	/// @DnDArgument : "room" "rm_menu"
	/// @DnDSaveInfo : "room" "rm_menu"
	room_goto(rm_menu);}