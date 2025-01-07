/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 0C607D47
/// @DnDInput : 2
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var" "level_last"
/// @DnDArgument : "var_1" "score_last"
global.level_last = 1;
global.score_last = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5762EAA8
/// @DnDInput : 2
/// @DnDArgument : "expr" "global.level_last"
/// @DnDArgument : "expr_1" "global.score_last"
/// @DnDArgument : "var" "level"
/// @DnDArgument : "var_1" "points"
level = global.level_last;
points = global.score_last;