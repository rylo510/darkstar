---------------------------------------------------------------------------------------------------
-- func: tele-dem
-- desc: Teleports player to crag of dem
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    player:PrintToPlayer("Teleport-Dem Initiated");
    player:addStatusEffectEx(EFFECT_TELEPORT,0,TELEPORT_DEM,0,4.7);
end