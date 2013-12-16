--Created with Peegarapa--
local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE,COMBAT_DEATHDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 5)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC , -6, -1.5, -8, -2.5)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE,COMBAT_DEATHDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 5)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC , -6, -1.0, -8, -2.0)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE,COMBAT_DEATHDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 17)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC , -6, -1.0, -8, -1.5)

local combat4 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE,COMBAT_DEATHDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, 17)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC , -6, -1.8, -8, -1.8)

local combat5 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE,COMBAT_DEATHDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, 17)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC , -6, -1.8, -8, -1.8)


local combat6 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE,COMBAT_DEATHDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, 17)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC , -6, -1.8, -8, -1.8)


local combat7 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE,COMBAT_DEATHDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, 17)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC , -6, -1.8, -8, -1.8)

local combat8 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE,COMBAT_DEATHDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, 17)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC , -6, -1.8, -8, -1.8)


arr1 = {
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0},
{0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0},
{1, 1, 0, 1, 0, 3, 1, 0, 1, 0, 1},
{0, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0},
{0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

arr2 = {
{0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{1, 0, 1, 0, 1, 3, 0, 1, 0, 1, 1},
{0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0},
{0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
}

arr3 = {
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0},
{0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0},
{1, 1, 0, 1, 0, 3, 1, 0, 1, 0, 1},
{0, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0},
{0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

arr4 = {
{0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{1, 0, 1, 0, 1, 3, 0, 1, 0, 1, 1},
{0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0},
{0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
}

arr5 = {
{0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{1, 0, 1, 0, 1, 3, 0, 1, 0, 1, 1},
{0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0},
{0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
}

arr6 = {
{0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{1, 0, 1, 0, 1, 3, 0, 1, 0, 1, 1},
{0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0},
{0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
}

arr7 = {
{0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{1, 0, 1, 0, 1, 3, 0, 1, 0, 1, 1},
{0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0},
{0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
}

arr8 = {
{0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{1, 0, 1, 0, 1, 3, 0, 1, 0, 1, 1},
{0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0},
{0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
}



local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)
local area3 = createCombatArea(arr3)
local area4 = createCombatArea(arr4)
local area1 = createCombatArea(arr5)
local area2 = createCombatArea(arr6)
local area3 = createCombatArea(arr7)
local area4 = createCombatArea(arr8)

setCombatArea(combat1, area1)
setCombatArea(combat2, area2)
setCombatArea(combat3, area3)
setCombatArea(combat4, area4)
setCombatArea(combat5, area5)
setCombatArea(combat6, area6)
setCombatArea(combat7, area7)
setCombatArea(combat8, area8)

local function onCastSpell1(parameters)
doCombat(parameters.cid, parameters.combat1, parameters.var)
end

local function onCastSpell2(parameters)
doCombat(parameters.cid, parameters.combat2, parameters.var)
end

local function onCastSpell3(parameters)
doCombat(parameters.cid, parameters.combat3, parameters.var)
end

local function onCastSpell4(parameters)
doCombat(parameters.cid, parameters.combat4, parameters.var)
end


function onCastSpell(cid, var)
local parameters = { cid = cid, var = var, combat1 = combat1, combat2 = combat2, combat3 = combat3, combat4 = combat4 }
addEvent(onCastSpell1, 101, parameters)
addEvent(onCastSpell2, 501, parameters)
addEvent(onCastSpell3, 100, parameters)
addEvent(onCastSpell4, 500, parameters)

return TRUE

end