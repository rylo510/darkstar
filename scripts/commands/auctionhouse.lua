---------------------------------------------------------------------------------------------------
-- func: auctionhouse
-- desc: Shows the Auction House menu
---------------------------------------------------------------------------------------------------


cmdprops =
{
    permission = 0,
    parameters = "iiii"
};
function onTrigger(player)
   player:sendMenu(3);
end