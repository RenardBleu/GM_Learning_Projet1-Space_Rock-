/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 70A48F4D
/// @DnDInput : 2
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "level"
/// @DnDArgument : "var_1" "points"
level = 1;
points = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1C8C0499
/// @DnDInput : 2
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "level_first"
/// @DnDArgument : "var_1" "points_first"
level_first = 1;
points_first = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5B4CC18F
/// @DnDArgument : "var" "global.level_last"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "level_first"
if(global.level_last >= level_first){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7789A272
	/// @DnDInput : 2
	/// @DnDParent : 5B4CC18F
	/// @DnDArgument : "expr" "global.level_last"
	/// @DnDArgument : "expr_1" "global.level_last"
	/// @DnDArgument : "var" "level"
	/// @DnDArgument : "var_1" "level_first"
	level = global.level_last;
	level_first = global.level_last;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 51AC68D1
/// @DnDArgument : "var" "global.score_last"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "points"
if(global.score_last >= points){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0907B31F
	/// @DnDInput : 2
	/// @DnDParent : 51AC68D1
	/// @DnDArgument : "expr" "global.score_last"
	/// @DnDArgument : "expr_1" "global.score_last"
	/// @DnDArgument : "var" "points"
	/// @DnDArgument : "var_1" "points_first"
	points = global.score_last;
	points_first = global.score_last;}