LUAGUI_NAME = "Disable Boss Death Effect"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Disable Boss Death Effect"

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
		ConsolePrint("Disable Boss Death Effect (EPIC GL) - installed")
	end
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Disable Boss Death Effect (Steam GL) - installed")
	end
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Disable Boss Death Effect (Steam JP) - installed")
	end
	
end
-------------------------------------------------------------------------

function _OnFrame()

if epicgames == 1 then
BlurStart = 0x23407FC
BlurEffect = 0x23405E8
GameSpeed = 0x23405E4
DisableBossEffect()
end

if stmgames == 1 then
BlurStart = 0x233FDFC
BlurEffect = 0x233FBE8
GameSpeed = 0x233FBE4
DisableBossEffect()
end

if stmjpgames == 1 then
BlurStart = 0x233FDFC
BlurEffect = 0x233FBE8
GameSpeed = 0x233FBE4
DisableBossEffect()
end

end

function DisableBossEffect()
if ReadByte(BlurStart) == 1 and ReadByte(BlurEffect) == 1 then
WriteByte(BlurStart, 0)
WriteByte(BlurEffect, 0)
end

if ReadInt(GameSpeed) == 0x3DCCCCCD then
WriteFloat(GameSpeed, 1)
end

end