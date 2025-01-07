/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 0056085C
draw_self();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 393A695E
/// @DnDArgument : "var" "health"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "100"
if(health < 100){	/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
	/// @DnDVersion : 1
	/// @DnDHash : 78633A91
	/// @DnDParent : 393A695E
	/// @DnDArgument : "x1" "-30"
	/// @DnDArgument : "x1_relative" "1"
	/// @DnDArgument : "y1" "35"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "35"
	/// @DnDArgument : "x2_relative" "1"
	/// @DnDArgument : "y2" "45"
	/// @DnDArgument : "y2_relative" "1"
	/// @DnDArgument : "direction" "1"
	/// @DnDArgument : "backcol" "$FF191919"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;draw_healthbar(x + -30, y + 35, x + 35, y + 45, __dnd_health, $FF191919, $FFFFFF & $FFFFFF, $FFFFFF & $FFFFFF, 1, (($FF191919>>24) != 0), (($FFFFFFFF>>24) != 0));}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 56A0F024
/// @DnDArgument : "var" "alarm[0]"
/// @DnDArgument : "op" "2"
if(alarm[0] > 0){	/// @DnDAction : YoYo Games.Drawing.Draw_Value
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
	/// @DnDHash : 6AC0AEAE
	/// @DnDParent : 56A0F024
	/// @DnDArgument : "halign" "fa_center"
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 0928A3F3
	/// @DnDParent : 56A0F024
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);}