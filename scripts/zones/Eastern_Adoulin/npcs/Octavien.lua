-----------------------------------
require("scripts/globals/keyitems")
require("scripts/zones/Eastern_Adoulin/TextIDs")
-----------------------------------
function onTrigger(player, npc)
	if (player:getQuestStatus(ADOULIN, CHILDREN_OF_THE_RUNE) ~= QUEST_COMPLETED) then
		player:addQuest(ADOULIN, CHILDREN_OF_THE_RUNE);
		if (player:hasKeyItem(dsp.ki.YAHSE_WILDFLOWER_PETAL)) then
			player:unlockJob(dsp.job.RUN);
			player:PrintToPlayer("You got a new job Rune Fencer!");
			player:delKeyItem(dsp.ki.YAHSE_WILDFLOWER_PETAL);
		end
	end
end