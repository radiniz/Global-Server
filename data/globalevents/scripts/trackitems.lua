tablesToCheck = {"player_items", "player_depotitems"}
 
function onStartup()
	local text, final = "", ""
	local filex = "data/logs/duplicated.txt"
	local f = io.open(filex, "a+")
	for i = 1, table.maxn(tablesToCheck) do
		local query = db.getResult("SELECT *, SUBSTRING(CONVERT(attributes USING latin1) FROM 18) AS 'track' FROM " .. tablesToCheck[i] .. " WHERE SUBSTRING(CONVERT(attributes USING latin1) FROM 18) IN (SELECT SUBSTRING(CONVERT(attributes USING latin1) FROM 18) FROM " .. tablesToCheck[i] .. " WHERE CONVERT(attributes USING latin1) LIKE '%serial%' GROUP BY SUBSTRING(CONVERT(attributes USING latin1) FROM 18) HAVING COUNT(*) > 1)")
		local duplicated = {}
		if query:getID() ~= -1 then
			while(true) do
				text = "[!] -> Deleting item with duplicated serial: [Player: " .. getPlayerNameByGUID(query:getDataInt("player_id")) .. ", Item: " .. query:getDataInt("itemtype") .. ", Count: " .. query:getDataInt("count") .. ", Serial: " .. query:getDataString("track") .."]... "
				local delete = db.executeQuery("delete from " .. tablesToCheck[i] .. " where SUBSTRING(CONVERT(attributes USING latin1) FROM 18) = " .. db.escapeString(query:getDataString("track")) .. ";")
				if delete then
					text = text .. "Success!"
				else
					text = text .. "Failed!"
				end
				final = final .. (final ~= "" and "\n" or "") .. text
				print(text)
				if not query:next() then break end
			end
			if f ~= nil then
				f:write(os.date() .. "\n" .. final .. "\n\n")
				f:close()
			else
				print("[!] -> Cannot save info to file!")
			end
		else
			print("[!] -> Cannot get info, table is empty, there are not items with duplicated serial or you have a problem on the query syntax: " .. tablesToCheck[i] .. ".")
		end
	end
	return true
end