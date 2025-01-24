/// @description Insert description here
// You can write your code in this editor

//Everything Ending
if (!instance_exists(obj_bacon) && !instance_exists(obj_banana) && !instance_exists(obj_cheese) && !instance_exists(obj_jelly) && !instance_exists(obj_lettuce) && !instance_exists(obj_peanutbutter) && !instance_exists(obj_rat) && !instance_exists(obj_tomato))
{
	room_goto(rm_everything_ending)
}

//Grilled Cheese / Mom's Favorite Ending
else if (!instance_exists(obj_cheese) && instance_exists(obj_bacon) && instance_exists(obj_banana) && instance_exists(obj_jelly) && instance_exists(obj_lettuce) && instance_exists(obj_peanutbutter) && instance_exists(obj_rat) && instance_exists(obj_tomato))
{
	room_goto(rm_grilledcheese_ending)
}

//Peanut Butter and Jelly Ending
else if (!instance_exists(obj_peanutbutter) && !instance_exists(obj_jelly) && instance_exists(obj_bacon) && instance_exists(obj_banana) && instance_exists(obj_cheese) && instance_exists(obj_lettuce) && instance_exists(obj_rat) && instance_exists(obj_tomato))
{
	room_goto(rm_pbj_ending)
}

//BLT Ending
else if (!instance_exists(obj_bacon) && !instance_exists(obj_lettuce) && !instance_exists(obj_tomato) && instance_exists(obj_banana) && instance_exists(obj_cheese) && instance_exists(obj_jelly) && instance_exists(obj_peanutbutter) && instance_exists(obj_rat))
{
	room_goto(rm_blt_ending)
}

//Elvis Ending
else if (!instance_exists(obj_banana) && !instance_exists(obj_peanutbutter) && !instance_exists(obj_bacon) && instance_exists(obj_cheese) && instance_exists(obj_jelly) && instance_exists(obj_lettuce) && instance_exists(obj_rat) && instance_exists(obj_tomato))
{
	room_goto(rm_elvis_ending)
}

//Rat Ending
else if (!instance_exists(obj_rat))
{
	room_goto(rm_rat_ending)
}

//Nothing Ending
else if (instance_exists(obj_bacon) && instance_exists(obj_banana) && instance_exists(obj_cheese) && instance_exists(obj_jelly) && instance_exists(obj_lettuce) && instance_exists(obj_peanutbutter) && instance_exists(obj_rat) && instance_exists(obj_tomato))
{
	room_goto(rm_nothing_ending)
}

else
{
	room_goto(rm_ok_ending)
}