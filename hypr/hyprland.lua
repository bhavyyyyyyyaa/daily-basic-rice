require('modules.monitors')
require('modules.binds')
require('modules.autostart')
require('modules.env')
require('modules.decorations')
require('modules.layout')
require('modules.misc')
require('modules.input')
require('modules.windowrules')





















-- Ref https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- "Smart gaps" / "No gaps when only"
-- uncomment all if you wish to use that.
-- hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
-- hl.workspace_rule({ workspace = "f[1]",   gaps_out = 0, gaps_in = 0 })
-- hl.window_rule({
--     name  = "no-gaps-wtv1",
--     match = { float = false, workspace = "w[tv1]" },
--     border_size = 0,
--     rounding    = 0,
-- })
-- hl.window_rule({
--     name  = "no-gaps-f1",
--     match = { float = false, workspace = "f[1]" },
--     border_size = 0,
--     rounding    = 0,
-- })












-- Tide Island shortcuts: begin (managed by Tide Island Config App).
-- Empty shortcuts are disabled and intentionally omitted.
hl.bind("SUPER + TAB", hl.dsp.exec_cmd("/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call overview toggle"))
hl.bind("SUPER + right", hl.dsp.exec_cmd("/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call tide swipeRight"))
hl.bind("SUPER + left", hl.dsp.exec_cmd("/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call tide swipeLeft"))
hl.bind("SUPER + down", hl.dsp.exec_cmd("/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call tide showClock"))
hl.bind("SUPER + SHIFT + T", hl.dsp.exec_cmd("/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call tide showTimer"))
hl.bind("SUPER + SHIFT + M", hl.dsp.exec_cmd("/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call tide togglePlayer"))
hl.bind("SUPER + C", hl.dsp.exec_cmd("/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call tide toggleControlCenter"))
hl.bind("SUPER + P", hl.dsp.exec_cmd("/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call tide togglePowerMenu"))
hl.bind("SUPER + N", hl.dsp.exec_cmd("/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call tide toggleNotificationCenter"))
hl.bind("SUPER + W", hl.dsp.exec_cmd("/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call tide toggleWallpaperPicker"))
hl.bind("SUPER + A", hl.dsp.exec_cmd("/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call tide toggleApplicationLauncher"))
hl.bind("SUPER + O", hl.dsp.exec_cmd("/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call tide toggleFileShelf"))
hl.bind("SUPER + SHIFT + V", hl.dsp.exec_cmd("/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call tide toggleClipboard"))
hl.bind("SUPER + E", hl.dsp.exec_cmd("/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call tide toggleWeather"))
hl.bind("SUPER + K", hl.dsp.exec_cmd("/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call tide toggleCalendar"))
hl.bind("SUPER + F", hl.dsp.exec_cmd("/usr/bin/quickshell ipc --any-display -p /usr/share/tide-island call island toggle"))
-- Tide Island shortcuts: end.
