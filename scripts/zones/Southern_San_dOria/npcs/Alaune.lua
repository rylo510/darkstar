-----------------------------------
--  Area: Southern San d`Oria
--   NPC: Alaune
--  Type: Tutorial NPC
--  @zone 230
-- !pos -90 1 -56
-----------------------------------
package.loaded["scripts/zones/Southern_San_dOria/TextIDs"] = nil;
package.loaded["scripts/globals/fateshand"] = nil; -- (rylo)
-----------------------------------
require("scripts/zones/Southern_San_dOria/TextIDs");
require("scripts/globals/settings");
require("scripts/globals/quests");
require("scripts/globals/fateshand"); -- (rylo)

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    -- "Flyers for Regine" conditional script
    local FlyerForRegine = player:getQuestStatus(SANDORIA,FLYERS_FOR_REGINE);

    if (FlyerForRegine == 1) then
        local count = trade:getItemCount();
        local MagicFlyer = trade:hasItemQty(532,1);
        if (MagicFlyer == true and count == 1) then
            player:messageSpecial(FLYER_REFUSED);
        end
    end
    
    tradeAdvCoupon(player,npc,trade); -- (rylo)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    player:showText(npc,TUTORIAL_NPC);
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
    -- printf("CSID: %u",csid);
    -- printf("RESULT: %u",option);
end;