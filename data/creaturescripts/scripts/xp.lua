CreatureEventChecker = function(event, ...) -- Colex 
    if isCreature(arg[1]) then 
        event(unpack(arg)) 
    end 
end 
 
creatureEvent = function(event, delay, ...) -- Colex 
    addEvent(CreatureEventChecker, delay, event, unpack(arg)) 
end 
 
function onLogin(cid) 
time = 1 ------ TIME IN MINUTES 
    if os.time()-getPlayerStorageValue(cid, 62164) < time *60 then 
       doPlayerSetExperienceRate(cid, 2) 
       creatureEvent(doPlayerSetExperienceRate, (time*60-(os.time()-getPlayerStorageValue(cid, 62164))) * 1000, cid, 1) 
       creatureEvent(setPlayerStorageValue, (time*60-(os.time()-getPlayerStorageValue(cid, 62164))) * 1000 , cid, 62164, 0) 
 
       for i = (time*60-(os.time()-getPlayerStorageValue(cid, 62164))), 1, -1 do 
       local a = math.floor(i/60) .. ":" .. i - (60 * math.floor(i/60)) 
       if #a < 4 then 
       a = string.sub(a,1,2) .. "0" .. string.sub(a, 3) 
       end 
       if i == (time*60-(os.time()-getPlayerStorageValue(cid, 62164))) then 
       creatureEvent(doPlayerSendCancel, (time*60-(os.time()-getPlayerStorageValue(cid, 62164)))*1000, cid, "The effect of the double experience potion ended.") 
       end 
       creatureEvent(doPlayerSendCancel, ((time*60-(os.time()-getPlayerStorageValue(cid, 62164)))-i)*1000, cid, "The effect of the double experience will end in "..a..".") 
       end 
    end 
return TRUE 
end