/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 731BF6D3
/// @DnDArgument : "x" "100"
/// @DnDArgument : "y" "70"
/// @DnDArgument : "caption" ""score : \n""
/// @DnDArgument : "var" "points"
draw_text(100, 70, string("score : \n") + string(points));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0BAEBB5B
/// @DnDArgument : "x" "room_width / 2"
/// @DnDArgument : "y" "40"
/// @DnDArgument : "caption" ""niveau : " + string(level)"
draw_text(room_width / 2, 40, string("niveau : " + string(level)) + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 692966F3
/// @DnDArgument : "x" "room_width / 2"
/// @DnDArgument : "y" "90"
/// @DnDArgument : "caption" "string(6 * level) + " / " + string(rock_niv)"
draw_text(room_width / 2, 90, string(string(6 * level) + " / " + string(rock_niv)) + "");