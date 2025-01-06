/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 004E4662
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "var" "powerup"
powerup = 3;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0400D211
/// @DnDArgument : "steps" "10 * 60"
alarm_set(0, 10 * 60);

/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 2DDAA1CE
/// @DnDArgument : "alpha" "0.5"
image_alpha = 0.5;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0EFE20F7
/// @DnDApplyTo : other
with(other) instance_destroy();