/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 23E073E8
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "var" "powerup"
powerup = 2;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 284EE9FB
/// @DnDArgument : "steps" "10 * 60"
alarm_set(0, 10 * 60);

/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 000BBB91
/// @DnDArgument : "alpha" "0.5"
image_alpha = 0.5;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2BE24E75
/// @DnDApplyTo : other
with(other) instance_destroy();