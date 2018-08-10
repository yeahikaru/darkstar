-----------------------------------
-- Area: Alzadaal Undersea Ruins
--  NPC: 21 (no name)
-----------------------------------
package.loaded["scripts/zones/Alzadaal_Undersea_Ruins/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Alzadaal_Undersea_Ruins/TextIDs");
require("scripts/globals/quests");
require("scripts/globals/settings");
require("scripts/globals/status");
-----------------------------------

function onTrigger(player,npc)
    if (player:getQuestStatus(AHT_URHGAN, TRANSFORMATIONS) == QUEST_ACCEPTED and player:getVar("Transformations") == 1) then
        SpawnMob(17072129);
    elseif (player:getQuestStatus(AHT_URHGAN, TRANSFORMATIONS) == QUEST_ACCEPTED and player:getVar("Transformations") == 2) then
        if (player:hasItem(15265) == true or player:getFreeSlotsCount() == 0) then
            player:messageSpecial(ITEM_CANNOT_BE_OBTAINED, 15265);
        else
            player:addItem(15265, 1);
            player:messageSpecial(ITEM_OBTAINED, 15265);
            player:addTitle(dsp.title.PARAGON_OF_BLUE_MAGE_EXCELLENCE);
            player:completeQuest(AHT_URHGAN, TRANSFORMATIONS);
        end
    end
    
end;