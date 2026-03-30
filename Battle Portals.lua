LUAGUI_NAME = "Battle Portals"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Battle Portals"

IsEpicGLVersion = 0x7F7109
IsSteamGLVersion = 0x7F7041
IsSteamJPVersion = 0x7F6FF1


-------------------------------------------------------------------------
function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
	epicgames = 0
	stmgames = 0
	stmjpgames = 0
	end
	
	if ReadLong(IsEpicGLVersion) == 0x7265737563697065 and epicgames == 0 then
		epicgames = 1
		ConsolePrint("Battle Portals (EPIC GL) - installed")
	end
	
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Battle Portals (Steam GL) - installed")
	end
	
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Battle Portals (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
WriteShort(0x29F03E, 0x9090)
WriteShort(0x2D7246, 0x9090)
WriteShort(0x2D727E, 0x9090)
end

---------- Steam Version
if stmgames == 1 then
WriteShort(0x29F09E, 0x9090)
WriteShort(0x2D72A6, 0x9090)
WriteShort(0x2D72DE, 0x9090)
end

---------- Steam JP Version
if stmjpgames == 1 then
WriteShort(0x29F09E, 0x9090)
WriteShort(0x2D72A6, 0x9090)
WriteShort(0x2D72DE, 0x9090)
end
	
end
-------------------------------------------------------------------------
function _OnFrame()

end