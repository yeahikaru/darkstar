-----------------------------------
--
-- Zone: Abyssea - La_Theine
--
-----------------------------------
require("scripts/globals/quests")
-----------------------------------

function onInitialize(zone)
end

function onZoneIn(player,prevZone)
    local cs = -1

    if player:getXPos() == 0 and player:getYPos() == 0 and player:getZPos() == 0 then
        player:setPos(-480.5,-0.5,794,62)
    end

    if player:getQuestStatus(ABYSSEA, THE_TRUTH_BECKONS) == QUEST_ACCEPTED and player:getVar("1stTimeAbyssea") == 0 then
        player:setVar("1stTimeAbyssea",1)
    end

    return cs
end

function onRegionEnter(player,region)
end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end