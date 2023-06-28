try {
    display_text = "Round " + string(waveCounter);

 

    var text_width = string_width(display_text);
    x = (room_width - text_width) / 2;
    y = 10; // Adjust this value to change the vertical position of the text

 
	draw_set_font(fntLarge);
    draw_text_transformed(x, y, display_text, 0.5, 0.5, image_angle);
}
catch(error) {
}