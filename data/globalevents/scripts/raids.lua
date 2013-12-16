local storage = 1344
local raids = {
        "Morgaroth",
        "Ghazbaran",
        "Undead Jester",
        "grynch clan goblin",
        "Dryads",
	 "pantera",
	 "feverish citizen",
        "Halloweenhare",
        "Hornedfox",
        "Necropharus",
        "Wolfsraid",
        "draptor",
        "UndeadArmy",
        "UndeadDarashia",
        "The Old Widow",
        "Scarabs",
        "Rats",
        "Quara",
        "Pirates",
        "Orshabaal",
        "Vampire",
        "OrcsThais",
        "Ferumbras",
        "Fernfang",
        "Orcs no Estepe de Zao",
        "Elfs",
        "crustacea",
        "Demodras",
        "Tiquandas Revenge",
        "Barbarian",
	 "Dragonling",
        "Zulazza the Corruptor",
	 "Zevelong Duskbringer",
        "undead cavebear",
}
function onThink(interval, lastExecution, thinkInterval)
        if getGlobalStorageValue(storage) == -1 or getGlobalStorageValue(storage) < os.time() then
                executeRaid(raids[math.random(1, #raids)])
                setGlobalStorageValue(storage, os.time() + 9 * 60 * 60)
        end
        return TRUE
end