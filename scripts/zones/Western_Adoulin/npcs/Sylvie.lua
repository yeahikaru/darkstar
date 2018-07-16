-----------------------------------
require("scripts/globals/keyitems")
require("scripts/zones/Western_Adoulin/TextIDs")
-----------------------------------
function onTrigger(player, npc)
	local DWL = player:getQuestStatus(ADOULIN, DANCES_WITH_LUOPANS);
	local DancesWithLuopans = player:getVar("DancesWithLuopans");
	if (DWL ~= QUEST_ACCEPTED) then
		player:setVar("DancesWithLuopans", 1);
		player:addQuest(ADOULIN,DANCES_WITH_LUOPANS);
	end
	
	if (DWL == QUEST_ACCEPTED and DancesWithLuopans == 3) then
		player:delKeyItem(dsp.ki.LUOPAN);
		player:completeQuest(ADOULIN, DANCES_WITH_LUOPANS);
		player:unlockJob(dsp.job.GEO);
		player:PrintToPlayer("You got a new job Geomancer!");		
	end

end

function onTrade(player,npc,trade)
	local DWL = player:getQuestStatus(ADOULIN, DANCES_WITH_LUOPANS);
	count = trade:getItemCount();
	PetrifiedLog = trade:hasItemQty(703, 1);

	if ((DWL == QUEST_ACCEPTED) and (player:hasKeyItem(dsp.ki.FISTFUL_OF_HOMELAND_SOIL))) then
		if (player:hasKeyItem(dsp.ki.LUOPAN) ~= TRUE) then
			player.delKeyItem(dsp.ki.FISTFUL_OF_HOMELAND_SOIL);
			player:addKeyItem(dsp.ki.LUOPAN);
			player:messageSpecial(KEYITEM_OBTAINED, dsp.ki.LUOPAN);
		end
	end
end