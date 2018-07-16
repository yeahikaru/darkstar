function onTrigger(player, npc)
	local DWL = player:getQuestStatus(ADOULIN,DANCES_WITH_LUOPANS);
	local DancesWithLuopans = player:getVar("DancesWithLuopans");
	if ((DWL == QUEST_ACCEPTED) and (DancesWithLuopans == 1)) then
		if (player:hasKeyItem(dsp.ki.FISTFUL_OF_HOMELAND_SOIL) ~= TRUE) then
			player:addKeyItem(dsp.ki.FISTFUL_OF_HOMELAND_SOIL);
			player:messageSpecial(KEYITEM_OBTAINED, dsp.ki.FISTFUL_OF_HOMELAND_SOIL);
			player:setVar("DancesWithLuopans", 2);
		end
			
	end
	
end