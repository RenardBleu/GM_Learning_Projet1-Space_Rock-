/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 7131BF65
event_inherited();

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 4486A3D7
/// @DnDArgument : "obj" "obj_control"
/// @DnDSaveInfo : "obj" "obj_control"
var l4486A3D7_0 = false;l4486A3D7_0 = instance_exists(obj_control);if(l4486A3D7_0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6D51B187
	/// @DnDApplyTo : obj_control
	/// @DnDParent : 4486A3D7
	with(obj_control) instance_destroy();}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2A356DD2
else{	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 31BECD5B
	/// @DnDParent : 2A356DD2
	/// @DnDArgument : "xpos" "room_width / 2"
	/// @DnDArgument : "ypos" "room_height - 100"
	/// @DnDArgument : "objectid" "obj_control"
	/// @DnDSaveInfo : "objectid" "obj_control"
	instance_create_layer(room_width / 2, room_height - 100, "Instances", obj_control);}