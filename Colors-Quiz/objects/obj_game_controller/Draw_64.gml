/// @description HUD for Adventure Game

//Background rectangle
draw_set_color(c_black);

//Set transparency
draw_set_alpha(.35);

draw_rectangle(0, 0, 500, 75, false);

//Set transparency back
draw_set_alpha(1);

//Set color to white
draw_set_color(c_white);

//Change from default font
draw_set_font(fnt_hud);

//Draw Keys Title
draw_text(10, 10, "Keys: ");

//Spacing for keys on hud
h_space = 90;

repeat(key_collected_red)
{
	draw_sprite(spr_red_key, 0, h_space, 12);
	h_space += 70;
}

repeat(key_collected_orange)
{
	draw_sprite(spr_orange_key, 0, h_space, 12);
	h_space += 70;
}

repeat(key_collected_yellow)
{
	draw_sprite(spr_yellow_key, 0, h_space, 12);
	h_space += 70;
}

repeat(key_collected_green)
{
	draw_sprite(spr_green_key, 0, h_space, 12);
	h_space += 70;
}

repeat(key_collected_blue)
{
	draw_sprite(spr_blue_key, 0, h_space, 12);
	h_space += 70;
}

repeat(key_collected_purple)
{
	draw_sprite(spr_purple_key, 0, h_space, 12);
	h_space += 70;
}