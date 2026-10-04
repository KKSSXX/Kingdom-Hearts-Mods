LUAGUI_NAME = "Ladder Climb Speed"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Ladder Climb Speed"

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
end
-------------------------------------------------------------------------
function _OnFrame()
	if ReadLong(IsEpicGLVersion) == 0x7265737563697065 and epicgames == 0 then
		epicgames = 1
		ConsolePrint("Ladder Climb Speed (EPIC GL) - installed")
	end
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Ladder Climb Speed (Steam GL) - installed")
	end
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Ladder Climb Speed (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
WriteFloat(0x2C62FD, 4)
WriteFloat(0x2C6326, 4)
end

---------- Steam Version
if stmgames == 1 then
WriteFloat(0x2C84AD, 4)
WriteFloat(0x2C84D6, 4)
end

---------- Steam JP Version
if stmjpgames == 1 then
WriteFloat(0x2C822D, 4)
WriteFloat(0x2C8256, 4)
end
end