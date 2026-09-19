LUAGUI_NAME = "Enable Drops Anywhere"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Enable Drops Anywhere"

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
		ConsolePrint("Enable Drops Anywhere (EPIC GL) - installed")
	end
	
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Enable Drops Anywhere (Steam GL) - installed")
	end
	
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Enable Drops Anywhere (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
	if ReadByte(0x2D619AC) == 1 then
		WriteByte(0x2D619AC, 0)
	end
end


---------- Steam Version
if stmgames == 1 then
	if ReadByte(0x2D60FAC) == 1 then
		WriteByte(0x2D60FAC, 0)
	end
end

---------- Steam Version
if stmjpgames == 1 then
	if ReadByte(0x2D60FAC) == 1 then
		WriteByte(0x2D60FAC, 0)
	end
end


end