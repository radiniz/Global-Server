local t = {
	[5907] = {'Bear', 3},
	[13226] = {'Black Sheep', 4},
	[13224] = {'Midnight Panther', 5},
	[13229] = {'Terror Bird', 2},
	[13178] = {'Boar', 10},
	[13236] = {'Crustacea Gigantica', 7},
	[13222] = {'Undead Cavebear', 12},
	[13307] = {'Wailing Widow', 1},
	[13225] = {'Draptor', 6}
}
 
function onUse(cid, item, fromPosition, itemEx, toPosition)
	if isMonster(itemEx.uid) then
		local v = t[item.itemid]
		if v and v[1] == getCreatureName(itemEx.uid) and not getPlayerMount(cid, v[2]) then
			doPlayerAddMount(cid, v[2])
			doRemoveCreature(itemEx.uid)
			doSendMagicEffect(toPosition, CONST_ME_POFF)
            doRemoveItem(item.uid, 1)
		return true
		end
		end
		end