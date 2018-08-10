-----------------------------------
-- Area: Alzadaal Undersea Ruins (72)
--  MOB: Nepionic Soulflayer
-----------------------------------
mixins = {require("scripts/mixins/job_special")};
require("scripts/globals/titles");

function onMobDeath(mob, player, isKiller)
    player:setVar("Transformations", 2);
end;
