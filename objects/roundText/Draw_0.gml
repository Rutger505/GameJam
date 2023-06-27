/// @description Insert description here
// You can write your code in this editor
 display_text = "Round 1";
if (display_text != "")
{
    var text_width = string_width(display_text);
    var xi = (room_width - text_width) / 2;
    var yi = 10; // Adjust this value to change the vertical position of the text

    draw_text(xi, yi, display_text);
}