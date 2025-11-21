LUAGUI_NAME = "Custom Party Member HUD Position"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Custom Party Member HUD Position"

IsEpicGLVersion = 0x3B3379
IsSteamGLVersion = 0x3B2271
IsSteamJPVersion = 0x3B2221

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
		ConsolePrint("Custom Party Member HUD Position (EPIC GL) - installed")
	end
	
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Custom Party Member HUD Position (Steam GL) - installed")
	end
	
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Custom Party Member HUD Position (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
WriteShort(0x528030, 0x0049)
WriteShort(0x528034, 0x00B4)
WriteShort(0x528070, 0x0049)
WriteShort(0x528074, 0x006F)
end

---------- Steam Version
if stmgames == 1 then
WriteShort(0x527330, 0x0049)
WriteShort(0x527334, 0x00B4)
WriteShort(0x527370, 0x0049)
WriteShort(0x527374, 0x006F)
end

---------- Steam JP Version
if stmjpgames == 1 then
WriteShort(0x527330, 0x0049)
WriteShort(0x527334, 0x00B4)
WriteShort(0x527370, 0x0049)
WriteShort(0x527374, 0x006F)
end

end