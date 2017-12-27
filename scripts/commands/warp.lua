---------------------------------------------------------------------------------------------------
-- func: warp
-- desc: Warps the player to their home point
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

    player:PrintToPlayer("Warp Initiated...");

    player:addStatusEffectEx(EFFECT_TELEPORT,0,TELEPORT_WARP,0,1);
end