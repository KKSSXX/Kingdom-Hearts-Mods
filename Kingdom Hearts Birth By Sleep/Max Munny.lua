LUAGUI_NAME = "Max Munny"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Max Munny"

IsEpicGLVersion = 0x68D229
IsSteamGLVersion = 0x68D451
IsSteamJPVersion = 0x68C401


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
		ConsolePrint("Max Munny (EPIC GL) - installed")
	end
	
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Max Munny (Steam GL) - installed")
	end
	
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Max Munny (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
WriteInt(0x10FA6944, 99999)
WriteInt(0x10F9F5B4, 99999)
end

---------- Steam Version
if stmgames == 1 then
WriteInt(0x10FA6244, 99999)
WriteInt(0x10F9EEB4, 99999)
end

---------- Steam JP Version
if stmjpgames == 1 then
WriteInt(0x10FA6244-0x1000, 99999)
WriteInt(0x10F9EEB4-0x1000, 99999)
end

end