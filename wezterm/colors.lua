local wezterm = require("wezterm")

-- Hier das gewünschte Farbschema auswählen
local scheme_name = "everforest"

-- Lade das Farbschema
local success, scheme = pcall(require, "colorschemes." .. scheme_name)
if not success then
  wezterm.log_error("Farb-Schema '" .. scheme_name .. "' konnte nicht geladen werden: " .. scheme)
  scheme = {}
end

-- Zusätzliche Farbanpassungen für Tab-Bar und Fensterrahmen
scheme.tab_bar = {
  background = scheme.background,
  active_tab = {
    bg_color = scheme.cursor_bg,
    fg_color = scheme.background,
  },
  inactive_tab = {
    bg_color = scheme.brights[1],
    fg_color = scheme.foreground,
  },
  inactive_tab_hover = {
    bg_color = scheme.selection_bg,
    fg_color = scheme.background,
  },
  new_tab = {
    bg_color = scheme.brights[2],
    fg_color = scheme.cursor_fg,
  },
  new_tab_hover = {
    bg_color = scheme.cursor_bg,
    fg_color = scheme.background,
  },
}

return scheme

