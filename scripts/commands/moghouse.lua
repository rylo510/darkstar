---------------------------------------------------------------------------------------------------
-- func: moghouse
-- desc: Shows the player's mog house menu
-- SQL: UPDATE zone_settings SET misc = misc + 32;
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player,npc)
    --if (player:getEnmityList() == nil) then
        player:PrintToPlayer("Mog House remote access is temporarily disabled.");
    --else
        --player:sendMenu(1);
    --end
end