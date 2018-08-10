-----------------------------------
-- Area: Aht Urhgan Whitegate
--  NPC: Lathuya
-- Standard Info NPC
-----------------------------------
package.loaded["scripts/zones/Aht_Urhgan_Whitegate/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Aht_Urhgan_Whitegate/TextIDs");
require("scripts/globals/quests");
require("scripts/globals/settings");
require("scripts/globals/status");
-----------------------------------

function onTrade(player,npc,trade)
    if (player:getQuestStatus(AHT_URHGAN, OMENS) == QUEST_COMPLETED and player:getQuestStatus(AHT_URHGAN, TRANSFORMATIONS) == QUEST_ACCEPTED) then
        --BLU AF leg
        if (trade:hasItemQty(761, 1) and trade:hasItemQty(828, 1) and trade:hasItemQty(2175, 1) and trade:hasItemQty(2340, 1) and trade:hasItemQty(2186, 2)) then
            if (player:hasItem(15600) == true or player:getFreeSlotsCount() == 0) then
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED, 15600);
            else
                player:addItem(15600, 1);
                player:messageSpecial(ITEM_OBTAINED, 15600);
                player:tradeComplete();
            end
        
        --BLU AF hand
        elseif (trade:hasItemQty(754, 1) and trade:hasItemQty(828, 1) and trade:hasItemQty(879, 1) and trade:hasItemQty(4158, 1) and trade:hasItemQty(2186, 2)) then
            if (player:hasItem(14928) == true or player:getFreeSlotsCount() == 0) then
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED, 14928);
            else
                player:addItem(14928, 1);
                player:messageSpecial(ITEM_OBTAINED, 14928);
                player:tradeComplete();
            end

        
        --BLU AF body
        elseif (trade:hasItemQty(828, 1) and trade:hasItemQty(2229, 1) and trade:hasItemQty(2288, 1) and trade:hasItemQty(2340, 1)  and trade:hasItemQty(2186, 4)) then
            if (player:hasItem(14521) == true or player:getFreeSlotsCount() == 0) then
                player:messageSpecial(ITEM_CANNOT_BE_OBTAINED, 14521);
            else
                player:addItem(14521, 1);
                player:messageSpecial(ITEM_OBTAINED, 14521);
                player:tradeComplete();
            end
        else
            printf("trade BLU's AF error");
        end
    end
end;

function onTrigger(player,npc)
    player:startEvent(770);

end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
        if (player:hasItem(15600) == false or player:hasItem(14928) == false or player:hasItem(14521) == false) then
            if (player:getMainJob() == dsp.job.BLU and player:getMainLvl() >= 50) then
                if (player:getQuestStatus(AHT_URHGAN, TRANSFORMATIONS) == QUEST_ACCEPTED) then
                    player:PrintToPlayer("Trade the item for BLU's AF");
                end
            end
        else
            if (player:getQuestStatus(AHT_URHGAN, TRANSFORMATIONS) == QUEST_ACCEPTED) then
                --player:completeQuest(AHT_URHGAN, TRANSFORMATIONS);
                player:setVar("Transformations", 1);
                player:PrintToPlayer("Kill Nepionic Soulflayer in Alzadaal Undersea Ruins");
                --player:setPos(-526, -0.449, 646, 72);
            end
        end
end;

