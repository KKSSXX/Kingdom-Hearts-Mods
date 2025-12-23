LUAGUI_NAME = "Always Have Antiform"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Always Have Antiform"

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
				ConsolePrint("Always Have Antiform (EPIC GL) - installed")
			end
			
			if ReadLong(stmcheck) == 0x7265737563697065 and IsSteamGame == 0 then
				IsSteamGame = 1
				ConsolePrint("Always Have Antiform (Steam GL) - installed")
			end
			
			if ReadLong(stmjpcheck) == 0x7265737563697065 and IsSteamJPGame == 0 then
				IsSteamJPGame = 1
				ConsolePrint("Always Have Antiform (Steam JP) - installed")
			end
		
			if IsEpicGame == 1 then
			WriteByte(0x9AC9F0, ReadByte(0x9AC9F0) | 0x20)
			end
			
			if IsSteamGame == 1 then
			WriteByte(0x9ACF70, ReadByte(0x9ACF70) | 0x20)
			end
	
			if IsSteamJPGame == 1 then
			WriteByte(0x9ACF70, ReadByte(0x9ACF70) | 0x20)
			end
end
