local colors = {
  foreground = "#d3c6aa",
  background = "#2f383e",
  cursor_bg = "#a7c080",
  cursor_border = "#a7c080",
  cursor_fg = "#2f383e",
  selection_bg = "#7fbbb3",
  selection_fg = "#2f383e",

  ansi = {"#2f383e", "#e67e80", "#a7c080", "#dbbc7f", "#7fbbb3", "#d699b6", "#83c092", "#d3c6aa"},
  brights = {"#4f5b58", "#ef9a9a", "#c3d482", "#e6c384", "#a7c080", "#d8a8c6", "#9eaf9e", "#f8f4e3"},

  tab_bar = {
    background = "#2f383e",
    active_tab = {
      bg_color = "#83c092",
      fg_color = "#2f383e",
    },
    inactive_tab = {
      bg_color = "#4f5b58",
      fg_color = "#d3c6aa",
    },
    inactive_tab_hover = {
      bg_color = "#7fbbb3",
      fg_color = "#2f383e",
    },
    new_tab = {
      bg_color = "#4f5b58",
      fg_color = "#a7c080",
    },
    new_tab_hover = {
      bg_color = "#83c092",
      fg_color = "#2f383e",
    },
  },
}

-- Validierungsfunktion, um sicherzustellen, dass alle Tab-Bar-Felder definiert sind
local function validate_tab_bar(tab_bar)
  local defaults = {
    background = "#000000",
    active_tab = { bg_color = "#ffffff", fg_color = "#000000" },
    inactive_tab = { bg_color = "#aaaaaa", fg_color = "#555555" },
    inactive_tab_hover = { bg_color = "#888888", fg_color = "#333333" },
    new_tab = { bg_color = "#666666", fg_color = "#222222" },
    new_tab_hover = { bg_color = "#444444", fg_color = "#111111" },
  }

  for key, default_value in pairs(defaults) do
    if not tab_bar[key] then
      tab_bar[key] = default_value
    elseif type(default_value) == "table" then
      for sub_key, sub_default in pairs(default_value) do
        if not tab_bar[key][sub_key] then
          tab_bar[key][sub_key] = sub_default
        end
      end
    end
  end
end

-- Tab-Bar validieren
validate_tab_bar(colors.tab_bar)

return colors

