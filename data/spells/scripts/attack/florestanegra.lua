local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_POISONDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_PLANTATTACK)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -2.0, -150, -1.6, -150)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_EARTH)
setCombatParam(combat2, COMBAT_PARAM_CREATEITEM, 1499)


local area = createCombatArea(AREA_CROSS5X5)
setCombatArea(combat, area)
setCombatArea(combat2, area)

function onCastSpell(cid, var)
	doCombat(cid, combat, var)
	return doCombat(cid, combat2, var)
end