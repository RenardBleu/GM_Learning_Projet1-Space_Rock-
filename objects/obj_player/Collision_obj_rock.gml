/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3C961A1D
/// @DnDArgument : "var" "powerup"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "2"
if(!(powerup == 2)){	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 53EB6F36
	/// @DnDParent : 3C961A1D
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "type" "3"
	/// @DnDArgument : "where" "1"
	/// @DnDArgument : "size" "1"
	effect_create_above(3, x + 0, y + 0, 1, $FFFFFF & $ffffff);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6BDE4008
	/// @DnDParent : 3C961A1D
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 7128902F
	/// @DnDApplyTo : {obj_game}
	/// @DnDParent : 3C961A1D
	/// @DnDArgument : "steps" "120"
	with(obj_game) {
	alarm_set(0, 120);
	
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 3FC9DA41
	/// @DnDParent : 3C961A1D
	/// @DnDArgument : "soundid" "snd_lose"
	/// @DnDArgument : "gain" "2.0"
	/// @DnDSaveInfo : "soundid" "snd_lose"
	audio_play_sound(snd_lose, 0, 0, 2.0, undefined, 1.0);}