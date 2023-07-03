/// @description Show camera boundaries on Debug
if global.DebugGUIOn
{
	draw_self();
	draw_set_color(c_lime);
	draw_line_width(oGame.lastBattleAreaX,0,oGame.lastBattleAreaX,room_height,2);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text(x, y - 30, string(x));
	draw_text(x, y - 50, string("x0:" + string(oGame.lastBattleAreaX) + "|x1:" + string(oGame.lastBattleAreaX + oGame.lastBattleAreaWidth)));
	draw_set_halign(fa_left);
}
