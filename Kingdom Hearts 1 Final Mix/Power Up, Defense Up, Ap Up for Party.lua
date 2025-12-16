LUAGUI_NAME = "Power Up, Defense Up, Ap Up for Party"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Power Up, Defense Up, Ap Up for Party"

--- Version Check
IsEpicGLVersion = 0x3B3379
IsSteamGLVersion = IsEpicGLVersion-0x1108
IsSteamJPVersion = IsEpicGLVersion-0x1158

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
		ConsolePrint("Power Up, Defense Up, Ap Up for Party (EPIC GL) - installed")
	end
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Power Up, Defense Up, Ap Up for Party (Steam GL) - installed")
	end
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Power Up, Defense Up, Ap Up for Party (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
lol = 0x2D25D68
WriteByte(lol, 1)
WriteByte(lol+0x14, 1)
WriteByte(lol+0x28, 1)
end

---------- Steam Version
if stmgames == 1 then
lol = 0x2D25368
WriteByte(lol, 1)
WriteByte(lol+0x14, 1)
WriteByte(lol+0x28, 1)
end

---------- Steam JP Version
if stmjpgames == 1 then
lol = 0x2D25368
WriteByte(lol, 1)
WriteByte(lol+0x14, 1)
WriteByte(lol+0x28, 1)
end

end