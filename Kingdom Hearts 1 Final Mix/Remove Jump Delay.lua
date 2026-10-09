LUAGUI_NAME = "Remove Jump Delay"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Remove Jump Delay"

IsEpicGLVersion = 0x3B3379
IsSteamGLVersion = 0x3B2271
IsSteamJPVersion = 0x3B2221

function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
	epicgames = 0
	stmgames = 0
	stmjpgames = 0
	end
	if ReadLong(IsEpicGLVersion) == 0x7265737563697065 and epicgames == 0 then
		epicgames = 1
		ConsolePrint("Remove Jump Delay (EPIC GL) - installed")
	end
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Remove Jump Delay (Steam GL) - installed")
	end
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Remove Jump Delay (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
WriteShort(0x2A5B6A, 0x9090)
end

---------- Steam Version
if stmgames == 1 then
WriteShort(0x2A7CFA, 0x9090)
end

---------- Steam JP Version
if stmjpgames == 1 then
WriteShort(0x2A7A7A, 0x9090)
end
end

function _OnFrame()
end
