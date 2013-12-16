function onSay(cid, words, param)

    function pairsByKeys (t, f)
      local a = {}
      for n in pairs(t) do table.insert(a, n) end
      table.sort(a, f)
      local i = 0
      local iter = function ()
        i = i + 1
        if a[i] == nil then return nil
        else return a[i], t[a[i]]
        end
      end
      return iter
    end

local m = {
["crystalcrusher"] = {storage = 101001,count = 100},
["cliff strider"] = {storage = 101002,count = 120}, 
["ironblight"] = {storage = 101003,count = 90},
["lava golem"] = {storage = 101004,count = 100},
["orewalker"] = {storage = 101005,count = 150},
["hideous fungus"] = {storage = 101006,count = 200},
["humongous fungus"] = {storage = 101007,count = 180},
["damaged crystal golem"] = {storage = 101008,count = 100},
["magma crawler"] = {storage = 101009,count = 140},
["lost berserker"] = {storage = 101010,count = 110},
["enraged crystal golem"] = {storage = 101011,count = 60},
["infected weeper"] = {storage = 101012,count = 200},
["weeper"] = {storage = 101013,count = 150},
["wiggler"] = {storage = 101014,count = 80},
["vulcongra"] = {storage = 101015,count = 120},
}

local str = ""
str = str .. "Task Completed :\n\n"
for k, v in pairsByKeys(m) do
local contagem = getPlayerStorageValue(cid, v.storage)
if(contagem == -1) then 
contagem = 1 
end 
str = str..k.." = ["..((contagem)-1).."/"..v.count.."]\n"
end
str = str .. "" 
return doShowTextDialog(cid, 8983, str) 
end