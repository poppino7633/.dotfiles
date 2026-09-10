local primary = "0xcba6f7"
local surface = "0x1e1e2e"
-- local secondary = "0xfab387"
-- local error = "0xf38ba8"
-- local tertiary = "0x94e2d5"
-- local surface_lowest = "0x212232"


hl.config({
  general = {
    gaps_in = 5,
    gaps_out = 10,

    border_size = 0,

    -- col.active_border = $blue,
    --col.inactive_border = rgba(595959aa),
    col = {
      active_border = { colors = { primary } },
      inactive_border = { colors = { surface } }
    },

    resize_on_border = false,

    allow_tearing = false,

    layout = "dwindle"

  },
  decoration = {
    rounding = 20,
    rounding_power = 2,
    active_opacity = 1.0,
    inactive_opacity = 0.95,

    shadow = {
      enabled = true,
      range = 4,
      render_power = 3,
      color = "0x1a1a1aee"
    },

    blur = {
      enabled = true,
      size = 3,
      passes = 2,
      popups = true,
      vibrancy = 0.1696,
    }
  },

  animations = {
    enabled = true,
  },

  input = {
    follow_mouse = 1,
    sensitivity = 0,
    touchpad = {
      natural_scroll = true,

    },
    accel_profile = "flat",
  },

  xwayland = {
    use_nearest_neighbor = true,
    force_zero_scaling = true,
  },

})

hl.device({
  name = "ps/2-logitech-mouse",
  left_handed = true,
})

hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } });
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } });
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } });
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1 } } });
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } });

hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "default" });
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.1, bezier = "easeOutQuint", style = "popin 87%" });
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.49, bezier = "linear", style = "popin 87%" });
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "almostLinear" });
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "almostLinear" });
hl.animation({ leaf = "fade", enabled = true, speed = 3.03, bezier = "quick" });
hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "easeOutQuint" });
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "easeOutQuint", style = "fade" });
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "linear", style = "fade" });
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "almostLinear" });
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear" });
hl.animation({ leaf = "workspaces", enabled = true, speed = 1.94, bezier = "almostLinear", style = "slide" });
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 1.21, bezier = "almostLinear", style = "slide" });
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 1.94, bezier = "almostLinear", style = "slide" });
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 7, bezier = "quick" });

