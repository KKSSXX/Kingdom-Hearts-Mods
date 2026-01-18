LUAGUI_NAME = "Summon Time Multiplier"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Summon Time Multiplier"

Multiplier = 5

--- Version Check
IsEpicGLVersion = 0x3B3379
IsSteamGLVersion = IsEpicGLVersion-0x1108
IsSteamJPVersion = IsEpicGLVersion-0x1158

-------------------------------------------------------------------------
function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
	epicgames = 0
	stmgames = 0
	stmjpgames = 0
	end
	
	if ReadLong(IsEpicGLVersion) == 0x7265737563697065 and epicgames == 0 then
		epicgames = 1
		ConsolePrint("Summon Time Multiplier (EPIC GL) - installed")
	end
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Summon Time Multiplier (Steam GL) - installed")
	end
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Summon Time Multiplier (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
WriteInt(0x287131, 3000*Multiplier) 
end

---------- Steam Version
if stmgames == 1 then
WriteInt(0x2892B1, 3000*Multiplier) 
end

---------- Steam JP Version
if stmjpgames == 1 then
WriteInt(0x289031, 3000*Multiplier) 
end

end
-------------------------------------------------------------------------
function _OnFrame()

end