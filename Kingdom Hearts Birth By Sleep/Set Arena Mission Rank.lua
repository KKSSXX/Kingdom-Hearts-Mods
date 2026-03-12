LUAGUI_NAME = "Set Arena Mission Rank"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Set Arena Mission Rank"

IsEpicGLVersion = 0x68D229
IsSteamGLVersion = 0x68D451
IsSteamJPVersion = 0x68C401

DayofReckoning = 0
WheelofMissfortune = 0
RiskyRiches = 0
WeaverFever = 0
SinisterSentinel = 0
DeadRinger = 0
CombinedThread = 0
TreasureTussle = 0
HarshPunishment = 0
ATimetoChill = 0
CopycatCrisis = 0
KeepersoftheArena = 0
MonsteroftheSea = 0
VillainsVendetta = 0
LightsLessons = 0
PeeringintoDarkness = 0
-------------------------------------------------------------------------
function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
	epicgames = 0
	stmgames = 0
	stmjpgames = 0
	end
	
		if ReadLong(IsEpicGLVersion) == 0x7265737563697065 and epicgames == 0 then
		epicgames = 1
		ConsolePrint("Set Arena Mission Rank (EPIC GL) - installed")
	end
	
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Set Arena Mission Rank (Steam GL) - installed")
	end
	
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Set Arena Mission Rank (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
ArenaLevel = 0x81F690
SetArenaRank()
end

---------- Steam Version
if stmgames == 1 then
ArenaLevel = 0x81E690
SetArenaRank()
end

---------- Steam JP Version
if stmjpgames == 1 then
ArenaLevel = 0x81E690-0x1000
SetArenaRank()
end
	
end
-------------------------------------------------------------------------
function _OnFrame()
end

function SetArenaRank()
WriteByte(ArenaLevel, DayofReckoning)
WriteByte(ArenaLevel+0x1, WheelofMissfortune)
WriteByte(ArenaLevel+0x2, RiskyRiches)
WriteByte(ArenaLevel+0x3, WeaverFever)
WriteByte(ArenaLevel+0x4, SinisterSentinel)
WriteByte(ArenaLevel+0x5, DeadRinger)
WriteByte(ArenaLevel+0x6, CombinedThread)
WriteByte(ArenaLevel+0x7, TreasureTussle)
WriteByte(ArenaLevel+0x8, HarshPunishment)
WriteByte(ArenaLevel+0x9, ATimetoChill)
WriteByte(ArenaLevel+0xA, CopycatCrisis)
WriteByte(ArenaLevel+0xB, KeepersoftheArena)
WriteByte(ArenaLevel+0xC, MonsteroftheSea)
WriteByte(ArenaLevel+0xD, VillainsVendetta)
WriteByte(ArenaLevel+0xE, LightsLessons)
WriteByte(ArenaLevel+0xF, PeeringintoDarkness)
end