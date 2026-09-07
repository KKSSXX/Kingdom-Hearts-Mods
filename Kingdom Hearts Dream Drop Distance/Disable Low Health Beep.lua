LUAGUI_NAME = "Disable Low Health Beep"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Disable Low Health Beep"

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
end
-------------------------------------------------------------------------
function _OnFrame()

	if ReadLong(IsEpicGLVersion) == 0x7265737563697065 and epicgames == 0 then
		epicgames = 1
		ConsolePrint("Disable Low Health Beep (EPIC GL) - installed")
	end
	
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Disable Low Health Beep (Steam GL) - installed")
	end
	
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Disable Low Health Beep (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
WriteByte(0x1B6FCB, 0xEB)
end

---------- Steam Version
if stmgames == 1 then
WriteByte(0x1B6F5B, 0xEB)
end

---------- Steam JP Version
if stmjpgames == 1 then
WriteByte(0x1B6F5B, 0xEB)
end

end