---------------------------------------------------------------------------------------------------
-- func: moghouse
-- desc: Shows the player's mog house menu
-- SQL: UPDATE zone_settings SET misc = misc + 32;
---------------------------------------------------------------------------------------------------
package.loaded["scripts/globals/fateshand"] = nil;
require("scripts/globals/fateshand");

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player,npc)
    if ( hasEnmityNearby(player) == 1 ) then
        player:PrintToPlayer("Cannot execute command while in battle!");
        return
    end

    player:sendMenu(1);
end