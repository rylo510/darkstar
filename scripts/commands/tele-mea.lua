---------------------------------------------------------------------------------------------------
-- func: tele-mea
-- desc: Teleports player to crag of mea
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    player:PrintToPlayer("Teleport-Mea Initiated");
    player:addStatusEffectEx(EFFECT_TELEPORT,0,TELEPORT_MEA,0,4.7);
end