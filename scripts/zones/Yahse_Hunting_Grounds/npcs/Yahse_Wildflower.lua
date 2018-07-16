-----------------------------------
-- Area: Yahse Hunting Grounds
--  NPC: Yahse Wildflow
-- !pos 370 0.7314 151.7802 260
-----------------------------------
package.loaded["scripts/zones/Yahse_Hunting_Grounds/TextIDs"] = nil
-----------------------------------
require("scripts/globals/keyitems")
require("scripts/zones/Yahse_Hunting_Grounds/TextIDs")
-----------------------------------
function onTrigger(player,npc)
	if (player:getQuestStatus(ADOULIN, CHILDREN_OF_THE_RUNE) == QUEST_ACCEPTED) then
		if (player:hasKeyItem(dsp.ki.YAHSE_WILDFLOWER_PETAL) ~= TRUE) then
			player:addKeyItem(dsp.ki.YAHSE_WILDFLOWER_PETAL);
			player:messageSpecial(KEYITEM_OBTAINED, dsp.ki.YAHSE_WILDFLOWER_PETAL);
		else
			printf("Fail");
		end
	end
end