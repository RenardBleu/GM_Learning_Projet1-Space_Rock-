/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 1C9200CC
event_inherited();

/// @DnDAction : YoYo Games.Files.If_File_Exists
/// @DnDVersion : 1
/// @DnDHash : 1A5C2E0A
/// @DnDArgument : "file" ""save.dat""
var l1A5C2E0A_0 = file_exists("save.dat");
	/// @DnDVersion : 1
	/// @DnDHash : 0BD924BD
	/// @DnDParent : 1A5C2E0A
	game_load("save.dat");