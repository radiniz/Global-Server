local save = {}
function saveRepeat(cid)
        if not isPlayer(cid) then return true end
        doPlayerSave(cid)
        doPlayerSendTextMessage(cid,19, '')
        save[cid] = addEvent(saveRepeat, math.random(15,43) *60*1000, cid)
end
function onLogin(cid)
        save[cid] = addEvent(saveRepeat, math.random(15,43)*60*1000, cid)
        return true
end
function onLogout(cid)
        stopEvent(save[cid])
        return true
end