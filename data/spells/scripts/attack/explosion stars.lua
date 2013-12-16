local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_BLOCKARMOR, true)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 11)
setCombatParam(combat, COMBAT_PARAM_USECHARGES, true)

function onGetFormulaValues(cid, level, skill, attack, factor)
	local skillTotal, levelTotal = skill + attack * 9, level / 5 * 4
	return -(skillTotal / 3 + levelTotal), -(skillTotal + levelTotal)
end

setCombatCallback(combat, CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

function onCastSpell(cid, var)
        return doCombat(cid, combat, var)
end

function onCastSpell(cid, var)  
if vip.hasVip(cid) == FALSE then 
doPlayerSendCancel(cid, "Desculpe,Só jogadores vips usam está magia.")   
else   
return doCombat(cid, combat, var)   
end      
return TRUE    
end 