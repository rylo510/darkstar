require("scripts/globals/crafting");
require("scripts/globals/shop");

function guildCookingShop_fh(player,npc)
    player:addKeyItem(2042); -- pattiserie
    player:addKeyItem(2041); -- noodle
    player:addKeyItem(2040); -- raw
    player:addKeyItem(2043); -- stew
    player:addKeyItem(2044); -- way

    stock = 
    {
        3328,1000,
        3667,1000,
        15826,1000,
        338,1000,
        14399,1000,
        13948,1000,
        15451,1000,
    };

    showShop(player, STATIC, stock);
end;

function tradeAdvCoupon(player,npc,trade)

    local item = trade:getItemId();
    
    --if (player:getNation() == guardnation or guardnation == OTHER) then
    if ( item == 0x218 ) then -- Item 536
        -- Adds all maps (Pre-SoA, no Dynamis)
        player:addKeyItem(383); -- MAP OF ABDH ISLEPURGONORGO
        -- ITEMS 385 to 447
        z = 385;
        while z <= 447 do
            player:addKeyItem(z);
            z = z + 1;
        end
        -- KEY ITEMS 1856 to 1915
        z = 1856;
        while z <= 1915 do
            player:addKeyItem(z);
            z = z + 1;
        end


        player:addNationTeleport(0,2097120);
        player:addNationTeleport(1,2097120);
        player:addNationTeleport(2,2097120);
        if (UNLOCK_OUTPOST_WARPS == 2) then -- Tu'Lia and Tavnazia
            player:addNationTeleport(0,10485760);
            player:addNationTeleport(1,10485760);
            player:addNationTeleport(2,10485760);
        end
       
        -- Adds all 3 starting nation rings
        if (player:hasItem(13495) == false) then -- San D'Orian Ring 
            if (player:getFreeSlotsCount() == 0) then
                player:messageSpecial( ITEM_CANNOT_BE_OBTAINED, 13495 );
            else
                player:addItem(13495);
                player:messageSpecial(ITEM_OBTAINED,13495);            
            end
        end
        if (player:hasItem(13496) == false) then -- Windurstian Ring 
            if (player:getFreeSlotsCount() == 0) then
                player:messageSpecial( ITEM_CANNOT_BE_OBTAINED, 13496 );
            else
                player:addItem(13496);
                player:messageSpecial(ITEM_OBTAINED,13496);
            end
        end
        if (player:hasItem(13497) == false) then -- Bastokan Ring 
            if (player:getFreeSlotsCount() == 0) then
                player:messageSpecial( ITEM_CANNOT_BE_OBTAINED, 13497 );
            else
                player:addItem(13497);
                player:messageSpecial(ITEM_OBTAINED,13497);            
            end
        end

        -- Adds Experience Ring: Emperor Ring = 15763, Echad Ring = 27556
        if (player:hasItem(27556) == false) then
            if (player:getFreeSlotsCount() == 0) then
                player:messageSpecial( ITEM_CANNOT_BE_OBTAINED, 27556 );
            else
                player:addItem(27556);
                player:messageSpecial(ITEM_OBTAINED,27556);
            end
        end

        -- Adds Destrier Beret
        if (player:hasItem(11811) == false) then
            if (player:getFreeSlotsCount() == 0) then
                player:messageSpecial( ITEM_CANNOT_BE_OBTAINED, 11811 );
            else
                player:addItem(11811);
                player:messageSpecial(ITEM_OBTAINED,11811);
            end
        end

        -- Adds Warp Ring
        if (player:hasItem(28540) == false) then
            if (player:getFreeSlotsCount() == 0) then
                player:messageSpecial( ITEM_CANNOT_BE_OBTAINED, 28540 );
            else
                player:addItem(28540);
                player:messageSpecial(ITEM_OBTAINED,28540);
            end
        end

        -- Adds Nexus Cape
        if (player:hasItem(11538) == false) then
            if (player:getFreeSlotsCount() == 0) then
                player:messageSpecial( ITEM_CANNOT_BE_OBTAINED, 11538 );
            else
                player:addItem(11538);
                player:messageSpecial(ITEM_OBTAINED,11538);
            end
        end

        -- Grants gil and gives the appropriate message
        player:addGil(500000);
        player:messageSpecial(GIL_OBTAINED,500000);

        -- Max Craft Skills & Grant Guild Points
        player:setSkillRank(SKILL_FISHING,10);
        player:setSkillLevel(SKILL_FISHING,100);
        --player:addGuildPoints(32,1000000)

        player:setSkillRank(SKILL_WOODWORKING,10);
        player:setSkillLevel(SKILL_WOODWORKING,100);
        --player:addGuildPoints(512,1000000)

        player:setSkillRank(SKILL_SMITHING,10);
        player:setSkillLevel(SKILL_SMITHING,100);
        --player:addGuildPoints(256,1000000)

        player:setSkillRank(SKILL_GOLDSMITHING,10);
        player:setSkillLevel(SKILL_GOLDSMITHING,100);
        --player:addGuildPoints(64,1000000)

        player:setSkillRank(SKILL_CLOTHCRAFT,10);
        player:setSkillLevel(SKILL_CLOTHCRAFT,100);
        --player:addGuildPoints(8,1000000)

        player:setSkillRank(SKILL_LEATHERCRAFT,10);
        player:setSkillLevel(SKILL_LEATHERCRAFT,100);
        --player:addGuildPoints(128,1000000)

        player:setSkillRank(SKILL_BONECRAFT,10);
        player:setSkillLevel(SKILL_BONECRAFT,100);
        --player:addGuildPoints(4,10)

        player:setSkillRank(SKILL_ALCHEMY,10);
        player:setSkillLevel(SKILL_ALCHEMY,100);
        --player:addGuildPoints(2,10)
        
        player:setSkillRank(SKILL_COOKING,10);
        player:setSkillLevel(SKILL_COOKING,100);
        --player:addGuildPoints(16,1000000)

        player:setVar("Guild_Member",1022);

        -- Raise level cap to 75
        player:levelCap(75);
       
        -- Grant max inventory space
        player:changeContainerSize(0,(80 - 30));
        player:changeContainerSize(1,(80 - 30));
        player:changeContainerSize(2,(80 - 30));
        player:changeContainerSize(3,(80 - 30));
        player:changeContainerSize(4,(80 - 30));
        player:changeContainerSize(5,(80 - 30));
        player:changeContainerSize(6,(80 - 30));
        player:changeContainerSize(7,(80 - 30));
       
        -- Grants a small amount of fame
        player:addFame(BASTOK,  1000); --BAS_FAME*10
        player:addFame(SANDORIA,1000); --SAN_FAME*10
        player:addFame(WINDURST,1000); --WIN_FAME*10
        player:addFame(NORG,    1000); --NORG_FAME*10

        player:addKeyItem(8); -- Airship Pass
        player:addKeyItem(9); -- Kazham Airship Pass
        player:addKeyItem(138); -- Chocobo License
        player:addKeyItem(1111); -- Delkfutt Key
        player:addKeyItem(352); -- HOLLA GATE CRYSTAL
        player:addKeyItem(353); -- DEM GATE CRYSTAL
        player:addKeyItem(354); -- MEA GATE CRYSTAL
        player:addKeyItem(355); -- VAHZL GATE CRYSTAL
        player:addKeyItem(356); -- YHOATOR GATE CRYSTAL
        player:addKeyItem(357); -- ALTEPA GATE CRYSTAL
        player:addKeyItem(485); -- MOONGATE PASS
        player:addKeyItem(963); -- JUGNER GATE CRYSTAL
        player:addKeyItem(964); -- PASSHOW GATE CRYSTAL
        player:addKeyItem(965); -- MERIPHATAUD GATE CRYSTAL

        if (player:hasItem(15533) == false) then
            if (player:getFreeSlotsCount() == 0) then
                player:messageSpecial( ITEM_CANNOT_BE_OBTAINED, 15533 );
            else
                player:addItem(15533);
                player:messageSpecial(ITEM_OBTAINED,15533);
            end
        end
        

        if (player:hasItem(536, LOC_INVENTORY)) then
            player:delItem(536, 1, LOC_INVENTORY);
        end
        
        player:showText(npc,7354); -- "Trick or treat..."
        
        player:tradeComplete();
    end
end;
