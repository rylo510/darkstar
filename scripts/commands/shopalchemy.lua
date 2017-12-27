---------------------------------------------------------------------------------------------------
-- func: shopalchemy
-- desc: Shows a crafting shop and grants craft mastery
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
    
    player:addKeyItem(2033); -- Alchemic Purification
    player:addKeyItem(2034); -- Alchemic Ensorcellment
    player:addKeyItem(2036); -- Concoction
    player:addKeyItem(2035); -- Trituration
    player:addKeyItem(2037); -- Iatochemistry
    player:addKeyItem(2039); -- Way of the Alchemist

    stock = 
    {
        26406,1000,  -- Kupo Shield
        10954,1000,  -- Alchemst. Torque
        15450,1000,  -- Alchemist's Belt
        17058,1000,  -- Caduceus
        15825,1000,  -- Alchemist's Ring
        14398,1000,  -- Alchemist's Apron
        3674, 1000,  -- Alembic
        3633, 1000,  -- Alchmsts. Stall
        134,  1000,  -- Emeralda
        342,  1000,  -- Alchemist's Sign
        26456,1000,  -- Brewer's Shield
        28587,2000, -- Artificer's Ring
        28586,2000, -- Craftmaster's Ring
        28585,2000, -- Craftkeeper's Ring
        4238,42, -- Inferno Crystal
        4239,42, -- Glacier Crystal
        4240,42, -- Cyclone Crystal
        4241,42, -- Terra Crystal
        4242,42, -- Plasma Crystal
        4243,42, -- Torrent Crystal
        4244,42, -- Aurora Crystal
        4245,42, -- Twilight Crystal
    };

    showShop(player, STATIC, stock);

end