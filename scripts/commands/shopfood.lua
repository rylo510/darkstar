---------------------------------------------------------------------------------------------------
-- func: shopfood
-- desc: Shows a shop for food
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

    stock = {
            4512,   80,     -- Vampire Juice
            4303,   80,     -- Persikos Au Lait
            4488,   50,     -- Jack-O-Lantern
            5644,   50,     -- Jack-O'-Pie
            4350,  900,    -- Dragon Steak
            5163,  300,    -- Sole Sushi +1
            5162,  280,    -- Squid Sushi +1
            4339,  250,    -- Rolanberry Pie +1
            5681,  150,    -- Cupid Chocolate
        }
    showShop(player, STATIC, stock);
end