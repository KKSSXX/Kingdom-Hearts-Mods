LUAGUI_NAME = "HB Elevator Sequence Skip"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "HB Elevator Sequence Skip"

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
		ConsolePrint("HB Elevator Sequence Skip (EPIC GL) - installed")
	end
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("HB Elevator Sequence Skip (Steam GL) - installed")
	end
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("HB Elevator Sequence Skip (Steam JP) - installed")
	end
end

function _OnFrame()
---------- Epic Games Version
if epicgames == 1 then
World = 0x2340E5C
HBElevator1 = 0x239C6DC
HBElevator2 = HBElevator1-0x2520
HBElevator3 = HBElevator1+0x10E0
HBElevator4 = HBElevator1-0x1E60
HBElevator5 = HBElevator1+0x6C0
HBElevator6 = HBElevator1-0x1B00
HBElevator7 = HBElevator1+0x2F40
HBElevator8 = HBElevator1+0x360
HBElevator9 = HBElevator1+0x61E0
HBElevSkip()
end

---------- Steam Version
if stmgames == 1 then
World = 0x233FE84
HBElevator1 = 0x238640C
HBElevator2 = HBElevator1-0x2520
HBElevator3 = HBElevator1+0x10E0
HBElevator4 = HBElevator1-0x1E60
HBElevator5 = HBElevator1+0x6C0
HBElevator6 = HBElevator1-0x1B00
HBElevator7 = HBElevator1+0x2F40
HBElevator8 = HBElevator1+0x360
HBElevator9 = HBElevator1+0x61E0
HBElevSkip()
end

---------- Steam JP Version
if stmjpgames == 1 then
World = 0x233FE84
HBElevator1 = 0x238640C
HBElevator2 = HBElevator1-0x2520
HBElevator3 = HBElevator1+0x10E0
HBElevator4 = HBElevator1-0x1E60
HBElevator5 = HBElevator1+0x6C0
HBElevator6 = HBElevator1-0x1B00
HBElevator7 = HBElevator1+0x2F40
HBElevator8 = HBElevator1+0x360
HBElevator9 = HBElevator1+0x61E0
HBElevSkip()
end

end

function HBElevSkip()
if ReadByte(World) == 0x0F then
if ReadByte(HBElevator1) == 4 then
WriteByte(HBElevator1, 0)
end
if ReadByte(HBElevator2) == 4 then
WriteByte(HBElevator2, 0)
end
if ReadByte(HBElevator3) == 4 then
WriteByte(HBElevator3, 0)
end
if ReadByte(HBElevator4) == 4 then
WriteByte(HBElevator4, 0)
end
if ReadByte(HBElevator5) == 4 then
WriteByte(HBElevator5, 0)
end
if ReadByte(HBElevator6) == 4 then
WriteByte(HBElevator6, 0)
end
if ReadByte(HBElevator7) == 4 then
WriteByte(HBElevator7, 0)
end
if ReadByte(HBElevator8) == 4 then
WriteByte(HBElevator8, 0)
end
if ReadByte(HBElevator9) == 4 then
WriteByte(HBElevator9, 0)
end
end
end