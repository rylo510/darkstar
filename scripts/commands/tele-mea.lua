---------------------------------------------------------------------------------------------------
-- func: tele-mea
-- desc: Teleports player to crag of mea
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

    player:PrintToPlayer("Teleport-Mea Initiated");
    player:addStatusEffectEx(EFFECT_TELEPORT,0,TELEPORT_MEA,0,4.7);
end