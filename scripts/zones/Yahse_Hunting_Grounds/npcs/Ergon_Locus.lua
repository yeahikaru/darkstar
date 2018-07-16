function onTrigger(player, npc)
	local DWL = player:getQuestStatus(ADOULIN, DANCES_WITH_LUOPANS);
	if ((DWL == QUEST_ACCEPTED) and (player:hasKeyItem(dsp.ki.LUOPAN))) then
		player:setVar("DancesWithLuopans", 3);
	end
end