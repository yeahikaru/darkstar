-----------------------------------
-- Area: Dynamis Windurst
--  NPC: qm1 (???)
-- Notes: Spawns when Megaboss is defeated
-----------------------------------
package.loaded["scripts/zones/Dynamis-Windurst/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/keyitems");
require("scripts/zones/Dynamis-Windurst/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
	count = trade:getItemCount();
	DivineBijou = trade:hasItemQty(DIVINE_BIJOU, 1);
	
	if (DivineBijou == true and count == 1) then
		SpawnMob(TZEE_XICU_IDOL);
	end
end;

function onTrigger(player,npc)
	local IsParty = player:checkSoloPartyAlliance();
	local playerLvl = player:getMainLvl();
	if (IsParty == 0 and playerLvl <= 75) then
        player:addKeyItem(dsp.ki.HYDRA_CORPS_LANTERN);
        player:messageSpecial(KEYITEM_OBTAINED,dsp.ki.HYDRA_CORPS_LANTERN);	
	end
    if (player:hasKeyItem(dsp.ki.HYDRA_CORPS_LANTERN) == false) then
        player:setVar("DynaWindurst_Win",1);
        player:addKeyItem(dsp.ki.HYDRA_CORPS_LANTERN);
        player:messageSpecial(KEYITEM_OBTAINED,dsp.ki.HYDRA_CORPS_LANTERN);
    else
        player:messageSpecial(NOTHING_OUT_OF_ORDINARY);
    end

end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;