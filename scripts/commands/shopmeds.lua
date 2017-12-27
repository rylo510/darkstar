---------------------------------------------------------------------------------------------------
-- func: shopmeds
-- desc: Shows a shop for various consummables
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

    stock = {
        4165, 50,       -- Silent Oil
        4166, 50,       -- Deodorizer
        4164, 50,       -- Prism Powder
        5362,500,       -- Rainbow Powder
        5355, 20,       -- Elixir Vitae
        4144,220,       -- Hi-Elixir
        4174,440,       -- Vile Elixir
        4175,700,       -- Vile Elixir +1
        4119, 30,       -- Hi-Potion +3
        4135, 30,       -- Hi-Ether +3
        4213,900,       -- Icarus Wing
        4149,1500,      -- Panacea
        4155,120,       -- Remedy (Para, Silence, Blind, Poison, Disease)
        4154, 70,       -- Holy Water
        4153,400,       -- Antacid
        4151,100,       -- Echo Drops
        4150, 10,       -- Eye Drops
        4148, 30,       -- Antidote
        5411,120,       -- Dawn Mulsum
        4199, 20,       -- Strength Potion
        4201, 20,       -- Dexterity Potion
        4207, 20,       -- Intelligence Potion
        4209, 20,       -- Mind Potion
        4205, 20,       -- Agility Potion
        4203, 20,       -- Vitality Potion
        }
    showShop(player, STATIC, stock);
end