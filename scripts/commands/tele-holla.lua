---------------------------------------------------------------------------------------------------
-- func: tele-holla
-- desc: Teleports player to crag of holla
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

    player:PrintToPlayer("Teleport-Holla Initiated");
    player:addStatusEffectEx(EFFECT_TELEPORT,0,TELEPORT_HOLLA,0,4.7);
end