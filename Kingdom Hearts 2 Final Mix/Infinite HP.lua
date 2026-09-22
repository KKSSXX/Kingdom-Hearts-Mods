LUAGUI_NAME = "Infinite HP"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Infinite HP"

epiccheck = 0x585B61
stmcheck = 0x585E59
stmjpcheck = 0x585E09

function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
	IsEpicGame = 0
	IsSteamGame = 0
	IsSteamJPGame = 0
	end
	
			if ReadLong(epiccheck) == 0x7265737563697065 and IsEpicGame == 0 then
				IsEpicGame = 1
				ConsolePrint("Infinite HP (EPIC GL) - installed")
			end
			
			if ReadLong(stmcheck) == 0x7265737563697065 and IsSteamGame == 0 then
				IsSteamGame = 1
				ConsolePrint("Infinite HP (Steam GL) - installed")
			end
			
			if ReadLong(stmjpcheck) == 0x7265737563697065 and IsSteamJPGame == 0 then
				IsSteamJPGame = 1
				ConsolePrint("Infinite HP (Steam JP) - installed")
			end
end

function _OnFrame()
			if IsEpicGame == 1 then
				WriteInt(0x2A23018, ReadInt(0x2A2301C))
			end
			
			if IsSteamGame == 1 then
				WriteInt(0x2A23598, ReadInt(0x2A2359C))
			end
	
			if IsSteamJPGame == 1 then
				WriteInt(0x2A23598, ReadInt(0x2A2359C))
			end
end
