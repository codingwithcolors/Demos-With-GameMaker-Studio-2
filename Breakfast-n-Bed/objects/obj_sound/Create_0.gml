/// @description Insert description here
// You can write your code in this editor

if room == rm_title
{
	audio_play_sound(snd_intro, 1, false)
}

else if room == rm_main
{
	audio_stop_sound(snd_good_ending)
	audio_stop_sound(snd_bad_ending)
	audio_stop_sound(snd_ok_ending)
	audio_stop_sound(snd_best_ending)
	audio_stop_sound(snd_intro)
	audio_play_sound(snd_main, 1, false)
}

if room == rm_grilledcheese_ending
{
	audio_stop_sound(snd_main)
	audio_play_sound(snd_best_ending, 1, false)
}

if room == rm_blt_ending
{
	audio_stop_sound(snd_main)
	audio_play_sound(snd_good_ending, 1, false)
}

if room == rm_elvis_ending
{
	audio_stop_sound(snd_main)
	audio_play_sound(snd_good_ending, 1, false)
}

if room == rm_pbj_ending
{
	audio_stop_sound(snd_main)
	audio_play_sound(snd_good_ending, 1, false)
}
if room == rm_ok_ending
{
	audio_stop_sound(snd_main)
	audio_play_sound(snd_ok_ending, 1, false)
}

if room == rm_everything_ending
{
	audio_stop_sound(snd_main)
	audio_play_sound(snd_ok_ending, 1, false)
}

if room == rm_nothing_ending
{
	audio_stop_sound(snd_main)
	audio_play_sound(snd_bad_ending, 1, false)
}

if room == rm_rat_ending
{
	audio_stop_sound(snd_main)
	audio_play_sound(snd_bad_ending, 1, false)
}