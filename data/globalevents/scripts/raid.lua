--[[
- hora deve ser exata SERVER
- para fazer o raid tera que ser ex: 00 hour(horas) e 00 minu (minutos)
- para fazer a raid na data e hora no tempo exato, uso "exact"
- para fazer a raid ocorrer todas as semanas (pelo menos 1x na semana) uso "weekly"
- o nome dos dias sao ultilizados apenas para o tipo semanal que devera ser
- "monday", "tuesday", "wednesday", "thursday", "friday", "saturday", "sunday"
- tambem devem estar dentro de uma matriz-> {}
]]

local raids =
        {
                [1] =
                        {
                                name = 'Rats',
                                type = 'weekly',
                                days = {'monday'},
                                hour = 07,
                                minu = 00
                        },
                [2] =
                        {
                                name = 'Ghazbaran',
                                type = 'weekly',
                                days = {'monday'},
                                hour = 15,
                                minu = 00
                        },
                [3] =
                        {
                                name = 'Scarabs',
                                type = 'weekly',
                                days = {'tuesday'},
                                hour = 09,
                                minu = 00
                        },
                [4] =
                        {
                                name = 'Elfs',
                                type = 'weekly',
                                days = {'tuesday'},
                                hour = 14,
                                minu = 00
                        },                        
                [5] =
                        {
                                name = 'Zulazza the Corruptor',
                                type = 'weekly',
                                days = {'tuesday'},
                                hour = 19,
                                minu = 00
                        },
                [6] =
                        {
                                name = 'Wolfsraid',
                                type = 'weekly',
                                days = {'wednesday'},
                                hour = 21,
                                minu = 00
                        },
                [7] =
                        {
                                name = 'OrcsThais',
                                type = 'weekly',
                                days = {'wednesday'},
                                hour = 09,
                                minu = 00
                        },
                [8] =
                        {
                                name = 'The Old Widow',
                                type = 'weekly',
                                days = {'wednesday'},
                                hour = 15,
                                minu = 00
                        },
                [9] =
                        {
                                name = 'Barbarian',
                                type = 'weekly',
                                days = {'thursday'},
                                hour = 10,
                                minu = 00
                        },
                [10] =
                        {
                                name = 'UndeadArmy',
                                type = 'weekly',
                                days = {'thursday'},
                                hour = 15,
                                minu = 00
                        },
                [11] =
                        {
                                name = 'Necropharus',
                                type = 'weekly',
                                days = {'thursday'},
                                hour = 17,
                                minu = 00
                        },                        
                [12] =
                        {
                                name = 'Quara',
                                type = 'weekly',
                                days = {'friday'},
                                hour = 09,
                                minu = 00
                        },
                [13] =
                        {
                                name = 'UndeadDarashia',
                                type = 'weekly',
                                days = {'friday'},
                                hour = 12,
                                minu = 00
                        },
                [14] =
                        {
                                name = 'Morgaroth',
                                type = 'weekly',
                                days = {'friday'},
                                hour = 15,
                                minu = 00
                        },
                [15] =
                        {
                                name = 'pantera',
                                type = 'weekly',
                                days = {'friday'},
                                hour = 23,
                                minu = 59
                        },
                [16] =
                        {
                                name = 'Undead Jester',
                                type = 'weekly',
                                days = {'friday'},
                                hour = 22,
                                minu = 00
                        },
                [17] =
                        {
                                name = 'Pirates',
                                type = 'weekly',
                                days = {'saturday'},
                                hour = 11,
                                minu = 00
                        },
                [18] =
                        {
                                name = 'Crustacea',
                                type = 'weekly',
                                days = {'saturday'},
                                hour = 12,
                                minu = 00
                        },                        
                [19] =
                        {
                                name = 'Undead Cavebear',
                                type = 'weekly',
                                days = {'saturday'},
                                hour = 15,
                                minu = 00
                        },
                [20] =
                        {
                                name = 'Tiquandas Revenge',
                                type = 'weekly',
                                days = {'saturday'},
                                hour = 18,
                                minu = 00
                        },
                [21] =
                        {
                                name = 'Halloweenhare',
                                type = 'weekly',
                                days = {'saturday'},
                                hour = 20,
                                minu = 00
                        },
                 [22] =
                        {
                                name = 'Dryads',
                                type = 'weekly',
                                days = {'saturday'},
                                hour = 21,
                                minu = 00
                        },
                [23] =
                        {
                                name = 'Hornedfox',
                                type = 'weekly',
                                days = {'sunday'},
                                hour = 10,
                                minu = 00
                        },
                [24] =
                        {
                                name = 'Demodras',
                                type = 'weekly',
                                days = {'sunday'},
                                hour = 13,
                                minu = 00
                        },
                [25] =
                        {
                                name = 'Feverish Citizen',
                                type = 'weekly',
                                days = {'sunday'},
                                hour = 16,
                                minu = 00
                        },                        
                [26] =
                        {
                                name = 'Orshabaal',
                                type = 'weekly',
                                days = {'sunday'},
                                hour = 18,
                                minu = 00
                        },
                [27] =
                        {
                                name = 'Ferumbras',
                                type = 'weekly',
                                days = {'sunday'},
                                hour = 22,
                                minu = 00
                        },
                [28] =
                        {
                                name = 'grynch clan goblin',
                                type = 'weekly',
                                days = {'monday'},
                                hour = 18,
                                minu = 00
                        },
                [29] =
                        {
                                name = 'Vampire',
                                type = 'weekly',
                                days = {'tuesday'},
                                hour = 21,
                                minu = 00
                        },
                [30] =
                        {
                                name = 'Fernfang',
                                type = 'weekly',
                                days = {'wednesday'},
                                hour = 17,
                                minu = 00
                        },
                [31] =
                        {
                                name = 'Orcs no Estepe de Zao',
                                type = 'weekly',
                                days = {'wednesday'},
                                hour = 19,
                                minu = 00
                        },
                [32] =
                        {
                                name = 'Dragonling',
                                type = 'weekly',
                                days = {'thursday'},
                                hour = 22,
                                minu = 00
                        },  
		[33] =
                        {
                                name = 'Santa',
                                type = 'weekly',
                                days = {'thursday'},
                                hour = 13,
                                minu = 00
			 },

		[34] =
                        {
                                name = 'Draptor',
                                type = 'weekly',
                                days = {'sunday'},
                                hour = 18,
                                minu = 00
			 },  
		[35] =
                        {
                                name = 'Nomad',
                                type = 'weekly',
                                days = {'monday'},
                                hour = 22,
                                minu = 00
			 },     
		[36] =
                        {
                                name = 'Sir Valorcrest',
                                type = 'weekly',
                                days = {'thursday'},
                                hour = 12,
                                minu = 00
			 },    
		[37] =
                        {
                                name = 'Arachir the Ancient One',
                                type = 'weekly',
                                days = {'sunday'},
                                hour = 12,
                                minu = 00
			 },    
		[38] =
                        {
                                name = 'Zevelong Duskbringer',
                                type = 'weekly',
                                days = {'wednesday'},
                                hour = 16,
                                minu = 00
			 },        
		[39] =
                        {
                                name = 'Diblis The Fair',
                                type = 'weekly',
                                days = {'thursday'},
                                hour = 18,
                                minu = 00
			 }                            
        }
        
local last_execsutes = {}

function onThink(interval, lastExecution, thinkInterval)
        local static_time = os.time()
        for k, raid in ipairs(raids) do
                if (raid.type == 'weekly') then
                        local day = os.date("%A", static_time):lower()
                        if isInArray(raid.days, day) then
                                local hour = tonumber(os.date("%H", static_time))
                                if (raid.hour == hour) then
                                        local minute = tonumber(os.date("%M", static_time))
                                        if (raid.minu == minute) then
                                                local day_number = tonumber(os.date("%d", static_time))
                                                if (last_execsutes[k] ~= day_number) then
                                                        last_execsutes[k] = day_number
                                                        doExecuteRaid(raid.name)
                                                end
                                        end
                                end
                        end
                elseif (raid.type == 'exact') then
                        local month = tonumber(os.date("%m", static_time))
                        if (raid.date.month == month) then
                                local day = tonumber(os.date("%d", static_time))
                                if (raid.date.day == day) then
                                        local hour = tonumber(os.date("%H", static_time))
                                        if (raid.hour == hour) then
                                                local minute = tonumber(os.date("%M", static_time))
                                                if (raid.minu == minute) then
                                                        if (last_execsutes[k] ~= day) then
                                                                last_execsutes[k] = day
                                                                doExecuteRaid(raid.name)
                                                        end
                                                end
                                        end
                                end
                        end
                end
        end
        return true
end