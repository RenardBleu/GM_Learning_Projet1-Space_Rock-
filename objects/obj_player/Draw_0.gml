/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 0056085C
draw_self();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 56A0F024
/// @DnDArgument : "var" "alarm[0]"
/// @DnDArgument : "op" "2"
if(alarm[0] > 0){	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 6AC0AEAE
	/// @DnDParent : 56A0F024
	/// @DnDArgument : "halign" "fa_center"
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 48E0694A
	/// @DnDParent : 56A0F024
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-6"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "round(alarm[0] / 60)"
	draw_text(x + 0, y + -6,  + string(round(alarm[0] / 60)));

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 0928A3F3
	/// @DnDParent : 56A0F024
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);}