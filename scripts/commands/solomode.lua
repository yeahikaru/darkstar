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
    if (player:getVar("SoloMode") == 0) then
        -- Toggle GodMode on..
        player:setVar("SoloMode", 1);

		player:addStatusEffect(dsp.effect.PROTECT,1000,0,0);
		player:addStatusEffect(dsp.effect.SHELL,1000,0,0);
		player:addStatusEffect(dsp.effect.HASTE,1,0,0);
		player:addStatusEffect(dsp.effect.HASTE_DAZE,1,0,0);
		player:addStatusEffect(dsp.effect.HASTE_SAMBA,1,0,0);
		player:addStatusEffect(dsp.effect.REGAIN,300,0,0);
		player:addStatusEffect(dsp.effect.REFRESH,500,0,0);
		player:addStatusEffect(dsp.effect.REGEN,500,0,0);
		player:addStatusEffect(dsp.effect.RERAISE,3,0,0);
		player:addStatusEffect(dsp.effect.FLEE,100,0,0);
		player:addStatusEffect(dsp.effect.ACCURACY_BOOST,1000,0,0);
		player:addStatusEffect(dsp.effect.ATTACK_BOOST,500,0,0);		
		player:addStatusEffect(dsp.effect.ICE_SPIKES,lvl*10,0,0);
		player:addStatusEffect(dsp.effect.BLITZERS_ROLL, 1,0,0);
		--player:addStatusEffect(dsp.effect.VICTORY_MARCH,1,0,0);

    else
        -- Toggle GodMode off..
        player:setVar("SoloMode", 0);

		player:delStatusEffect(dsp.effect.PROTECT);
		player:delStatusEffect(dsp.effect.SHELL);
		player:delStatusEffect(dsp.effect.HASTE);
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
		--player:delStatusEffect(dsp.effect.VICTORY_MARCH);
    end
end