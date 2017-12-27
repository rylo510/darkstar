---------------------------------------------------------------------------------------------------
-- func: tele-dem
-- desc: Teleports player to crag of dem
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

    player:PrintToPlayer("Teleport-Dem Initiated");
    player:addStatusEffectEx(EFFECT_TELEPORT,0,TELEPORT_DEM,0,4.7);
end