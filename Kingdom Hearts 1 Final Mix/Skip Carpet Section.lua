LUAGUI_NAME = "Skip Carpet Section"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Skip Carpet Section"

IsEpicGLVersion = 0x3B3379
IsSteamGLVersion = 0x3B2271
IsSteamJPVersion = 0x3B2221

function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
	epicgames = 0
	stmgames = 0
	stmjpgames = 0
	end
	
	if ReadLong(IsEpicGLVersion) == 0x7265737563697065 and epicgames == 0 then
		epicgames = 1
		ConsolePrint("Skip Carpet Section (EPIC GL) - installed")
	end
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Skip Carpet Section (Steam GL) - installed")
	end
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Skip Carpet Section (Steam JP) - installed")
	end
end

function _OnFrame()
---------- Epic Games Version
if epicgames == 1 then
World = 0x2340E5C
Room = 0x2340EC4
Spawn = 0x232E908
Event = 0x2340EC8
Tag = 0x22ECA88
Tag2 = 0x22ECA8C
SoraHUD = 0x2812E9C
CarpetSkip()
end

---------- Steam Version
if stmgames == 1 then
World = 0x233FE84
Room = 0x233FE8C
Spawn = 0x232DF18
Event = 0x233FE90
Tag = 0x22EC0A8
Tag2 = 0x22EC0AC
SoraHUD = 0x281249C
CarpetSkip()
end

---------- Steam JP Version
if stmjpgames == 1 then
World = 0x233FE84
Room = 0x233FE8C
Spawn = 0x232DF18
Event = 0x233FE90
Tag = 0x22EC0A8
Tag2 = 0x22EC0AC
SoraHUD = 0x281249C
CarpetSkip()
end

end

function CarpetSkip()
if ReadByte(World) == 0x08 and ReadByte(Room) == 0x14 and ReadByte(Spawn) == 0x3D and ReadByte(Event) == 0x0C and ReadFloat(SoraHUD) == 1 then
WriteInt(Tag, 1)
WriteByte(Room,0x01) 
WriteByte(Spawn,0x01)
WriteByte(Event,0x04)
WriteInt(Tag2, 1)
end
end
