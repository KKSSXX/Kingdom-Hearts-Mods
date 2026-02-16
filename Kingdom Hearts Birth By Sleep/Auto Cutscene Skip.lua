LUAGUI_NAME = "Auto Cutscene Skip"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Auto Cutscene Skip"

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
		ConsolePrint("Auto Cutscene Skip (EPIC GL) - installed")
	end
	
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Auto Cutscene Skip (Steam GL) - installed")
	end
	
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Auto Cutscene Skip (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
PauseMenuSkipCheck = 0x10F8CB10
CutscenePointer = 0x10F9F788
CutsceneTimer = ReadLong(ReadLong(CutscenePointer)+0x8,true)+0x44,true
CutsceneID = ReadLong(ReadLong(CutscenePointer)+0x8,true)+0x54,true
CutsceneSkip()
end

---------- Steam Version
if stmgames == 1 then
PauseMenuSkipCheck = 0x10F8C410
CutscenePointer = 0x10F9F088
CutsceneTimer = ReadLong(ReadLong(CutscenePointer)+0x8,true)+0x44,true
CutsceneID = ReadLong(ReadLong(CutscenePointer)+0x8,true)+0x54,true
CutsceneSkip()
end

---------- Steam JP Version
if stmjpgames == 1 then
PauseMenuSkipCheck = 0x10F8C410-0x1000
CutscenePointer = 0x10F9F088-0x1000
CutsceneTimer = ReadLong(ReadLong(CutscenePointer)+0x8,true)+0x44,true
CutsceneID = ReadLong(ReadLong(CutscenePointer)+0x8,true)+0x54,true
CutsceneSkip()
end

end

function CutsceneSkip()

if ReadByte(PauseMenuSkipCheck) == 3 or ReadByte(PauseMenuSkipCheck) == 19 or ReadByte(PauseMenuSkipCheck) == 2 then
if ReadLong(CutscenePointer) > 0 then
	if ReadFloat(CutsceneTimer, true) > 1 and ReadFloat(CutsceneID) ~ 0x0000010F then
		WriteFloat(CutsceneTimer, 99999, true)
	end
end
end

end
