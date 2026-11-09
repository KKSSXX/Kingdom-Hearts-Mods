LUAGUI_NAME = "Monstro Animation Skip"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Monstro Animation Skip"

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
		ConsolePrint("Monstro Animation Skip (EPIC GL) - installed")
	end
	
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Monstro Animation Skip (Steam GL) - installed")
	end
	
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Monstro Animation Skip (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
MonstroTimer = 0x23990A8
MonstroAnimationTimer = 0x268D160
MonstroAnimSkip()
end


---------- Steam Version
if stmgames == 1 then
MonstroTimer = 0x2382DD8
MonstroAnimationTimer = 0x268C770
MonstroAnimSkip()
end

---------- Steam JP Version
if stmjpgames == 1 then
MonstroTimer = 0x2382DD8
MonstroAnimationTimer = 0x268C770
MonstroAnimSkip()
end

end

function MonstroAnimSkip()
if ReadFloat(MonstroTimer) <= 610 then
WriteFloat(MonstroTimer, 0)
WriteFloat(MonstroAnimationTimer, 900)
end
end