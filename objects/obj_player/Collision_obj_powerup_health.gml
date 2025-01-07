/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0B8CF5FF
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0D155EBB
/// @DnDArgument : "expr" "100"
/// @DnDArgument : "var" "health"
health = 100;

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 24E720A5
/// @DnDArgument : "health" "health"
__dnd_health = real(health);