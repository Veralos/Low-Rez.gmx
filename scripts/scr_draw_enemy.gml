var draw_x = argument0;
var draw_y = argument1;
var enemy = argument2;

draw_self();

switch (enemy.element) {
    case 0:
        draw_set_color(make_color_rgb(128, 0, 0));
        break;
    case 1:
        draw_set_color(make_color_rgb(0, 128, 0));
        break;  
    case 2:
        draw_set_color(make_color_rgb(0, 0, 128));
        break;
}
draw_set_font(fnt_3x4);
draw_sprite_ext(spr_effect, 4, draw_x - 7, draw_y + 7, 1, 1, 0, draw_get_color(), 1);
draw_text(draw_x + 2, draw_y + 7, string(enemy.hp));
draw_sprite_ext(spr_effect, 1, draw_x - 7, draw_y + 12, 1, 1, 0, draw_get_color(), 1);
draw_text(draw_x - 2, draw_y + 12, string(enemy.atk));
draw_sprite_ext(spr_effect, 2, draw_x + 3, draw_y + 12, 1, 1, 0, draw_get_color(), 1);
draw_text(draw_x + 8, draw_y + 12, string(enemy.def));
