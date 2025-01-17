/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3C961A1D
/// @DnDArgument : "var" "powerup"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "2"
if(!(powerup == 2)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 344868E7
	/// @DnDParent : 3C961A1D
	/// @DnDArgument : "expr" "powerup"
	/// @DnDArgument : "var" "powerup_preview"
	powerup_preview = powerup;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 568FA004
	/// @DnDInput : 2
	/// @DnDParent : 3C961A1D
	/// @DnDArgument : "expr" "health-20"
	/// @DnDArgument : "expr_1" "2"
	/// @DnDArgument : "var" "health"
	/// @DnDArgument : "var_1" "powerup"
	health = health-20;
	powerup = 2;

	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 038375F1
	/// @DnDParent : 3C961A1D
	/// @DnDArgument : "health" "health"
	__dnd_health = real(health);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 52FDA680
	/// @DnDApplyTo : {obj_game}
	/// @DnDParent : 3C961A1D
	/// @DnDArgument : "steps" "120"
	/// @DnDArgument : "alarm" "1"
	with(obj_game) {
	alarm_set(1, 120);
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 26513C36
	/// @DnDParent : 3C961A1D
	/// @DnDArgument : "var" "health"
	if(health == 0){	/// @DnDAction : YoYo Games.Particles.Effect
		/// @DnDVersion : 1
		/// @DnDHash : 53EB6F36
		/// @DnDParent : 26513C36
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "type" "3"
		/// @DnDArgument : "where" "1"
		/// @DnDArgument : "size" "1"
		effect_create_above(3, x + 0, y + 0, 1, $FFFFFF & $ffffff);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6BDE4008
		/// @DnDParent : 26513C36
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4BCFDEA4
		/// @DnDParent : 26513C36
		/// @DnDArgument : "var" "obj_game.level"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "global.level_last"
		if(obj_game.level >= global.level_last){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 317F9097
			/// @DnDParent : 4BCFDEA4
			/// @DnDArgument : "var" "obj_game.level"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "global.level_last"
			if(obj_game.level >= global.level_last){	/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 7FD57B9C
				/// @DnDParent : 317F9097
				/// @DnDArgument : "value" "obj_game.level"
				/// @DnDArgument : "var" "global.level_last"
				global.level_last = obj_game.level;}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 42A0BFAB
			/// @DnDParent : 4BCFDEA4
			/// @DnDArgument : "var" "obj_game.points"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "global.score_last"
			if(obj_game.points >= global.score_last){	/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 4A7328D1
				/// @DnDParent : 42A0BFAB
				/// @DnDArgument : "value" "obj_game.points"
				/// @DnDArgument : "var" "global.score_last"
				global.score_last = obj_game.points;}}
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 7128902F
		/// @DnDApplyTo : {obj_game}
		/// @DnDParent : 26513C36
		/// @DnDArgument : "steps" "120"
		with(obj_game) {
		alarm_set(0, 120);
		
		}
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 3FC9DA41
		/// @DnDParent : 26513C36
		/// @DnDArgument : "soundid" "snd_lose"
		/// @DnDArgument : "gain" "2.0"
		/// @DnDSaveInfo : "soundid" "snd_lose"
		audio_play_sound(snd_lose, 0, 0, 2.0, undefined, 1.0);}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 639F6153
else{	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 61D374DB
	/// @DnDParent : 639F6153
	exit;}