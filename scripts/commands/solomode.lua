---------------------------------------------------------------------------------------------------
-- func: godmode
-- desc: Toggles god mode on the player, granting them several special abilities.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function onTrigger(player)
	local lvl = player:getMainLvl()
	local dynaStatus = player:hasStatusEffect(dsp.effect.DYNAMIS)
	
	if (dynaStatus) then
		printf("player has dynamis status.")
        player:addStatusEffect(dsp.effect.MAX_HP_BOOST,1000,0,0);
        player:addStatusEffect(dsp.effect.MAX_MP_BOOST,1000,0,0);		
		-- Add bonus mods to the player..
		player:addMod(dsp.mod.RACC,2500);
		player:addMod(dsp.mod.RATT,2500);
		player:addMod(dsp.mod.ACC,2500);
		player:addMod(dsp.mod.ATT,2500);
		player:addMod(dsp.mod.MATT,2500);
		player:addMod(dsp.mod.MACC,2500);
		player:addMod(dsp.mod.RDEF,2500);
		player:addMod(dsp.mod.DEF,2500);
		player:addMod(dsp.mod.MDEF,2500);

		-- Heal the player from the new buffs..
		player:addHP( 50000 );
		player:setMP( 50000 );
	end	
		
    if (player:getVar("SoloMode") == 0) then
        -- Toggle GodMode on..
        player:setVar("SoloMode", 1);

		player:addStatusEffect(dsp.effect.PROTECT,1000,0,0);
		player:addStatusEffect(dsp.effect.SHELL,1000,0,0);
		player:addStatusEffect(dsp.effect.HASTE_II,1,0,0);
		player:addStatusEffect(dsp.effect.HASTE_DAZE,1,0,0);
		player:addStatusEffect(dsp.effect.HASTE_SAMBA,1,0,0);
		player:addStatusEffect(dsp.effect.REGAIN,300,0,0);
		player:addStatusEffect(dsp.effect.REFRESH,500,0,0);
		player:addStatusEffect(dsp.effect.REGEN,500,0,0);
		player:addStatusEffect(dsp.effect.RERAISE,3,0,0);
		player:addStatusEffect(dsp.effect.FLEE,100,0,0);
		player:addStatusEffect(dsp.effect.ACCURACY_BOOST,1000,0,0);
		player:addStatusEffect(dsp.effect.ATTACK_BOOST,500,0,0);		
		player:addStatusEffect(dsp.effect.ICE_SPIKES,lvl*5,0,0);
		player:addStatusEffect(dsp.effect.BLITZERS_ROLL, 100,0,0);
		--player:addStatusEffect(dsp.jobSpecialAbility.HUNDRED_FISTS_PRISHE,1,0,0);
		--player:addMod(dsp.mod.TA_TRIPLE_DAMAGE, 1000);

    else
        -- Toggle GodMode off..
        player:setVar("SoloMode", 0);

		player:delStatusEffect(dsp.effect.PROTECT);
		player:delStatusEffect(dsp.effect.SHELL);
		player:delStatusEffect(dsp.effect.HASTE_II);
		player:delStatusEffect(dsp.effect.HASTE_DAZE);
		player:delStatusEffect(dsp.effect.HASTE_SAMBA);
		player:delStatusEffect(dsp.effect.REGAIN);
		player:delStatusEffect(dsp.effect.REFRESH);
		player:delStatusEffect(dsp.effect.REGEN);
		player:delStatusEffect(dsp.effect.RERAISE);
		player:delStatusEffect(dsp.effect.FLEE);
		player:delStatusEffect(dsp.effect.ACCURACY_BOOST);
		player:delStatusEffect(dsp.effect.ATTACK_BOOST);
		player:delStatusEffect(dsp.effect.ICE_SPIKES);
		player:delStatusEffect(dsp.effect.BLITZERS_ROLL);
		
		--player:delMod(dsp.mod.TA_TRIPLE_DAMAGE,1000);
    end
end