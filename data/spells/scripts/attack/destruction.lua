local acombat1 = createCombatObject()
local acombat2 = createCombatObject()
local acombat3 = createCombatObject()
local acombat4 = createCombatObject()
local acombat5 = createCombatObject()
local acombat6 = createCombatObject()
local acombat7 = createCombatObject()
local acombat8 = createCombatObject()


local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 32)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -0.5, -1, 3.8, -9)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 32)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -9, -6, 0.8, -0.9)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)
setCombatParam(combat3, COMBAT_PARAM_DISTANCEEFFECT, 32)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -5, -1, 3.8, -9)

local combat4 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_DROWNDAMAGE)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)
setCombatParam(combat4, COMBAT_PARAM_DISTANCEEFFECT, 32)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, -2, -1, -3.8, -9)

local combat5 = createCombatObject()
setCombatParam(combat5, COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)
setCombatParam(combat5, COMBAT_PARAM_DISTANCEEFFECT, 32)
setCombatFormula(combat5, COMBAT_FORMULA_LEVELMAGIC, -7, -1, -0.8, -9)

local combat6 = createCombatObject()
setCombatParam(combat6, COMBAT_PARAM_TYPE, COMBAT_HOLYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, 1)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)
setCombatParam(combat6, COMBAT_PARAM_DISTANCEEFFECT, 32)
setCombatFormula(combat6, COMBAT_FORMULA_SKILL, -1, -15, -30.8, -95)



local area1 = createCombatArea(AREA_WAVE1)
local area2 = createCombatArea(AREA_CIRCLE2X2)
local area3 = createCombatArea(AREA_CIRCLE3X3)
local area4 = createCombatArea(AREA_CROSS5X5)
local area5 = createCombatArea(AREA_CROSS6X6)
local area6 = createCombatArea(AREADIAGONAL_WALLFIELD)
setCombatArea(acombat1, area1)
setCombatArea(acombat2, area2)
setCombatArea(acombat3, area3)
setCombatArea(acombat4, area4)
setCombatArea(acombat5, area5)
setCombatArea(acombat6, area6)


function onTargetTile(cid, pos)
doCombat(cid,combat1,positionToVariant(pos))
end

function onTargetTile2(cid, pos)
doCombat(cid,combat2,positionToVariant(pos))
end

function onTargetTile3(cid, pos)
doCombat(cid,combat3,positionToVariant(pos))
end

function onTargetTile4(cid, pos)
doCombat(cid,combat4,positionToVariant(pos))
end

function onTargetTile5(cid, pos)
doCombat(cid,combat5,positionToVariant(pos))
end

function onTargetTile6(cid, pos)
doCombat(cid,combat6,positionToVariant(pos))
end



setCombatCallback(acombat1, CALLBACK_PARAM_TARGETTILE, "onTargetTile")

setCombatCallback(acombat2, CALLBACK_PARAM_TARGETTILE, "onTargetTile2")

setCombatCallback(acombat3, CALLBACK_PARAM_TARGETTILE, "onTargetTile3")

setCombatCallback(acombat4, CALLBACK_PARAM_TARGETTILE, "onTargetTile4")

setCombatCallback(acombat5, CALLBACK_PARAM_TARGETTILE, "onTargetTile5")

setCombatCallback(acombat6, CALLBACK_PARAM_TARGETTILE, "onTargetTile6")





local function onCastSpell1(parameters)
doCombat(parameters.cid, acombat1, parameters.var)
end

local function onCastSpell2(parameters)
doCombat(parameters.cid, acombat2, parameters.var)
end

local function onCastSpell3(parameters)
doCombat(parameters.cid, acombat3, parameters.var)
end

local function onCastSpell4(parameters)
doCombat(parameters.cid, acombat4, parameters.var)
end

local function onCastSpell5(parameters)
doCombat(parameters.cid, acombat5, parameters.var)
end

local function onCastSpell6(parameters)
doCombat(parameters.cid, acombat6, parameters.var)
end





function onCastSpell(cid, var)
doSendAnimatedText(getPlayerPosition(cid), "HAHAHAHAHA", TEXTCOLOR_DARKRED)
local parameters = { cid = cid, var = var}
addEvent(onCastSpell1, 100, parameters)
addEvent(onCastSpell2, 600, parameters)
addEvent(onCastSpell3, 1100, parameters)
addEvent(onCastSpell2, 1800, parameters)
addEvent(onCastSpell3, 2200, parameters)
addEvent(onCastSpell2, 2600, parameters)
addEvent(onCastSpell3, 2900, parameters)
addEvent(onCastSpell4, 3300, parameters)
addEvent(onCastSpell2, 3800, parameters)
addEvent(onCastSpell3, 4300, parameters)
addEvent(onCastSpell5, 5000, parameters)
addEvent(onCastSpell6, 5800, parameters)
return TRUE
end