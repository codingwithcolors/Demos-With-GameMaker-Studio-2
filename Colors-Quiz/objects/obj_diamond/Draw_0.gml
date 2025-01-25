/// @description Insert description here
// You can write your code in this editor

shader_set(sh_rainbow);

shader_set_uniform_f(uni_add, add);

shader_set_uniform_f(uni_time, current_time / 2000);

draw_self();

shader_reset();

