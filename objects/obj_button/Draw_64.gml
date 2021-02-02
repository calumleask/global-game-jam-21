/// @description

draw_set_color (merge_color(back_color, back_hover_color, hover));

draw_roundrect(x - width * 0.5, y - height * 0.5, x + width * 0.5, y + height * 0.5, 0);

draw_set_font(fnt_bloody_medium);
draw_set_color (merge_color(text_color, text_hover_color, hover));
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, text);
