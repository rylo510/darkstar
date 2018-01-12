---------------------------------------------------------------------------------------------------
-- func: showtoys
-- desc: Shows a shop for random things
---------------------------------------------------------------------------------------------------
package.loaded["scripts/globals/fateshand"] = nil;
require("scripts/globals/fateshand");

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    if ( hasEnmityNearby(player) == 1 ) then
        player:PrintToPlayer("Cannot execute command while in battle!");
        return
    end

    player:PrintToPlayer("Not all items have been verified. Please report non-working items.");
    
    stock = {
            17585,10000,   -- Fed. Signet Staff
            17584,10000,   -- Rep. Signet Staff
            17583,10000,   -- Kingdom Signet Staff
            13179,15000,   -- Kgd. Stable Collar
            13180,15000,   -- Rep. Stable Medal
            13181,15000,   -- Fed. Stable Scarf
            16039,20000,   -- Kingdom Earring
            16040,20000,   -- Republic Earring
            16041,20000,   -- Federation Earring
            16043,21000,   -- Selbina Earring
            16044,21000,   -- Mhaura Earring
            16042,23000,   -- Duchy Earring
            16045,23000,   -- Rabao Earring
            16046,23000,   -- Kazham Earring
            16047,24000,   -- Norg Earring
            16048,24000,   -- Safehold Earring
            16049,24000,   -- Empire Earring
            16050,26000,   -- Nashmau Earring
            15769,30000,   -- Olduum Ring
            14672,40000,   -- Tavnazian Ring
            14657,10000,   -- Dcl.Grd. Ring
            15542, 4000,   -- Return Ring
            15541, 8000,   -- Homing Ring
            15212,20000,   -- Stars Cap
            15213,20000,   -- Laurel Crown
            16118, 500,    -- Moogle Cap
            16119,1000,    -- Nomad Cap
            11538,1,       -- Nexus Cape
            11290,5000,    -- Tidal Talisman
            10385,  40,    -- Cumulus Masque +1
            18879, 500,    -- Roundsey Wand
            11273, 200,    -- Custom Gilet +1
            11274, 200,    -- Custom Top +1
            11275, 200,    -- Magna Gilet +1
            11276, 200,    -- Magna Top +1
            11279, 200,    -- Savage Top +1
            11280, 200,    -- Elder Gilet +1
            11277, 200,    -- Wonder Maillot +1
            11278, 200,    -- Wonder Top +1            
            14810, 500,    -- Signal Pearl
            15533,5000,    -- Chocobo Whistle
            10812, 500,    -- Choco. Shield +1
            16183, 500,    -- Nomad Mog. Shield
            10429, 100,    -- Moogle Masque
            10250, 100,    -- Moogle Suit
            18401, 200,    -- Moogle Rod
            10809, 100,    -- Moogle Guard
            17588,40,      -- Treat Staff II
            18103,20,      -- Pitch Fork
            10875,20,      -- Snowman Cap
            10447,20,      -- Pyracmon Cap
            11491,20,      -- S. Bunny Hat +1
            13916,20,      -- Pumpkin Head
            16144,20,      -- Sol Cap
            16145,20,      -- Lunar Cap
            11500,20,      -- Chocobo Beret
            11811,1,       -- Destrier Beret
            11482,100000,  -- Eyepatch
            10807, 100,    -- Mandraguard
            10808, 100,    -- Janus Guard
            11853, 100,    -- Novennial Coat
            11956, 100,    -- Novennial Hose
            11854, 100,    -- Novennial Dress
            11957, 100,    -- Novennial Boots
            11309, 200,    -- Benedight Coat
            16364, 200,    -- Benedight Hose
            16007,1000,    -- Protect Earring
            11403, 500,    -- Talaria
            10383,  40,    -- Dream Mittens +1
            15698,15000,   -- Sneaking Boots
            18166, 200,    -- Happy Egg
        }
    showShop(player, STATIC, stock);
end