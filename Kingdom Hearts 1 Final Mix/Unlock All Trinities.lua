LUAGUI_NAME = "Unlock All Trinities"
LUAGUI_AUTH = "KSX387"
LUAGUI_DESC = "Unlock All Trinities"

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
		ConsolePrint("Unlock All Trinities (EPIC GL) - installed")
	end
	
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Unlock All Trinities (Steam GL) - installed")
	end
	
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Unlock All Trinities (Steam JP) - installed")
	end
end

function _OnFrame()
---------- Epic Games Version
if epicgames == 1 then
Trinity = 0x2DEB97B
AllTrins()
end


---------- Steam Version
if stmgames == 1 then
Trinity = 0x2DEAF7B
AllTrins()
end

---------- Steam JP Version
if stmjpgames == 1 then
Trinity = 0x2DEAF7B
AllTrins()
end

end

function AllTrins()

if (ReadByte(Trinity) & 0x01) == 0 then --- Blue Trinity
    WriteByte(Trinity, ReadByte(Trinity) | 0x01)
end

if (ReadByte(Trinity) & 0x02) == 0 then --- Red Trinity
    WriteByte(Trinity, ReadByte(Trinity) | 0x02)
end

if (ReadByte(Trinity) & 0x04) == 0 then --- Green Trinity
    WriteByte(Trinity, ReadByte(Trinity) | 0x04)
end

if (ReadByte(Trinity) & 0x08) == 0 then --- Yellow Trinity
    WriteByte(Trinity, ReadByte(Trinity) | 0x08)
end

if (ReadByte(Trinity) & 0x10) == 0 then --- White Trinity
    WriteByte(Trinity, ReadByte(Trinity) | 0x10)
end

end