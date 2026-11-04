LUAGUI_NAME = "100% Anti Form"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "100% Anti Form"

epiccheck = 0x585B61
stmcheck = epiccheck+0x2F8
stmjpcheck = epiccheck+0x2A8

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
				ConsolePrint("100% Anti Form (EPIC GL) - installed")
			end
			
			if ReadLong(stmcheck) == 0x7265737563697065 and IsSteamGame == 0 then
				IsSteamGame = 1
				ConsolePrint("100% Anti Form (Steam GL) - installed")
			end
			
			if ReadLong(stmjpcheck) == 0x7265737563697065 and IsSteamJPGame == 0 then
				IsSteamJPGame = 1
				ConsolePrint("100% Anti Form (Steam JP) - installed")
			end
		
			if IsEpicGame == 1 then
				antipoints = 0x4210E0
				antichance = 0x421204
				forceanti = 0x421130
				noantieventblock = 0x42105E
				noantiforcedeventblock = 0x4210A8
				AlwaysAntiForm()
			end
			
			if IsSteamGame == 1 then
				antipoints = 0x421E00
				antichance = 0x421F24
				forceanti = 0x421E50
				noantieventblock = 0x421D7E
				noantiforcedeventblock = 0x421DC8
				AlwaysAntiForm()
			end
	
			if IsSteamJPGame == 1 then
				antipoints = 0x421B80
				antichance = 0x421CA4
				forceanti = 0x421BD0
				noantieventblock = 0x421AFE
				noantiforcedeventblock = 0x421B48
				AlwaysAntiForm()
			end
end


function AlwaysAntiForm()
WriteShort(antipoints,0x9090)
WriteShort(antichance,0x9090)
WriteArray(forceanti, {0x90, 0x90, 0x90, 0x90, 0x90, 0x90})
WriteArray(noantieventblock, {0x31, 0xC0, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90})
WriteArray(noantiforcedeventblock, {0x31, 0xC0, 0x90, 0x90, 0x90, 0x90, 0x90, 0x90})
end