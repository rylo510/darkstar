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
    player:addKeyItem(2042); -- pattiserie
    player:addKeyItem(2041); -- noodle
    player:addKeyItem(2040); -- raw
    player:addKeyItem(2043); -- stew
    player:addKeyItem(2044); -- way

    stock = 
    {
        26406,1000,  -- Kupo Shield
        3328,1000,
        3667,1000,
        15826,1000,
        137,1000,
        338,1000,
        14399,1000,
        13948,1000,
        15451,1000,
        16924,1000, -- Hocho 
        10955,1000, -- Culin. Torque
        -- 11336,1000, -- Culinarian's Smock
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