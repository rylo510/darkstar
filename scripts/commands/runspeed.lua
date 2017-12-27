---------------------------------------------------------------------------------------------------
-- func: runspeed
-- desc: Sets and records the players chosen movement speed.
---------------------------------------------------------------------------------------------------
package.loaded["scripts/globals/fateshand"] = nil;
require("scripts/globals/fateshand");

cmdprops =
{
    permission = 0,
    parameters = "i"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!runspeed <0-100> (Default: 0)");
end;

function onTrigger(player, speed)
    if ( hasEnmityNearby(player) == 1 ) then
        player:PrintToPlayer("Cannot execute command while in battle!");
        return
    end
    
    -- validate speed amount
    if (speed == nil or speed < 0 or speed > 100) then
        error(player, "Invalid speed amount.");
        return;
    end;
    
    -- set speed
    player:speed( speed + 60 );
    
    -- remember speed for later player zoning
    player:setVar("Run_Speed",speed + 60);
    
end