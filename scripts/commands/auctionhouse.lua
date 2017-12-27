---------------------------------------------------------------------------------------------------
-- func: auctionhouse
-- desc: Shows the Auction House menu
---------------------------------------------------------------------------------------------------
package.loaded["scripts/globals/fateshand"] = nil;
require("scripts/globals/fateshand");

cmdprops =
{
    permission = 0,
    parameters = "iiii"
};
function onTrigger(player)
    if ( hasEnmityNearby(player) == 1 ) then
        player:PrintToPlayer("Cannot execute command while in battle!");
        return
    end

    player:sendMenu(3);
end