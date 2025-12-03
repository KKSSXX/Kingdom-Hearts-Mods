LUAGUI_NAME = "Critical Starter Items for All Difficulty"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Critical Starter Items for All Difficulty"

epiccheck = 0x585B61
stmcheck = 0x585E59
stmjpcheck = 0x585E09

function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
	IsEpicGame = 0
	IsSteamGame = 0
	IsSteamJPGame = 0
	end
end

function _OnFrame()	

			if ReadLong(epiccheck) == 0x7265737563697065 and IsEpicGame == 0 then
				IsEpicGame = 1
				ConsolePrint("Critical Starter Items for All Difficulty (EPIC GL) - installed")
			end
			
			if ReadLong(stmcheck) == 0x7265737563697065 and IsSteamGame == 0 then
				IsSteamGame = 1
				ConsolePrint("Critical Starter Items for All Difficulty (Steam GL) - installed")
			end
			
			if ReadLong(stmjpcheck) == 0x7265737563697065 and IsSteamJPGame == 0 then
				IsSteamJPGame = 1
				ConsolePrint("Critical Starter Items for All Difficulty (Steam JP) - installed")
			end
		
			if IsEpicGame == 1 then
			Base = ReadLong(0x2A24E50)
			EZ = Base + 0x08
			CR = Base + 0x1F88
			WriteByte(EZ + 0x05, ReadByte(CR + 0x05, true), true)
			WriteShort(EZ + 0x0C, ReadShort(CR + 0x0C, true), true)
			WriteShort(EZ + 0x0E, ReadShort(CR + 0x0E, true), true)
			WriteShort(EZ + 0x10, ReadShort(CR + 0x10, true), true)
			WriteShort(EZ + 0x12, ReadShort(CR + 0x12, true), true)
			WriteShort(EZ + 0x14, ReadShort(CR + 0x14, true), true)
			WriteShort(EZ + 0x16, ReadShort(CR + 0x16, true), true)
			WriteShort(EZ + 0x18, ReadShort(CR + 0x18, true), true)
			end
			
			if IsSteamGame == 1 then
			Base = ReadLong(0x2A253D0)
			EZ = Base + 0x08
			CR = Base + 0x1F88
			WriteByte(EZ + 0x05, ReadByte(CR + 0x05, true), true)
			WriteShort(EZ + 0x0C, ReadShort(CR + 0x0C, true), true)
			WriteShort(EZ + 0x0E, ReadShort(CR + 0x0E, true), true)
			WriteShort(EZ + 0x10, ReadShort(CR + 0x10, true), true)
			WriteShort(EZ + 0x12, ReadShort(CR + 0x12, true), true)
			WriteShort(EZ + 0x14, ReadShort(CR + 0x14, true), true)
			WriteShort(EZ + 0x16, ReadShort(CR + 0x16, true), true)
			WriteShort(EZ + 0x18, ReadShort(CR + 0x18, true), true)
			end
	
			if IsSteamJPGame == 1 then
			Base = ReadLong(0x2A253D0)
			EZ = Base + 0x08
			CR = Base + 0x1F88
			WriteByte(EZ + 0x05, ReadByte(CR + 0x05, true), true)
			WriteShort(EZ + 0x0C, ReadShort(CR + 0x0C, true), true)
			WriteShort(EZ + 0x0E, ReadShort(CR + 0x0E, true), true)
			WriteShort(EZ + 0x10, ReadShort(CR + 0x10, true), true)
			WriteShort(EZ + 0x12, ReadShort(CR + 0x12, true), true)
			WriteShort(EZ + 0x14, ReadShort(CR + 0x14, true), true)
			WriteShort(EZ + 0x16, ReadShort(CR + 0x16, true), true)
			WriteShort(EZ + 0x18, ReadShort(CR + 0x18, true), true)
			end
end
