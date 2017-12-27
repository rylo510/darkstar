---------------------------------------------------------------------------------------------------
-- func: warp
-- desc: Warps the player to their home point
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    player:PrintToPlayer("Warp Initiated...");
    player:addStatusEffectEx(EFFECT_TELEPORT,0,TELEPORT_WARP,0,1);
end