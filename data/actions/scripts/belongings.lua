function onUse(cid, item, frompos, item2, topos)

presente = math.random(1,15)
pos = getPlayerPosition(cid)

--surprise bag blue--
if presente == 1 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,2237,1) --cookie
doRemoveItem(item.uid,1)

elseif presente == 2 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,2232,1) --cream cake
doRemoveItem(item.uid,1)

elseif presente == 3 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,6577,1) --party cake
doRemoveItem(item.uid,1)

elseif presente == 4 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,2220,1) --bar of chocolate
doRemoveItem(item.uid,1)

elseif presente == 5 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,2227,1) -- party hat
doRemoveItem(item.uid,1)

elseif presente == 6 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,5894,1) -- red baloon
doRemoveItem(item.uid,1)

elseif presente == 7 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,13508,10) -- green baloon
doRemoveItem(item.uid,1)

elseif presente == 8 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,13926,10) -- candy
doRemoveItem(item.uid,1)

elseif presente == 9 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,13925,10) -- firework rocket
doRemoveItem(item.uid,1)

elseif presente == 10 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,5879,1) -- party trumpet
doRemoveItem(item.uid,1)

elseif presente == 11 then
doSendMagicEffect(pos,27)
doPlayerAddItem(cid,2114,1) -- piggy bank
doRemoveItem(item.uid,1)
end

return 1
end