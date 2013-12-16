function onSay(cid, words, param)
pos = {x=32369, y=32241, z=7}
if words == '/t' then
doTeleportThing(cid, pos)
doSendMagicEffect(pos, 10)
return TRUE
end
end