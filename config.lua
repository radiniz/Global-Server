-- Banishments
banDays = 7

-- Combat settings
worldType = "pvp"
hotkeyAimbotEnabled = "yes"
protectionLevel = 1
killsToRedSkull = 3
killsToBlackSkull = 6
pzLocked = 60000
criticalHitChance = 0
removeAmmoWhenUsingDistanceWeapon = "yes"
removeChargesFromRunes = "yes"
removeChargesFromWeapons = "yes"
timeToDecreaseFrags = 24 * 60 * 60 * 1000
whiteSkullTime = 15 * 60 * 1000
oldConditionAccuracy = "no"
stairJumpExhaustion = 1000
experienceByKillingPlayers = "no"

-- Connection Config
ip = "127.0.0.1"
bindOnlyGlobalAddress = "no"
loginProtocolPort = 7171
gameProtocolPort = 7172
adminProtocolPort = 7171
statusProtocolPort = 7171
maxPlayers = "1000"
motd = "Seja Bem Vindo ao Seu Server Server, Estamos em fase de testes peço que se possivel reportem bugs. Obrigado!"
onePlayerOnlinePerAccount = "yes"
allowClones = "no"
serverName = "Seu Server"
loginMessage = "Seja Bem Vindo ao Seu Server Server, Estamos em fase de testes peço que se possivel reportem bugs. Obrigado!"
adminLogsEnabled = "no"
statusTimeout = 60000
replaceKickOnLogin = "yes"
maxPacketsPerSecond = 25

-- Deaths
-- NOTE: Leave deathLosePercent as -1 if you want to use Tibia's
-- death penalty formula. For the old formula, set it to 10. For
-- no skill/experience loss, set it to 0.
deathLosePercent = -1
deathListEnabled = "yes"
maxDeathRecords = 5

-- Houses
housePriceEachSQM = 1000
houseRentPeriod = "never"

-- Item Usage
timeBetweenActions = 200
timeBetweenExActions = 1000

-- Map
mapName = "realmap"
mapAuthor = "Alisson Felipe"

-- Market
marketEnabled = "yes"
marketOfferDuration = 30 * 24 * 60 * 60
premiumToCreateMarketOffer = "no"
checkExpiredMarketOffersEachMinutes = 60
maxMarketOffersAtATimePerPlayer = 100

-- MySQL
mysqlHost = "127.0.0.1"
mysqlUser = "root"
mysqlPass = "sua senha"
mysqlDatabase = "sua db"
mysqlPort = 3306

-- Misc.
allowChangeOutfit = "yes"
displayGamemastersWithOnlineCommand = "no"
displayOnOrOffAtCharlist = "no"
freePremium = "yes"
kickIdlePlayerAfterMinutes = 15
maxMessageBuffer = 4
noDamageToSameLookfeet = "no"

-- Rates
-- NOTE: rateExp is not used if you have enabled stages in data/XML/stages.xml
rateExp = 5
rateSkill = 3
rateLoot = 3
rateMagic = 3
rateSpawn = 1

-- Server save
-- NOTE: serverSaveHour is the hour of the day when the server save will occur,
-- if you would rather save the server with intervals, disable server save and
-- use autoSaveEachMinutes.
serverSaveEnabled = "no"
serverSaveHour = 10
shutdownAtServerSave = "yes"
cleanMapAtServerSave = "yes"
autoSaveEachMinutes = 15
saveGlobalStorage = "no"

-- Monsters
deSpawnRange = 2
deSpawnRadius = 50

-- Stamina
staminaSystem = "yes"

-- Startup
-- NOTE: defaultPriority only works on Windows and sets process priority.
defaultPriority = "high"
startupDatabaseOptimization = "yes"

-- Storage
passwordType = "sha1"

-- Status server information
ownerName = "Alisson Felipe"
ownerEmail = ""
url = ""
location = "Brazil"
