LUAGUI_NAME = "Instant Flick Rush Win"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Instant Flick Rush Win"

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
		ConsolePrint("Instant Flick Rush Win (EPIC GL) - installed")
	end
	
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Instant Flick Rush Win (Steam GL) - installed")
	end
	
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Instant Flick Rush Win (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
InstantWin = 0x14C63B
Score = 0x146801
InstantFlickRush()
end

---------- Steam Version
if stmgames == 1 then
InstantWin = 0x14C5CB
Score = 0x146791
InstantFlickRush()
end

---------- Steam JP Version
if stmjpgames == 1 then
InstantWin = 0x14C5CB
Score = 0x146791
InstantFlickRush()
end

end

function InstantFlickRush()
WriteArray(InstantWin, {0x4D, 0x85, 0xE4, 0x75})
WriteShort(Score, 0x9090)
end