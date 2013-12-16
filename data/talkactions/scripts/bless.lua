-- !blessing by artofwork
local bless = {1, 2, 3, 4, 5}
local cost = 35000
local maxlevel = 50000

function onSay(cid, words, param)
local lvl = getPlayerLevel(cid)
local new_cost = 35000
local target = getPlayerGUID(cid)


        for i = 1, table.maxn(bless) do
                if(getPlayerBlessing(cid, bless[i])) then
                        doPlayerSendCancel(cid, "Você já tem todas as blessings.")
                        return TRUE
                end
        end
        
        if (getPlayerLevel(cid) >= maxlevel)  then
                if(doPlayerRemoveMoney(cid, new_cost) == TRUE) then
                        for i = 1, table.maxn(bless) do
                        doPlayerAddBlessing(cid, bless[i])
						end
                        doPlayerSendTextMessage(cid,18,"Você acaba de comprar uma blessing, e com ela veio um AOL, use-o pois a bless pode falhar")
						local bp = doPlayerAddItem(cid, 2173, 1)
                else
                doPlayerPopupFYI(cid, "Você precisa de "..cost.." para comprar uma bless.")
                end
        
        elseif(getPlayerLevel(cid) < maxlevel) then
                if(doPlayerRemoveMoney(cid, cost) == TRUE) then
                        for i = 1, table.maxn(bless) do
                        doPlayerAddBlessing(cid, bless[i])
                        end
                        doPlayerSendTextMessage(cid,18,"Você acaba de comprar uma blessing, e com ela veio um AOL, use-o pois a bless pode falhar")
						local bp = doPlayerAddItem(cid, 2173, 1)
                else
                        doPlayerPopupFYI(cid, "Você precisa de "..cost.." para comprar uma bless.")
                end
        end
        return FALSE
end