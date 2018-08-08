-----------------------------------
-- Area: Dynamis Jeuno
--  NPC: ??? (Spawn when mega is defeated)
-----------------------------------
package.loaded["scripts/zones/Dynamis-Jeuno/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/keyitems");
require("scripts/zones/Dynamis-Jeuno/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
	count = trade:getItemCount();
	RovingBijou = trade:hasItemQty(ROVING_BIJOU, 1);
	
	if (RovingBijou == true and count == 1) then
		SpawnMob(GOBLIN_GOLEM);
	end
end;

function onTrigger(player,npc)
	local IsParty = player:checkSoloPartyAlliance();
	local playerLvl = player:getMainLvl();
	if (IsParty == 0 and playerLvl <= 75) then
        player:addKeyItem(dsp.ki.HYDRA_CORPS_TACTICAL_MAP);
        player:messageSpecial(KEYITEM_OBTAINED,dsp.ki.HYDRA_CORPS_TACTICAL_MAP);	
	end
    if (player:hasKeyItem(dsp.ki.HYDRA_CORPS_TACTICAL_MAP) == false) then
        player:setVar("DynaJeuno_Win",1);
        player:addKeyItem(dsp.ki.HYDRA_CORPS_TACTICAL_MAP);
        player:messageSpecial(KEYITEM_OBTAINED,dsp.ki.HYDRA_CORPS_TACTICAL_MAP);
    end

end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;