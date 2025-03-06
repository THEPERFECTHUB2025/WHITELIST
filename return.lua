return {
    -- ESP Variables
    ESP = {
        enabled = false,
        drawings = {},
        distanceTexts = {},
        maxDistance = 250,
        teamCheckEnabled = false
    },

    -- Aimbot Variables
    Aimbot = {
        enabled = false,
        mode = "Toggle",
        smoothFactor = 0.1,
        predictionMultiplier = 0.1,
        targetPart = "Head",
        maxDistance = 180,
        currentTarget = nil
    },

    -- Movement Variables
    Movement = {
        flyEnabled = false,
        flyAllowed = false,
        flySpeed = 10,
        noclipEnabled = false,
        speedEnabled = false,
        speedValue = 16
    },

    -- Weapon Variables
    Weapon = {
        rainbowEnabled = false,
        laserEnabled = false,
        currentWeapon = nil,
        selectedWrap = nil
    },

    -- Settings
    Settings = {
        Toggles = {},
        Sliders = {},
        Keybinds = {}
    }
}
