-----------------------------------
-- Area: Dynamis Buburimu
--  MOB: Manifest_Idol
-----------------------------------
package.loaded["scripts/zones/Dynamis-Valkurm/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/status");
require("scripts/globals/dynamis");
require("scripts/zones/Dynamis-Valkurm/TextIDs");
-----------------------------------

function onMobSpawn(mob)
end;

function onMobEngaged(mob,target)
end;

function onMobDeath(mob, player, isKiller)

        local mobID = mob:getID();

    if (mobID == 16941211 and mob:isInBattlefieldList() == false) then
        player:addTimeToDynamis(10);
        --print("addtime 10min");
        mob:addInBattlefieldList();
    end



end;