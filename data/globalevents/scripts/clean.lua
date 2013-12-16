function executeClean(interval)
	doCleanMap()
	doBroadcastMessage("O mapa foi limpo a proxima limpeza sera " .. table.concat(string.timediff(interval / 1000)) .. ".")
	return true
end

function onThink(interval)
	doBroadcastMessage("O mapa vai ser limpo em 30 segundos, por favor pegue seus itens!")
	addEvent(executeClean, 240000, interval)
	return true
end
