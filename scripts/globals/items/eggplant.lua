-----------------------------------------
-- ID: 4388
-- Item: eggplant
-- Food Effect: 5Min, All Races
-----------------------------------------
-- Agility 3
-- Vitality -5
-----------------------------------------
require("scripts/globals/status")
-----------------------------------------

function onItemCheck(target)
    local result = 0
    if (target:hasStatusEffect(dsp.effect.FOOD) == true or target:hasStatusEffect(dsp.effect.FIELD_SUPPORT_FOOD) == true) then
        result = 246
    end
    return result
end

function onItemUse(target)
    target:addStatusEffect(dsp.effect.FOOD,0,0,300,4388)
end

function onEffectGain(target,effect)
    target:addMod(dsp.mod.AGI, 3)
    target:addMod(dsp.mod.VIT, -5)
end

function onEffectLose(target, effect)
    target:delMod(dsp.mod.AGI, 3)
    target:delMod(dsp.mod.VIT, -5)
end
