LUAGUI_NAME = "Camera Settings"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Camera Settings"

IsEpicGLVersion = 0x616149
IsSteamGLVersion = 0x6116C1
IsSteamJPVersion = 0x611671


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
		ConsolePrint("Camera Settings (EPIC GL) - installed")
	end
	
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Camera Settings (Steam GL) - installed")
	end
	
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Camera Settings (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
Pointer = 0x87AD80
CameraXPosition = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x0,true
CameraObjectPostion = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x4,true
CameraAutoRotate = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x10,true
CameraYPosition = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x14,true
CameraYMaxUP = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x18,true
CameraYMaxDown = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x1C,true
CameraZPosition = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x20,true
CameraZMaxUP = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x24,true
CameraZMaxDown = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x28,true
WriteFloat(CameraXPosition, 80, true) -- Default: 50
WriteFloat(CameraObjectPostion, 0.05000000075, true) -- Default: 0.05000000075
WriteFloat(CameraAutoRotate, 0, true) -- Default: 0
WriteFloat(CameraYPosition, 5, true) -- Default: 1
WriteFloat(CameraYMaxUP, 4.599999905, true) -- Default: 4.599999905
WriteFloat(CameraYMaxDown, 0, true) -- Default: 0
WriteFloat(CameraZPosition, 0, true) -- Default: 0
WriteFloat(CameraZMaxUP, 0.8000000119, true) -- Default: 0.8000000119
WriteFloat(CameraZMaxDown, 0, true) -- Default: 0
end

---------- Steam Version
if stmgames == 1 then
Pointer = 0x87B380
CameraXPosition = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x0,true
CameraObjectPostion = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x4,true
CameraAutoRotate = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x10,true
CameraYPosition = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x14,true
CameraYMaxUP = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x18,true
CameraYMaxDown = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x1C,true
CameraZPosition = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x20,true
CameraZMaxUP = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x24,true
CameraZMaxDown = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x28,true
WriteFloat(CameraXPosition, 80, true) -- Default: 50
WriteFloat(CameraObjectPostion, 0.05000000075, true) -- Default: 0.05000000075
WriteFloat(CameraAutoRotate, 0, true) -- Default: 0
WriteFloat(CameraYPosition, 5, true) -- Default: 1
WriteFloat(CameraYMaxUP, 4.599999905, true) -- Default: 4.599999905
WriteFloat(CameraYMaxDown, 0, true) -- Default: 0
WriteFloat(CameraZPosition, 0, true) -- Default: 0
WriteFloat(CameraZMaxUP, 0.8000000119, true) -- Default: 0.8000000119
WriteFloat(CameraZMaxDown, 0, true) -- Default: 0
end

---------- Steam JP Version
if stmjpgames == 1 then
Pointer = 0x87B380
CameraXPosition = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x0,true
CameraObjectPostion = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x4,true
CameraAutoRotate = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x10,true
CameraYPosition = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x14,true
CameraYMaxUP = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x18,true
CameraYMaxDown = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x1C,true
CameraZPosition = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x20,true
CameraZMaxUP = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x24,true
CameraZMaxDown = ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(ReadLong(Pointer)+0x3F8,true)+0x28,true)+0x40,true)+0x10,true)+0x8,true)+0x170,true)+0x28,true
WriteFloat(CameraXPosition, 80, true) -- Default: 50
WriteFloat(CameraObjectPostion, 0.05000000075, true) -- Default: 0.05000000075
WriteFloat(CameraAutoRotate, 0, true) -- Default: 0
WriteFloat(CameraYPosition, 5, true) -- Default: 1
WriteFloat(CameraYMaxUP, 4.599999905, true) -- Default: 4.599999905
WriteFloat(CameraYMaxDown, 0, true) -- Default: 0
WriteFloat(CameraZPosition, 0, true) -- Default: 0
WriteFloat(CameraZMaxUP, 0.8000000119, true) -- Default: 0.8000000119
WriteFloat(CameraZMaxDown, 0, true) -- Default: 0
end

end
