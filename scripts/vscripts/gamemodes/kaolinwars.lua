-- Kaolin Wars
RegisterGamemode('kaolinwars', {
    -- Gamemode only has a gameplay component
    sort = GAMEMODE_PICK,

    -- Function to give out heroes
    assignHero = function(frota, ply)
        -- Change heroes
        local hero = ply:ReplaceHeroWith('npc_dota_hero_earth_spirit', 2500, 2600)
        frota:SetActiveHero(hero)

		-- Apply the build
        frota:ApplyBuild(hero, {
            [1] = 'kaolin_wars_boulder_smash',
            [2] = 'kaolin_wars_rolling_boulder',
            [3] = 'kaolin_wars_geomagnetic_grip',
        })
    end,

    -- DM Mode changed our hero
    dmNewHero = function(frota, hero)
        -- Change skills
        frota:ApplyBuild(hero, {
            [1] = 'kaolin_wars_boulder_smash',
            [2] = 'kaolin_wars_rolling_boulder',
            [3] = 'kaolin_wars_geomagnetic_grip',
        })
    end
})
