LUAGUI_NAME = "Patched Volumen Slider"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Patched Volumen Slider"


--- Game Version Check
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
				ConsolePrint("Patched Volumen Slider (EPIC GL) - installed")
			end
			
			if ReadLong(stmcheck) == 0x7265737563697065 and IsSteamGame == 0 then
				IsSteamGame = 1
				ConsolePrint("Patched Volumen Slider (Steam GL) - installed")
			end
			
			if ReadLong(stmjpcheck) == 0x7265737563697065 and IsSteamJPGame == 0 then
				IsSteamJPGame = 1
				ConsolePrint("Patched Volumen Slider (Steam JP) - installed")
			end
		
			if IsEpicGame == 1 then
			VolumenSlider1 = 0x50C8DB
			VolumenSlider2 = 0x50C8FB
			VolumenSlider3 = 0x50C92F
			VolumenSlider4 = 0x130A75
			VolumenSlider5 = 0x130887
			VolumenSlider6 = 0x130DCC
			VolumenSlider7 = 0x130F77
			VolumenSlider8 = 0x50C7CC
			VolumenSlider9 = 0x50C7EC
			VolumenSlider10 = 0x50C80C
			VolumenSlider11 = 0x50C82C
			VolumenSlider()
			end
			
			if IsSteamGame == 1 then
			VolumenSlider1 = 0x50B0BB
			VolumenSlider2 = 0x50B0DB
			VolumenSlider3 = 0x50B10F
			VolumenSlider4 = 0x137F55
			VolumenSlider5 = 0x137D67
			VolumenSlider6 = 0x1382AC
			VolumenSlider7 = 0x138457
			VolumenSlider8 = 0x50AFAC
			VolumenSlider9 = 0x50AFCC
			VolumenSlider10 = 0x50AFEC
			VolumenSlider11 = 0x50B00C
			VolumenSlider()
			end
	
			if IsSteamJPGame == 1 then
			VolumenSlider1 = 0x50AE3B
			VolumenSlider2 = 0x50AE5B
			VolumenSlider3 = 0x50AE8F
			VolumenSlider4 = 0x137CD5
			VolumenSlider5 = 0x137AE7
			VolumenSlider6 = 0x13802C
			VolumenSlider7 = 0x1381D7
			VolumenSlider8 = 0x50AD2C
			VolumenSlider9 = 0x50AD4C
			VolumenSlider10 = 0x50AD6C
			VolumenSlider11 = 0x50AD8C
			VolumenSlider()
			end
end

function VolumenSlider()
WriteByte(VolumenSlider1,0)
WriteByte(VolumenSlider2,0x79)
WriteShort(VolumenSlider3, 0x01B0)
WriteByte(VolumenSlider4, 0xFF)
WriteByte(VolumenSlider5, 0xFF)
WriteByte(VolumenSlider6, 0xFF)
WriteByte(VolumenSlider7, 0xFF)
WriteByte(VolumenSlider8, 0xFF)
WriteByte(VolumenSlider9, 0xFF)
WriteByte(VolumenSlider10, 0xFF)
WriteByte(VolumenSlider11, 0xFF)
end