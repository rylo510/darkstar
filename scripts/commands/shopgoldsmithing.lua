---------------------------------------------------------------------------------------------------
-- func: shopgoldsmithing
-- desc: Shows a crafting shop and grants craft mastery
---------------------------------------------------------------------------------------------------


cmdprops =
{
    permission = 0,
    parameters = ""
};
function onTrigger(player)
    player:addKeyItem(1992); -- Metal Purification
    player:addKeyItem(1993); -- Metal Ensorcellment
    player:addKeyItem(1994); -- Chainwork
    player:addKeyItem(1995); -- Sheeting
    player:addKeyItem(1996); -- Way of the Blacksmith
    player:addKeyItem(2000); -- Gold Purification
    player:addKeyItem(2001); -- Gold Ensorcellment
    player:addKeyItem(2002); -- Clockmaking
    player:addKeyItem(2003); -- Way of the Goldsmith

    stock = 
    {
        26406,1000, -- Kupo Shield
        26436,1000, -- Toreutic Shield
        15446,1000, -- Goldsmith's Belt
        3626, 1000, -- Gldsmth. Stall
        335,  1000, -- Goldsmith's Sign
        151,  1000, -- Fool's Gold
        3595, 1000, -- Gemscope
        --11331,1000, -- Goldsmith's Smock
        14394,1000, -- Goldsmith's Apron
        --15821,1000, -- Goldsmith's Ring
        13945,1000, -- Shaded Specs.
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