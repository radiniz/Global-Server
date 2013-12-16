local ranks = 
{
	['fist'] = {SKILL_FIST},
	['club'] = {SKILL_CLUB},
	['sword'] = {SKILL_SWORD},
	['axe'] = {SKILL_AXE},
	['distance'] = {SKILL_DISTANCE},
	['shield'] = {SKILL_SHIELD},
	['fish'] = {SKILL_FISHING},
	['magic'] = {SKILL__MAGLEVEL},
	['level'] = {SKILL__LEVEL}
}

function onSay(cid, words, param)
         local msg = string.lower(param)
         if ranks[msg] ~= nil then
            str = getHighscoreString((ranks[msg][1]))
         else
            str = getHighscoreString((SKILL__LEVEL))
         end
         doPlayerPopupFYI(cid, str)
         return TRUE
end