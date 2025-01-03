-- Colors for SketchyBar

return {
	black = 0xff2f383e,
	white = 0xffd3c6aa,
	grey = 0xff7e7666,

	red = 0xffe67e80,
	green = 0xffa7c080,
	blue = 0xff7fbbb3,
	yellow = 0xffdbbc7f,
	orange = 0xffe69875,
	magenta = 0xffd699b6,
	cyan = 0xff83c092,

	bar = {
		bg = 0xff22282c,
		border = 0xff2f383e,
	},
	popup = {
		bg = 0xff4e7357,
		border = 0xff7e7666,
	},

	bg1 = 0xff4c706b,
	bg2 = 0xffb2d6d1,

	with_alpha = function(color, alpha)
		if alpha > 1.0 or alpha < 0.0 then
			return color
		end
		return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
	end,
}

