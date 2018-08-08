package.loaded["scripts/zones/Southern_San_dOria/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/settings");
require("scripts/zones/Southern_San_dOria/TextIDs")
require("scripts/globals/shop");
-----------------------------------
function onTrigger(player, page)
	player:showText(npc,SHILAH_SHOP_DIALOG);
	local stock = 
	{
		SHARD_OF_NECROPOSYCHE, 			50000,
		RANPERRE_GOLDPIECE,				50000,
		RIMILALA_STRIPESHELL,			50000,
		MYSTIC_FRAGMENT, 				10000,
		ORNATE_FRAGMENT,				10000,
		HOLY_FRAGMENT,					10000,
		INTRICATE_FRAGMENT,				10000,
		RUNAEIC_FRAGMENT,				10000,
		SERAPHIC_FRAGMENT,				10000,
		TENEBROUS_FRAGMENT,				10000,
		STELLAR_FRAGMENT,				10000,
		DEMONIAC_FRAGMENT,				10000,
		DIVINE_FRAGMENT,				10000,
		HEAVENLY_FRAGMENT,				10000,
		CELESTIAL_FRAGMENT,				10000,
		SNARIED_FRAGMENT,				10000,
		ETHEREAL_FRAGMENT,				10000,
		MYSTERIAL_FRAGMENT,				10000,
		SUPERNAL_FRAGMENT,				10000
		
		
	};
	dsp.shop.general(player, stock);
end

function onTrade(player,npc,trade)
    count = trade:getItemCount();
	OneByneBill = trade:hasItemQty(ONE_BYNE_BILL, 1);
	OneHundredByneBill = trade:hasItemQty(ONE_HUNDRED_BYNE_BILL, 1);
	MainJob = player:getMainJob();
	MainLvl = player:getMainLvl();
	
	printf("count = %u", count);
	
	if (MainLvl >= 75) then
		--Spharai
		if (MainJob == MNK) then
			if (OneByneBill == true and count == 100) then
				printf("Get Mystic Fragment.");
				player:messageSpecial(ITEM_OBTAINED, MYSTIC_FRAGMENT);
				player:messageSpecial(ITEM_OBTAINED, SHARD_OF_NECROPOSYCHE);
				player:addItem(MYSTIC_FRAGMENT, 1);
				player:addItem(SHARD_OF_NECROPOSYCHE, 1);
				player:tradeComplete();
			else
				printf("Spharai trade fail.");
			end
		end
		
		--Mandau
		if (MainJob == THF) then
			if (OneByneBill == true and count == 100) then
				player:messageSpecial(ITEM_OBTAINED, ORNATE_FRAGMENT);	
				player:messageSpecial(ITEM_OBTAINED, SHARD_OF_NECROPOSYCHE);
				player:addItem(ORNATE_FRAGMENT, 1);
				player:addItem(SHARD_OF_NECROPOSYCHE, 1);
				player:tradeComplete();			
			else
				printf("Mandau trade fail.");
			end
		end
		
		--Excalibur
		if (MainJob == RDM) then
			if (OneByneBill == true and count == 100) then
				player:messageSpecial(ITEM_OBTAINED, HOLY_FRAGMENT);
				player:messageSpecial(ITEM_OBTAINED, SHARD_OF_NECROPOSYCHE);
				player:messageSpecial(ITEM_OBTAINED, RANPERRE_GOLDPIECE);
				player:addItem(HOLY_FRAGMENT, 1);
				player:addItem(SHARD_OF_NECROPOSYCHE, 1);
				player:addItem(RANPERRE_GOLDPIECE, 1);
				player:tradeComplete();			
			else
				printf("Excalibur trade fail.");
			end
		end
		
		--Ragnarok
		if (MainJob == WAR) then
			if (OneByneBill == true and count == 100) then
				player:messageSpecial(ITEM_OBTAINED, INTRICATE_FRAGMENT);
				player:messageSpecial(ITEM_OBTAINED, SHARD_OF_NECROPOSYCHE);
				player:messageSpecial(ITEM_OBTAINED, RANPERRE_GOLDPIECE);
				player:addItem(INTRICATE_FRAGMENT, 1);
				player:addItem(SHARD_OF_NECROPOSYCHE, 1);
				player:addItem(RANPERRE_GOLDPIECE, 1);
				player:tradeComplete();			
			else
				printf("Ragnarok trade fail.");
			end
		end

		--Guttler
		if (MainJob == BST) then
			if (OneByneBill == true and count == 100) then
				player:messageSpecial(ITEM_OBTAINED, RUNAEIC_FRAGMENT);
				player:messageSpecial(ITEM_OBTAINED, SHARD_OF_NECROPOSYCHE);
				player:messageSpecial(ITEM_OBTAINED, RIMILALA_STRIPESHELL);
				player:addItem(RUNAEIC_FRAGMENT, 1);
				player:addItem(SHARD_OF_NECROPOSYCHE, 1);
				player:addItem(RIMILALA_STRIPESHELL, 1);
				player:tradeComplete();			
			else
				printf("Guttler trade fail.");
			end
		end

		--Bravura
		if (MainJob == WAR) then
			if (OneHundredByneBill == true and count == 5) then
				player:messageSpecial(ITEM_OBTAINED, SERAPHIC_FRAGMENT);
				player:messageSpecial(ITEM_OBTAINED, SHARD_OF_NECROPOSYCHE);
				player:addItem(SERAPHIC_FRAGMENT, 1);
				player:addItem(SHARD_OF_NECROPOSYCHE, 1);
				player:tradeComplete();			
			else
				printf("Bravura trade fail.");
			end
		end
		
		--Apocalypse
		if (MainJob == DRK) then
			if (OneByneBill == true and count == 100) then
				player:messageSpecial(ITEM_OBTAINED, TENEBROUS_FRAGMENT);
				player:messageSpecial(ITEM_OBTAINED, SHARD_OF_NECROPOSYCHE);
				player:messageSpecial(ITEM_OBTAINED, RIMILALA_STRIPESHELL);
				player:addItem(TENEBROUS_FRAGMENT, 1);
				player:addItem(SHARD_OF_NECROPOSYCHE, 1);
				player:addItem(RIMILALA_STRIPESHELL, 1);
				player:tradeComplete();			
			else
				printf("Apocalypse trade fail.");
			end
		end
		
		--Gungir
		if (MainJob == DRG) then
			if (OneByneBill == true and count == 100) then
				player:messageSpecial(ITEM_OBTAINED, STELLAR_FRAGMENT);
				player:messageSpecial(ITEM_OBTAINED, SHARD_OF_NECROPOSYCHE);
				player:messageSpecial(ITEM_OBTAINED, RIMILALA_STRIPESHELL);
				player:addItem(STELLAR_FRAGMENT, 1);
				player:addItem(SHARD_OF_NECROPOSYCHE, 1);
				player:addItem(RIMILALA_STRIPESHELL, 1);
				player:tradeComplete();			
			else
				printf("Gungir trade fail.");
			end
		end
		
		--Kikoku
		if (MainJob == NIN) then
			if (OneByneBill == true and count == 100) then
				player:messageSpecial(ITEM_OBTAINED, DEMONIAC_FRAGMENT);
				player:messageSpecial(ITEM_OBTAINED, SHARD_OF_NECROPOSYCHE);
				player:addItem(DEMONIAC_FRAGMENT, 1);
				player:addItem(SHARD_OF_NECROPOSYCHE, 1);
				player:tradeComplete();			
			else
				printf("Kikoku trade fail.");
			end
		end
		
		--Amanomurakumo
		if (MainJob == SAM) then
			if (OneByneBill == true and count == 100) then
				player:messageSpecial(ITEM_OBTAINED, DIVINE_FRAGMENT);
				player:messageSpecial(ITEM_OBTAINED, SHARD_OF_NECROPOSYCHE);
				player:messageSpecial(ITEM_OBTAINED, RANPERRE_GOLDPIECE);
				player:addItem(DIVINE_FRAGMENT, 1);
				player:addItem(SHARD_OF_NECROPOSYCHE, 1);
				player:addItem(RANPERRE_GOLDPIECE, 1);
				player:tradeComplete();			
			else
				printf("Amanomurakumo trade fail.");
			end
		end		
		
		--Mjollnir
		if (MainJob == WHM) then
			if (OneByneBill == true and count == 100) then
				player:messageSpecial(ITEM_OBTAINED, HEAVENLY_FRAGMENT);
				player:messageSpecial(ITEM_OBTAINED, SHARD_OF_NECROPOSYCHE);
				player:messageSpecial(ITEM_OBTAINED, RANPERRE_GOLDPIECE);
				player:addItem(HEAVENLY_FRAGMENT, 1);
				player:addItem(SHARD_OF_NECROPOSYCHE, 1);
				player:addItem(RANPERRE_GOLDPIECE, 1);
				player:tradeComplete();			
			else
				printf("Mjollnir trade fail.");
			end
		end	
		
		--Claustrum
		if (MainJob == BLM) then
			if (OneByneBill == true and count == 100) then
				player:messageSpecial(ITEM_OBTAINED, CELESTIAL_FRAGMENT);
				player:messageSpecial(ITEM_OBTAINED, SHARD_OF_NECROPOSYCHE);
				player:messageSpecial(ITEM_OBTAINED, RIMILALA_STRIPESHELL);
				player:addItem(CELESTIAL_FRAGMENT, 1);
				player:addItem(SHARD_OF_NECROPOSYCHE, 1);
				player:addItem(RIMILALA_STRIPESHELL, 1);
				player:tradeComplete();			
			else
				printf("Claustrum trade fail.");
			end
		end
		
		--Yoichinoyumi
		if (MainJob == RNG) then
			if (OneByneBill == true and count == 100) then
				player:messageSpecial(ITEM_OBTAINED, SNARIED_FRAGMENT);
				player:messageSpecial(ITEM_OBTAINED, SHARD_OF_NECROPOSYCHE);
				player:messageSpecial(ITEM_OBTAINED, RANPERRE_GOLDPIECE);
				player:addItem(SNARIED_FRAGMENT, 1);
				player:addItem(SHARD_OF_NECROPOSYCHE, 1);
				player:addItem(RANPERRE_GOLDPIECE, 1);
				player:tradeComplete();			
			else
				printf("Yoichinoyumi trade fail.");
			end
		end
		
		--Annihilator
		if (MainJob == RNG) then
			if (OneHundredByneBill == true and count == 5) then
				player:messageSpecial(ITEM_OBTAINED, ETHEREAL_FRAGMENT);
				player:messageSpecial(ITEM_OBTAINED, SHARD_OF_NECROPOSYCHE);
				player:messageSpecial(ITEM_OBTAINED, RIMILALA_STRIPESHELL);
				player:addItem(ETHEREAL_FRAGMENT, 1);
				player:addItem(SHARD_OF_NECROPOSYCHE, 1);
				player:addItem(RIMILALA_STRIPESHELL, 1);
				player:tradeComplete();			
			else
				printf("Annihilator trade fail.");
			end
		end
		
		--Gjallarhorn
		if (MainJob == BRD) then
			if (OneByneBill == true and count == 100) then
				player:messageSpecial(ITEM_OBTAINED, MYSTERIAL_FRAGMENT);
				player:messageSpecial(ITEM_OBTAINED, SHARD_OF_NECROPOSYCHE);
				player:messageSpecial(ITEM_OBTAINED, RIMILALA_STRIPESHELL);
				player:addItem(MYSTERIAL_FRAGMENT, 1);
				player:addItem(SHARD_OF_NECROPOSYCHE, 1);
				player:addItem(RIMILALA_STRIPESHELL, 1);
				player:tradeComplete();			
			else
				printf("Gjallarhorn trade fail.");
			end
		end		
		
		--Aegis
		if (MainJob == PLD) then
			if (OneHundredByneBill == true and count == 5) then
				player:messageSpecial(ITEM_OBTAINED, SUPERNAL_FRAGMENT);
				player:messageSpecial(ITEM_OBTAINED, SHARD_OF_NECROPOSYCHE);
				player:messageSpecial(ITEM_OBTAINED, RANPERRE_GOLDPIECE);
				player:addItem(SUPERNAL_FRAGMENT, 1);
				player:addItem(SHARD_OF_NECROPOSYCHE, 1);
				player:addItem(RANPERRE_GOLDPIECE, 1);
				player:tradeComplete();			
			else
				printf("Aegis trade fail.");
			end
		end		
		
		
	end
	
	if (MainLvl >= 80) then
	end
	
	if (MainLvl >= 85) then
	end
	
	if (MainLvl >= 90) then
	end
	
	if (MainLvl >= 95) then
	end	
	
	if (MainLvl == 99) then
	end	
end;
