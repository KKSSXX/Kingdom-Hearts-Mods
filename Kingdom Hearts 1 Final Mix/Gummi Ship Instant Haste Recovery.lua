LUAGUI_NAME = "Gummi Ship Instant Haste Recovery"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Gummi Ship Instant Haste Recovery"

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
	
	if ReadLong(IsEpicGLVersion) == 0x7265737563697065 and epicgames == 0 then
		epicgames = 1
		ConsolePrint("Gummi Ship Instant Haste Recovery (EPIC GL) - installed")
	end
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Gummi Ship Instant Haste Recovery (Steam GL) - installed")
	end
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Gummi Ship Instant Haste Recovery (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
WriteShort(0x232A8F, 0x9090)
end

---------- Steam Version
if stmgames == 1 then
WriteShort(0x234BEF, 0x9090)
end

---------- Steam JP Version
if stmjpgames == 1 then
WriteShort(0x23496F, 0x9090)
end

end
-------------------------------------------------------------------------
function _OnFrame()

end