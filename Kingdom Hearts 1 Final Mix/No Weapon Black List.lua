LUAGUI_NAME = "No Weapon Black List"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "No Weapon Black List"

IsEpicGLVersion = 0x3B3379
IsSteamGLVersion = 0x3B2271
IsSteamJPVersion = 0x3B2221

---------------------------
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
		ConsolePrint("No Weapon Black List (EPIC GL) - installed")
	end
	
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("No Weapon Black List (Steam GL) - installed")
	end
	
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("No Weapon Black List (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
WriteByte(0x546020, 0)
WriteByte(0x546024, 0)
WriteByte(0x546028, 0)
WriteByte(0x54602C, 0)
end


---------- Steam Version
if stmgames == 1 then
WriteByte(0x545330, 0)
WriteByte(0x545334, 0)
WriteByte(0x545338, 0)
WriteByte(0x54533C, 0)
end

---------- Steam JP Version
if stmjpgames == 1 then
WriteByte(0x545330, 0)
WriteByte(0x545334, 0)
WriteByte(0x545338, 0)
WriteByte(0x54533C, 0)
end


end