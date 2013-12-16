function onStepIn(cid, item, pos , fromPosition)



local gnome = {x=32801, y=31798, z=9}


local kazz = {x=32626, y=31863, z=11}


local alpha = {x=32985, y=31864, z=9}


local base = {x=32796, y=31782, z=10}


local war = {x=32998, y=31921, z=10}


local warr = {x=33013, y=31882, z=9}


local wartw = {x=33008, y=31921, z=10}


local basew = {x=33002, y=31918, z=10}


local wartp = {x=33121, y=31975, z=10}


local wartpw = {x=33102, y=31909, z=10}


local res = {x=33010, y=31940, z=11}


local resp = {x=33019, y=31888, z=9}


local cryou = {x=33014, y=31935, z=11}


local qwe = {x=33010, y=31937, z=11}


local qwer = {x=33126, y=31963, z=11}


local qwert = {x=33096, y=31976, z=11}


local qwerty = {x=32989, y=31910, z=12}


local trewq = {x=33021, y=31903, z=9}


local trew = {x=32996, y=31917, z=12}


local tre = {x=32992, y=31912, z=12}


local tr = {x=33097, y=31910, z=12}

local qtre = {x=33073, y=31882, z=12}

	if item.actionid == 8745 then


		doTeleportThing(cid,gnome)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 8746 then


		doTeleportThing(cid,kazz)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 8747 then


		doTeleportThing(cid,alpha)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 8748 then


		doTeleportThing(cid,base)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 8749 then


		doTeleportThing(cid,war)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 8750 then


		doTeleportThing(cid,warr)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 8751 then


		doTeleportThing(cid,wartw)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 8752 then


		doTeleportThing(cid,basew)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 8753 then


		doTeleportThing(cid,wartp)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 8754 then


		doTeleportThing(cid,wartpw)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 8755 then


		doTeleportThing(cid,res)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 8756 then


		doTeleportThing(cid,resp)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 8757 then


		doTeleportThing(cid,cryou)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 8758 then


		doTeleportThing(cid,qwe)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 8759 then


		doTeleportThing(cid,qwer)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 8760 then


		doTeleportThing(cid,qwert)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 8761 then


		doTeleportThing(cid,qwerty)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 8762 then


		doTeleportThing(cid,trewq)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 8763 then


		doTeleportThing(cid,trew)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 8764 then


		doTeleportThing(cid,tre)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 8765 then


		doTeleportThing(cid,tr)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	if item.actionid == 8766 then


		doTeleportThing(cid,qtre)
		doSendMagicEffect(getCreaturePosition(cid),10)
		else
	end
	if item.actionid == 8767 then -- deathstrike
		if getPlayerStorageValue(cid, 924877) < 1 then
			doPlayerSendCancel(cid, "You have to kill the boss before")
			doTeleportThing(cid, fromPosition)
		else
			local p1 = {x = 33017, y = 31873, z = 9}
			doTeleportThing(cid,p1)
			doSendMagicEffect(getCreaturePosition(cid),10)
		end
	end
	if item.actionid == 8768 then -- gnomevil
		if getPlayerStorageValue(cid, 924878) < 1 then
			doPlayerSendCancel(cid, "You have to kill the boss before")
			doTeleportThing(cid, fromPosition)
		else
			local p2 = {x = 33024, y = 31886, z = 9}
			doTeleportThing(cid,p2)
			doSendMagicEffect(getCreaturePosition(cid),10)
		end
	end
	if item.actionid == 8769 then -- abyssador
		if getPlayerStorageValue(cid, 924879) < 1 then
			doPlayerSendCancel(cid, "You have to kill the boss before")
			doTeleportThing(cid, fromPosition)
		else
			local p3 = {x = 33029, y = 31902, z = 9}
			doTeleportThing(cid,p3)
			doSendMagicEffect(getCreaturePosition(cid),10)
		end
	end
    return 1
end
end 
end
end
end
end
end
end
end
end
end
end
end
end 
end
end
end
end
end
end
end
end
