LUAGUI_NAME = "Gummi Ship Allow All Names"
LUAGUI_AUTH = "Gummi Ship Allow All Names"
LUAGUI_DESC = "No Censorship for Ship Names"

IsEpicGLVersion = 0x3B3379
IsSteamGLVersion = IsEpicGLVersion-0x1108
IsSteamJPVersion = IsEpicGLVersion-0x1158

function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
	epicgames = 0
	stmgames = 0
	stmjpgames = 0
	end
	
	if ReadLong(IsEpicGLVersion) == 0x7265737563697065 and epicgames == 0 then
		epicgames = 1
		ConsolePrint("Gummi Ship Allow All Names (EPIC GL) - installed")
	end
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Gummi Ship Allow All Names (Steam GL) - installed")
	end
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Gummi Ship Allow All Names (Steam JP) - installed")
	end
	
	if epicgames == 1 then
		WriteByte(0x389C36, 0x83)
	end

	if stmgames == 1 then
		WriteByte(0x389946, 0x83)
	end

	if stmjpgames == 1 then
		WriteByte(0x3896C6, 0x83)
	end

end

function _OnFrame()

end
