function onLogout(cid)

        
if getPlayerStorageValue(cid, 36901) > 0 and getPlayerStorageValue(cid, 35700) < 1 then
                
doPlayerSetStorageValue(cid, 36901, 0)
                
		else
        if isPlayer(cid) and getGlobalStorageValue(cid,35734,1) then
                setGlobalStorageValue(cid,35734,-1)
        end
   end
return TRUE

end