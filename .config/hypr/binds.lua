local ipc = "noctalia msg "
local mainMod = "SUPER "


hl.bind("SUPER + RETURN", hl.dsp.exec_cmd("kitty"));
hl.bind(mainMod .. "+ E", hl.dsp.exec_cmd("dolphin"));
hl.bind(mainMod .. "+ B", hl.dsp.exec_cmd("firefox"));
hl.bind(mainMod .. "+ SHIFT + S", hl.dsp.exec_cmd("hyprshot -m region --clipboard-only"));
hl.bind("SUPER + Q", hl.dsp.window.close());
hl.bind("SUPER + T", hl.dsp.window.float());
hl.bind("SUPER + F", hl.dsp.window.fullscreen());
hl.bind("SUPER + P", hl.dsp.window.pseudo());

for i = 1, 10 do
  hl.bind("SUPER + " .. i % 10, hl.dsp.focus({ workspace = i }))
end
hl.bind("SUPER + V", hl.dsp.workspace.toggle_special("S"));

for i = 1, 10 do
  hl.bind("SUPER + SHIFT + " .. i % 10, hl.dsp.window.move({ workspace = i, follow = true }))
end
hl.bind("SUPER + SHIFT + V", hl.dsp.window.move({ workspace = "special:S" }));


hl.bind(mainMod .. " + LEFT", hl.dsp.focus({ direction = "left" }));
hl.bind(mainMod .. " + RIGHT", hl.dsp.focus({ direction = "right" }));
hl.bind(mainMod .. " + UP", hl.dsp.focus({ direction = "up" }));
hl.bind(mainMod .. " + DOWN", hl.dsp.focus({ direction = "down" }));

hl.bind("SUPER + mouse:272", hl.dsp.window.drag());
hl.bind("SUPER + mouse:273", hl.dsp.window.resize());


hl.bind("SUPER + R", hl.dsp.exec_cmd(ipc .. "panel-toggle launcher"))
hl.bind("SUPER + ESCAPE", hl.dsp.exec_cmd(ipc .. "panel-toggle control-center"))
hl.bind("SUPER + COMMA", hl.dsp.exec_cmd(ipc .. "settings-toggle"))
hl.bind("ALT + Tab", hl.dsp.exec_cmd(ipc .. "window-switcher"))

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. "volume-up"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. "volume-down"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. "volume-mute"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. "brightness-up"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. "brightness-down"))
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd(ipc .. "mic-mute"))
