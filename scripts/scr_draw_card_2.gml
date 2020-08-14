var draw_x = argument0;
var draw_y = argument1;
var card = argument2;

draw_set_font(fnt_3x4);
draw_set_color(c_black);

draw_sprite(spr_card2, card.element, draw_x, draw_y);

draw_set_halign(0);
draw_set_valign(0);

for (var i = 0; i < card.cost; i++) {
    draw_sprite(spr_cost, 0, draw_x + 1, draw_y + 1 + 5 * i);
}

for (var i = 0; i < array_length_1d(card.effects); i++) {
    draw_sprite(spr_deal, card.effects[i], draw_x + 3, draw_y + 1 + 5 * i);
    draw_text(draw_x + 8, draw_y + 5 * i, card.values[i]);
}
