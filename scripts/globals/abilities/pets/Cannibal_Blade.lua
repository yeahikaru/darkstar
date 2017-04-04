---------------------------------------------------
-- Cannibal Blade
---------------------------------------------------

require("scripts/globals/status")
require("scripts/globals/settings")
require("scripts/globals/weaponskills")

---------------------------------------------------

function onMobSkillCheck(target, automaton, skill)
    local master = automaton:getMaster()
    local effects = master:countEffect(EFFECT_DARK_MANEUVER)
    if effects > 0 then
        return effects
    else
        return -1
    end
end

function onAutomatonAbility(automaton, target, skill, tp, master, action)
    local params = {
        numHits = 1,
        atkmulti = 0,
        accBonus = 1000,
        weaponDamage = automaton:getSkillLevel(22),
        weaponType = SKILL_SWD,
        ftp100 = 0.5,
        ftp200 = 0.6,
        ftp300 = 0.8,
        acc100 = 0.0,
        acc200 = 0.0,
        acc300 = 0.0,
        ignoresDef = true,
        ignored100 = 1.0,
        ignored200 = 1.0,
        ignored300 = 1.0,
        str_wsc = 0.0,
        dex_wsc = 0.0,
        vit_wsc = 0.0,
        agi_wsc = 0.0,
        int_wsc = 0.0,
        mnd_wsc = 0.0,
        chr_wsc = 0.0
    }
    skill:setSkillchain(179)

    if USE_ADOULIN_WEAPON_SKILL_CHANGES then
        params.weaponDamage = nil
        params.mnd_wsc = 1.0
        params.ftp100 = 16.0
        params.ftp200 = 23.5
        params.ftp300 = 31.5
    end

    if automaton:checkDistance(target) > 7 then
        if params.weaponDamage then
            params.weaponDamage = params.weaponDamage/4
        else
            params.ftp100 = params.ftp100/4
            params.ftp200 = params.ftp200/4
            params.ftp300 = params.ftp300/4
        end
    end

    local damage = doPhysicalWeaponskill(automaton, target, 0, tp, true, action, false, params)

    if damage > 0 then
        if not target:isUndead() then
            automaton:addHP(damage)
            skill:setMsg(MSG_DRAIN_HP)
        end
    end

    return damage
end
