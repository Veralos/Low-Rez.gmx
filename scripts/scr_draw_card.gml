var draw_x = argument0;
var draw_y = argument1;
var number = argument2;
var suit = argument3;

draw_set_font(fnt_3x4);

if (suit < 2) {
    draw_set_color(c_black);
}
else {
    draw_set_color(c_red);
}

draw_sprite(spr_card, 0, draw_x, draw_y);
draw_sprite(spr_symbol, suit, draw_x + 6, draw_y + 8);
draw_set_halign(0);
draw_text(draw_x + 1, draw_y, number);
draw_set_halign(2);
draw_text(draw_x + 12, draw_y + 10, number);
