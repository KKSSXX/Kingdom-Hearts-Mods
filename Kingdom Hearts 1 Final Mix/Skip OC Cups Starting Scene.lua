LUAGUI_NAME = "Skip OC Cups Starting Scene"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Skip OC Cups Starting Scene"

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
		ConsolePrint("Skip OC Cups Starting Scene (EPIC GL) - installed")
	end
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Skip OC Cups Starting Scene (Steam GL) - installed")
	end
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Skip OC Cups Starting Scene (Steam JP) - installed")
	end
	
end
-------------------------------------------------------------------------

function _OnFrame()

if epicgames == 1 then
World = 0x2340E5C
Room = 0x2340EC4
Event = 0x2340EC8
OCCameraID = 0x239A500
OCCameraZoomin = 0x239A4E8
OCCameraRotation = 0x23C15B0
OCCameraSceneTimer = 0x23C1838
OCSceneSkipper()
end

if stmgames == 1 then
World = 0x233FE84
Room = 0x233FE8C
Event = 0x233FE90
OCCameraID = 0x2384230
OCCameraZoomin = 0x2384218
OCCameraRotation = 0x23C0BB0
OCCameraSceneTimer = 0x23C0E38
OCSceneSkipper()
end

if stmjpgames == 1 then
World = 0x233FE84
Room = 0x233FE8C
Event = 0x233FE90
OCCameraID = 0x2384230
OCCameraZoomin = 0x2384218
OCCameraRotation = 0x23C0BB0
OCCameraSceneTimer = 0x23C0E38
OCSceneSkipper()
end

end

function OCSceneSkipper()
if ReadByte(World) == 0x0B then
if ReadInt(OCCameraID) == 14 then
WriteFloat(OCCameraZoomin, 0)
WriteFloat(OCCameraRotation, 135)
elseif ReadFloat(OCCameraSceneTimer) < 400 and ReadByte(Room) == 0x06 and ReadByte(Event) == 0x05 then
WriteFloat(OCCameraRotation, 140)
elseif ReadFloat(OCCameraSceneTimer) < 411 and ReadByte(Room) == 0x06 and ReadByte(Event) == 0x06 then
WriteFloat(OCCameraRotation, 135)
end
end
end