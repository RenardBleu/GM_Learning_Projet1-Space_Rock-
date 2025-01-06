/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0B309B32
/// @DnDArgument : "var" "obj_game.powerup_time"
/// @DnDArgument : "op" "1"
if(obj_game.powerup_time < 0){	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 1D2798EA
	/// @DnDInput : 3
	/// @DnDParent : 0B309B32
	/// @DnDArgument : "var" "obj"
	/// @DnDArgument : "option" "obj_powerup_ghost"
	/// @DnDArgument : "option_1" "obj_powerup_spread"
	/// @DnDArgument : "option_2" "obj_powerup_freeze"
	obj = choose(obj_powerup_ghost, obj_powerup_spread, obj_powerup_freeze);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 10A1CEE3
	/// @DnDParent : 0B309B32
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj"
	instance_create_layer(x + 0, y + 0, "Instances", obj);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B6E9BF8
	/// @DnDParent : 0B309B32
	/// @DnDArgument : "expr" "20"
	/// @DnDArgument : "var" "obj_game.powerup_time"
	obj_game.powerup_time = 20;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5B680974
/// @DnDArgument : "expr" "50"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_game.points"
obj_game.points += 50;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 31DD35B8
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 13E64AF3
/// @DnDArgument : "soundid" "snd_rockdestroy"
/// @DnDSaveInfo : "soundid" "snd_rockdestroy"
audio_play_sound(snd_rockdestroy, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 2509B1E5
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "1"
effect_create_above(0, x + 0, y + 0, 1, $FFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 033FFB4C
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "max" "360"
direction = (random_range(0, 360));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3BE03CA5
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_rock_big"
if(sprite_index == spr_rock_big){	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 021819EA
	/// @DnDParent : 3BE03CA5
	/// @DnDArgument : "obj" "obj_player"
	/// @DnDSaveInfo : "obj" "obj_player"
	var l021819EA_0 = false;l021819EA_0 = instance_exists(obj_player);if(l021819EA_0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1EB34048
		/// @DnDParent : 021819EA
		/// @DnDArgument : "var" "obj_player.powerup"
		/// @DnDArgument : "value" "3"
		if(obj_player.powerup == 3){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 5E5B33B2
			/// @DnDParent : 1EB34048
			/// @DnDArgument : "spriteind" "spr_rock_small"
			/// @DnDSaveInfo : "spriteind" "spr_rock_small"
			sprite_index = spr_rock_small;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Instances.Color_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 21C168E6
			/// @DnDParent : 1EB34048
			/// @DnDArgument : "colour" "$FFCDC47B"
			image_blend = $FFCDC47B & $ffffff;
			image_alpha = ($FFCDC47B >> 24) / $ff;
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 14305CEC
			/// @DnDParent : 1EB34048
			/// @DnDArgument : "value" "0.1"
			/// @DnDArgument : "instvar" "3"
			speed = 0.1;
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 67C16AE4
			/// @DnDParent : 1EB34048
			/// @DnDArgument : "var" "rock"
			/// @DnDArgument : "function" "instance_copy"
			/// @DnDArgument : "arg" "true"
			rock = instance_copy(true);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6F44A29E
			/// @DnDParent : 1EB34048
			/// @DnDArgument : "expr" "0.1"
			/// @DnDArgument : "var" "rock.speed"
			rock.speed = 0.1;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 75E417A1
		/// @DnDParent : 021819EA
		else{	/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 5D9C1847
			/// @DnDParent : 75E417A1
			/// @DnDArgument : "spriteind" "spr_rock_small"
			/// @DnDSaveInfo : "spriteind" "spr_rock_small"
			sprite_index = spr_rock_small;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Instances.Color_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 044B867D
			/// @DnDParent : 75E417A1
			/// @DnDArgument : "colour" "$FFCDCDCD"
			image_blend = $FFCDCDCD & $ffffff;
			image_alpha = ($FFCDCDCD >> 24) / $ff;
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 32012E17
			/// @DnDParent : 75E417A1
			/// @DnDArgument : "function" "instance_copy"
			/// @DnDArgument : "arg" "true"
			instance_copy(true);}}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 496CA5D0
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4D0A6476
	/// @DnDParent : 496CA5D0
	/// @DnDArgument : "var" "instance_number(obj_rock)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "12"
	if(instance_number(obj_rock) < 12){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 01096573
		/// @DnDParent : 4D0A6476
		/// @DnDArgument : "spriteind" "spr_rock_big"
		/// @DnDSaveInfo : "spriteind" "spr_rock_big"
		sprite_index = spr_rock_big;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Color_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 5B4F2222
		/// @DnDParent : 4D0A6476
		/// @DnDArgument : "colour" "$FFCDCDCD"
		image_blend = $FFCDCDCD & $ffffff;
		image_alpha = ($FFCDCDCD >> 24) / $ff;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5C87C655
		/// @DnDParent : 4D0A6476
		/// @DnDArgument : "expr" "-100"
		/// @DnDArgument : "var" "x"
		x = -100;}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 47F82B1A
	/// @DnDParent : 496CA5D0
	else{	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 09AF8FE8
		/// @DnDParent : 47F82B1A
		instance_destroy();}}