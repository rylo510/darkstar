-----------------------------------------
--  ID: 4199
--  Item: Strength Potion
--  Strength 7
-----------------------------------------
require("scripts/globals/status");
require("scripts/globals/msg");

function onItemCheck(target)
    if (target:hasStatusEffect(EFFECT_MEDICINE)) then
        --return msgBasic.ITEM_NO_USE_MEDICATED;
    end
    return 0;
end;

function onItemUse(target)
    --target:addStatusEffect(EFFECT_STR_BOOST,7,0,180);
    --target:addStatusEffect(EFFECT_MEDICINE,0,0,900);
    target:addStatusEffect(EFFECT_STR_BOOST,7,0,300);
end;
