-----------------------------------
-- Area: Dynamis
-- NPC: Mildaunegeux
-------------------------------------

function onTrigger(player,npc)
end;

function onTrade(player, npc)
	count = trade:getItemCount();
	villans_fortune = trade:hasItemQty(3361, 1);
	
	if (villans_fortune == true and count == 1) then
		SpawnMob(17326088)
	end
end