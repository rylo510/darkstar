---------------------------------------------------------------------------------------------------
-- func: shopalchemy
-- desc: Shows a crafting shop and grants craft mastery
---------------------------------------------------------------------------------------------------


cmdprops =
{
    permission = 0,
    parameters = ""
};
function onTrigger(player)
    player:addKeyItem(2008); -- Cloth Purification
    player:addKeyItem(2009); -- Cloth Ensorcellment
    player:addKeyItem(2010); -- Spinning
    player:addKeyItem(2011); -- Fletching
    player:addKeyItem(2012); -- Way

    stock = 
    {
        26406,1000, -- Kupo Shield
        26441,1000, -- Plaiter's Shield
        13946,1000, -- Magnifying Specs.
        14395,1000, -- Weaver's Apron
        3665, 1000, -- Spinning Wheel
        198,  1000, -- Gilt Tapestry
        337,  1000, -- Weaver's Sign
        3628, 1000, -- Weaver's Stall
        15447,1000, -- Weaver's Belt
        10951,1000, -- Weaver's Torque
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