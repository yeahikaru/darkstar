-----------------------------------
-- Area: Dynamis San d'Oria
--  NPC: qm1 (???)
-- Notes: Spawns when Megaboss is defeated
-----------------------------------
package.loaded["scripts/zones/Dynamis-San_dOria/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/keyitems");
require("scripts/zones/Dynamis-San_dOria/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
	count = trade:getItemCount();
	BarbaricBijou = trade:hasItemQty(BARBARIC_BIJOU, 1);
	
	if (BarbaricBijou == true and count == 1) then
		SpawnMob(OVERLORD_TOMBSTONE);
	end
end;

function onTrigger(player,npc)
	local IsParty = player:checkSoloPartyAlliance();
	local playerLvl = player:getMainLvl();
	if (IsParty == 0 and playerLvl <= 75) then
        player:addKeyItem(dsp.ki.HYDRA_CORPS_COMMAND_SCEPTER);
        player:messageSpecial(KEYITEM_OBTAINED,dsp.ki.HYDRA_CORPS_COMMAND_SCEPTER);	
	end

    if ((player:hasKeyItem(dsp.ki.HYDRA_CORPS_COMMAND_SCEPTER) == false) and (player:getVar("OverlordTombstoneIsDead", 1))) then
        player:setVar("DynaSandoria_Win",1);
        player:addKeyItem(dsp.ki.HYDRA_CORPS_COMMAND_SCEPTER);
        player:messageSpecial(KEYITEM_OBTAINED,dsp.ki.HYDRA_CORPS_COMMAND_SCEPTER);
    else
        player:messageSpecial(NOTHING_OUT_OF_ORDINARY);
    end

end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;