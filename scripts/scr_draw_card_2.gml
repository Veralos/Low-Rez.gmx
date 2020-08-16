var draw_x = argument0;
var draw_y = argument1;
var card = argument2;

draw_set_font(fnt_3x4);
draw_set_color(c_black);

draw_sprite(spr_card2, card.element, draw_x, draw_y);

draw_set_halign(1);
draw_set_valign(1);

for (var i = 0; i < card.cost; i++) {
    draw_sprite_ext(spr_cost, 0, draw_x - 5, draw_y - 5 + 5 * i, 1, 1, 0, c_black, 1);
}

for (var i = 0; i < array_length_1d(card.effects); i++) {
    draw_sprite_ext(spr_effect, card.effects[i], draw_x - 1, draw_y - 5 + 5 * i, 1, 1, 0, c_black, 1);
    draw_text(draw_x + 4, draw_y - 5 + 5 * i, card.values[i]);
}
