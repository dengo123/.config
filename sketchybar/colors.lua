-- Colors for SketchyBar

return {
	black = "#FF2f383e",
	white = "#FFd3c6aa",
	grey = "#FF7e7666",

	red = "#FFe67e80",
	green = "#FFa7c080",
	blue = "#FF7fbbb3",
	yellow = "#FFdbbc7f",
	orange = "#FFe69875",
	magenta = "#FFd699b6",
	cyan = "#FF83c092",

	bar = {
		bg = "#FF22282c",
		border = "#FF2f383e",
	},
	popup = {
		bg = "#FF4e7357",
		border = "#FF7e7666",
	},

	bg1 = "#FF4c706b",
	bg2 = "#FFb2d6d1",

	with_alpha = function(color, alpha)
		if alpha > 1.0 or alpha < 0.0 then
			return color
		end
		return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
	end,
}
