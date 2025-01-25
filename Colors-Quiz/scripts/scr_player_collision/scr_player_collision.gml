///Player collision

function scr_player_collision()
{
//Put player back in valid space if overlapping a collision volume
if (x_axis != 0 || y_axis != 0)
{
	//Look to see if right side of player collision overlaps with a collision volume
	var t1 = 0;
	var t2 = 0;
	var t3 = 0;
	
	if (x_axis > 0)
	{
		t1 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top);
		t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom);
		t3 = tilemap_get_at_pixel(tilemap, bbox_right, y);
	
	
	if (t1 != 0 || t2 != 0 || t3 != 0)
	{
		//show_debug_message("Collision");
		//Forces player back on the x to a 32 pixel boundary
		// of the right hand side collision volume. Then
		// adjust the positio to the location of the origin.
		x = ((bbox_right & ~31) -1) - sprite_bbox_right;
		}
	}
	
	//Look to see if left side of player collision overlaps with a collision tile
else if (x_axis<0)
{
   t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top);
   t2 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom);
   t3 = tilemap_get_at_pixel(tilemap, bbox_left, y);

   if (t1 != 0 || t2 != 0 || t3 != 0)
   {
        //Forces player back on the x to a 32 pixel boundary
        // of the right hand side collision volume. Then
        // adjust the position to the location of the origin
            x = (((bbox_left + 32) & ~31)-1) - sprite_bbox_left;
    }
}

//Look to see if bottom side of player collision overlaps with a collision tile
else if (y_axis > 0)
{
   t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom);
   t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom);
   t3 = tilemap_get_at_pixel(tilemap, x, bbox_bottom);

   if (t1 != 0 || t2 != 0 || t3 != 0)
   {
      //Forces player back on the x to a 32 pixel boundary
      // of the right hand side collision volume. Then
      // adjust the position to the location of the origin
      y = ((bbox_bottom & ~31) -1 ) - sprite_bbox_bottom;
   }
}

//Look to see if left side of player collision overlaps with a collision tile
else if (y_axis<0)
{
   t1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_top);
   t2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_top);
   t3 = tilemap_get_at_pixel(tilemap, x, bbox_top);

   if (t1 != 0 || t2 != 0 || t3 != 0)
   {
      //Forces player back on the x to a 32 pixel boundary
      // of the right hand side collision volume. Then
      // adjust the position to the location of the origin
      y = (((bbox_top + 32) & ~31)) - sprite_bbox_top;
   }
}
}
}