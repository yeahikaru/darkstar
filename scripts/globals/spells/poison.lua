-----------------------------------------
--   Spell: Poison
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
require("scripts/globals/msg")
-----------------------------------------

function onMagicCastingCheck(caster,target,spell)
    return 0
end

function onSpellCast(caster,target,spell)
    local effect = dsp.effect.POISON

    local duration = 30

        if (caster:hasStatusEffect(dsp.effect.SABOTEUR)) then
        duration = duration * 2
    end

    local pINT = caster:getStat(dsp.mod.INT)
    local mINT = target:getStat(dsp.mod.INT)

    local dINT = (pINT - mINT)
    local power = caster:getSkillLevel(dsp.skill.ENFEEBLING_MAGIC) / 25 + 1
    if power > 4 then
        power = 4
    end

        if (caster:hasStatusEffect(dsp.effect.SABOTEUR)) then
        power = power * 2
    end
    caster:delStatusEffect(dsp.effect.SABOTEUR)

    local params = {}

    params.diff = nil

    params.attribute = dsp.mod.INT

    params.skillType = dsp.skill.ENFEEBLING_MAGIC

    params.bonus = 0

    params.effect = effect

    local resist = applyResistanceEffect(caster, target, spell, params)
    if (resist == 1 or resist == 0.5) then -- effect taken
        duration = duration * resist

        if (target:addStatusEffect(effect,power,3,duration)) then
            spell:setMsg(dsp.msg.basic.MAGIC_ENFEEB_IS)
        else
            spell:setMsg(dsp.msg.basic.MAGIC_NO_EFFECT)
        end

    else -- resist entirely.
        spell:setMsg(dsp.msg.basic.MAGIC_RESIST)
    end

    return effect
end
