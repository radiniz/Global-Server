local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE,COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 18)
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT,CONST_ANI_ETHEREALSPEAR)

setCombatFormula(combat, COMBAT_FORMULA_SKILL, 4.5, 4.6, 4.5, 4.6)

local arr= {
{0,0,0,0,0,0,0,0,0,0,0},
{0,0,0,0,0,1,0,0,0,0,0},
{0,0,0,0,1,1,1,0,0,0,0},
{0,0,0,1,1,1,1,1,0,0,0},
{0,0,1,1,1,1,1,1,1,0,0},
{0,1,1,1,1,2,1,1,1,1,0},
{0,0,1,1,1,1,1,1,1,0,0},
{0,0,0,1,1,1,1,1,0,0,0},
{0,0,0,0,1,1,1,0,0,0,0},
{0,0,0,0,0,1,0,0,0,0,0},
{0,0,0,0,0,0,0,0,0,0,0},
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, 
combat, var)
end

