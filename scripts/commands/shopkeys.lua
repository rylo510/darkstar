---------------------------------------------------------------------------------------------------
-- func: shopkeys
-- desc: Shows a show with all coffer and chest keys
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

            1042,1000,     -- Davoi Coffer Key
            1043,1000,     -- Bdx. Coffer Key
            1044,1000,     -- Ozt. Coffer Key
            1045,1000,     -- Nest Coffer Key
            1046,1000,     -- Eld. Coffer Key
            1047,1000,     -- Grl. Coffer Key
            1048,1000,     -- Zvahl Coffer Key
            1049,1000,     -- Ugl. Coffer Key
            1050,1000,     -- Den Coffer Key
            1051,1000,     -- Kuftal Coffer Key
            1052,1000,     -- Byd. Coffer Key
            1053,1000,     -- Cld. Coffer Key
            1054,1000,     -- Qsd. Coffer Key
            1057,1000,     -- Tor. Coffer Key
            1058,1000,     -- Ru'Aun Coffer Key
            1059,1000,     -- Grotto Coffer Key
            1060,1000,     -- Vlg. Coffer Key
            1063,1000,     -- Ntn. Coffer Key
            1024, 500,     -- Gls. Chest Key
            1025, 500,     -- Plb. Chest Key
            1026, 500,     -- Gds. Chest Key
            1027, 500,     -- Rnp. Chest Key
            1028, 500,     -- Dgr. Chest Key
            1029, 500,     -- Hrt. Chest Key
            1030, 500,     -- Ordelle Chest Key
            1031, 500,     -- Gusgen Chest Key
            1032, 500,     -- Shk. Chest Key
            1033, 500,     -- Davoi Chest Key
            1034, 500,     -- Bdx. Chest Key
            1035, 500,     -- Oztroja Chest Key
            1036, 500,     -- Dlk. Chest Key
            1037, 500,     -- Fei'Yin Chest Key
            1038, 500,     -- Zvahl Chest Key
            1039, 500,     -- Eld. Chest Key
            1040, 500,     -- Nest Chest Key
            1041, 500,     -- Grl. Chest Key
            1055, 500,     -- Grotto Chest Key
            1056, 500,     -- Onzozo Chest Key
            1061, 500,     -- Scr. Chest Key
            1062, 500,     -- Oldton Chest Key
            1064, 500,     -- Pso. Chest Key
        }
    showShop(player, STATIC, stock);
end