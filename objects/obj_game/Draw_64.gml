/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 731BF6D3
/// @DnDArgument : "x" "30"
/// @DnDArgument : "y" "20"
/// @DnDArgument : "caption" "points"
draw_text(30, 20, string(points) + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0BAEBB5B
/// @DnDArgument : "x" "30"
/// @DnDArgument : "y" "60"
/// @DnDArgument : "caption" "level"
draw_text(30, 60, string(level) + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 692966F3
/// @DnDArgument : "x" "room_width / 2"
/// @DnDArgument : "y" "20"
/// @DnDArgument : "caption" "string(6 * level) + " / " + string(rock_niv)"
draw_text(room_width / 2, 20, string(string(6 * level) + " / " + string(rock_niv)) + "");