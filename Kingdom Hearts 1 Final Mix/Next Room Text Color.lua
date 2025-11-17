LUAGUI_NAME = "Next Room Text Color"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Next Room Text Color"

--- Version Check
IsEpicGLVersion = 0x3B3379
IsSteamGLVersion = IsEpicGLVersion-0x1108
IsSteamJPVersion = IsEpicGLVersion-0x1158

-- 0x11 = Black
-- 0x12 = Red
-- 0x13 = Blue
-- 0x14 = Green
-- 0x20 = White
-- 0x22 = Red 2
-- 0x23 = Blue 2
-- 0x24 = Green 2
-- 0x31 = Purple
-- 0x32 = Red 3
-- 0x33 = Blue 3
-- 0x34 = Green 3

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
		ConsolePrint("Next Room Text Color (EPIC GL) - installed")
	end
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Next Room Text Color (Steam GL) - installed")
	end
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Next Room Text Color (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
WriteInt(0x173568, 0x33)
end

---------- Steam Version
if stmgames == 1 then
WriteInt(0x1755F5, 0x33)
end

---------- Steam JP Version
if stmjpgames == 1 then
WriteInt(0x175375, 0x33)
end

end
