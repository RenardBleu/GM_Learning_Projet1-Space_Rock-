/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 42397598
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "var" "powerup"
powerup = 3;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 06171672
/// @DnDArgument : "steps" "10 * 60"
alarm_set(0, 10 * 60);

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 03CA9127
/// @DnDArgument : "colour" "$FFCDC47B"
image_blend = $FFCDC47B & $ffffff;
image_alpha = ($FFCDC47B >> 24) / $ff;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0B8CF5FF
/// @DnDApplyTo : other
with(other) instance_destroy();