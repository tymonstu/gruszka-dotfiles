--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

hl.layer_rule({
    name = "rofi-rules",
    match = { namespace = "rofi" },

    ignore_alpha = 0,
    blur = true,
    dim_around = true,
})

hl.window_rule({
    name = "satty-center",
    match = { class = "com.gabm.satty" },

    float = true,
    move = {"(window_w*0.5)", "(window_h*0.5)"},
    border_size = 0,
})

hl.window_rule({
    name = "pavucontrol-popup",
    match = { class = "org.pulseaudio.pavucontrol" },

    float = true,
    move = {"(window_w*0.5) + 600", "(window_h*0.5) + 200"},
    border_size = 0,
    size = {800, 600},
})

hl.window_rule({
    name = "godot-center-1",
    match = { initial_class = "Godot" },

    float = true,
    move = {"(window_w*0.5)", "(window_h*0.5)"},
    border_size = 0,
})

hl.window_rule({
    name = "godot-center-2",
    match = { initial_title = "Godot" },

    float = true,
    move = {"(window_w*0.5)", "(window_h*0.5)"},
    border_size = 0,
})

hl.layer_rule({
    name = "mako-rules",
    match = { namespace = "gtk-layer-shell" },

    blur = true,
})
