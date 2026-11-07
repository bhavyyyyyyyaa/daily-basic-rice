
-----------------------
---- LOOK AND FEEL ----
-----------------------

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    general = {
        gaps_in  = 8,
        gaps_out = 10,

        border_size = 1,

        col = {
            active_border   = { colors = {"rgba(cba6f744)"} },
            inactive_border = "rgba(595959aa)",
        },

        -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = false,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing = false,

    
    },

    decoration = {
        rounding       = 26,
        rounding_power = 7,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 0.85,
        inactive_opacity = 0.70,

        shadow = {
            enabled      = true,
            range        = 20,
            render_power = 3,
            color        = 0xee121212,
        },

        blur = {
            enabled   = true,
            size      = 20,
            passes    = 3,
            vibrancy  = 0.1696,
        },
    },

    animations = {
        enabled = true,
    },
})



-- macOS like animations
hl.curve("macOpen", {type = "spring", mass = 1, stiffness = 110, damping = 16})
hl.curve("macBounce", {type = "spring", mass = 1, stiffness = 80, damping = 10})
hl.curve("macSmooth", {type = "bezier", points = {{0.25, 0.1}, {0.25, 1.0}}})

hl.animation({leaf = "fadeIn", enabled = true, speed = 8, bezier = "default"})
hl.animation({leaf = "fadeOut", enabled = true, speed = 8, bezier = "default"})
hl.animation({leaf = "fadeSwitch", enabled = true, speed = 8, bezier = "default"})
hl.animation({leaf = "fadeShadow", enabled = true, speed = 8, bezier = "default"})
hl.animation({leaf = "fadeDim", enabled = true, speed = 8, bezier = "default"})
hl.animation({leaf = "fadeLayers", enabled = true, speed = 8, bezier = "default"})
hl.animation({leaf = "fadeLayersIn", enabled = true, speed = 8, bezier = "default"})
hl.animation({leaf = "fadeLayersOut", enabled = true, speed = 8, bezier = "default"})
hl.animation({leaf = "fadePopups", enabled = true, speed = 8, bezier = "default"})
hl.animation({leaf = "fadePopupsIn", enabled = true, speed = 8, bezier = "default"})
hl.animation({leaf = "fadePopupsOut", enabled = true, speed = 8, bezier = "default"})
hl.animation({leaf = "fadeDpms", enabled = true, speed = 8, bezier = "default"})

hl.animation({leaf = "windows", enabled = true, speed = 8, spring = "macOpen", style = "popin 90%"})
hl.animation({leaf = "windowsIn", enabled = true, speed = 8, spring = "macOpen", style = "popin 90%"})
hl.animation({leaf = "windowsOut", enabled = true, speed = 7, spring = "macBounce", style = "popin 90%"})
hl.animation({leaf = "windowsMove", enabled = true, speed = 5, bezier = "macSmooth", style = "slide"})

hl.animation({leaf = "border", enabled = true, speed = 1, bezier = "default"})
hl.animation({leaf = "borderangle", enabled = true, speed = 30, bezier = "default", style = "once"})
hl.animation({leaf = "fade", enabled = true, speed = 8, bezier = "default"})

hl.animation({leaf = "workspaces", enabled = true, speed = 6, bezier = "macSmooth", style = "slidefade 20%"})
hl.animation({leaf = "workspacesIn", enabled = true, speed = 6, bezier = "macSmooth", style = "slidefade 20%"})
hl.animation({leaf = "workspacesOut", enabled = true, speed = 6, bezier = "macSmooth", style = "slidefade 20%"})

hl.animation({leaf = "specialWorkspace", enabled = true, speed = 6, bezier = "macSmooth", style = "slidefade 20%"})
hl.animation({leaf = "specialWorkspaceIn", enabled = true, speed = 6, bezier = "macSmooth", style = "slidefade 20%"})
hl.animation({leaf = "specialWorkspaceOut", enabled = true, speed = 6, bezier = "macSmooth", style = "slidefade 20%"})

hl.animation({leaf = "zoomFactor", enabled = true, speed = 7, bezier = "default"})
hl.animation({leaf = "monitorAdded", enabled = true, speed = 7, bezier = "default"})
