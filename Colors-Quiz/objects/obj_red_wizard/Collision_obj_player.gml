/// @description Dialogue logic for NPC

//Welcome player on first encounter
if (scr_message_number() == 0)
{
	draw_dialogue_message(x, y, salutations, id, other.id, 32, false, 0);
}

//Loop next message
if (scr_message_number() >= 1)
{
	draw_dialogue_message(x, y, suggestions, id, other.id, 32, true, 0);
}