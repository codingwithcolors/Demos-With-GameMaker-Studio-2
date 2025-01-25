/// @description Add icon for correct key

obj_game_controller.key_collected_purple++;

//Destroy key

instance_destroy();

//Create a nice particle effect

effect_create_below(ef_firework, x + 16, y + 16, .4, c_purple);