---------------------------------------------------------------------------------------------------
-- func: tele-holla
-- desc: Teleports player to crag of holla
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
    player:PrintToPlayer("Teleport-Holla Initiated");
    player:addStatusEffectEx(EFFECT_TELEPORT,0,TELEPORT_HOLLA,0,4.7);
end