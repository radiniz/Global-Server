local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 26)
setAttackFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 40, 40, 49, 50)

local area = createCombatArea(AREA_CROSS5X5)
setCombatArea(combat, area)

function onCastSpell(cid, var)  
if vip.hasVip(cid) == FALSE then 
doPlayerSendCancel(cid, "Desculpe,Só jogadores vips usam está magia.")   
else   
return doCombat(cid, combat, var)   
end      
return TRUE    
end
