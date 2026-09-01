LUAGUI_NAME = "Lock On Range"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Lock On Range"

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
		ConsolePrint("Lock On Range (EPIC GL) - installed")
	end
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Lock On Range (Steam GL) - installed")
	end
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Lock On Range (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
WriteFloat(0x3E27E4, 99999) -- Lock On Range Default: 1200 
WriteFloat(0x3EEE04, 99999) -- Lock On Untrigger Range Default: 1500
end

---------- Steam Version
if stmgames == 1 then
WriteFloat(0x3E1534, 99999) -- Lock On Range Default: 1200 
WriteFloat(0x3EDFC4, 99999) -- Lock On Untrigger Range Default: 1500
end

---------- Steam JP Version
if stmjpgames == 1 then
WriteFloat(0x3E14C4, 99999) -- Lock On Range Default: 1200 
WriteFloat(0x3EDF54, 99999) -- Lock On Untrigger Range Default: 1500
end
end