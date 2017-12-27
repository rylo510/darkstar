-----------------------------------
-- Area: Bastok Markets
--  NPC: Gulldago
-- Type: Tutorial NPC
-- !pos -364.121 -11.034 -167.456 235
-----------------------------------
package.loaded["scripts/globals/fateshand"] = nil;
-----------------------------------
require("scripts/globals/fateshand");


-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
    tradeAdvCoupon(player,npc,trade); -- (rylo)
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
    player:startEvent(535);
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
