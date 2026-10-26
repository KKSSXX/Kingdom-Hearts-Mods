LUAGUI_NAME = "Patched Volumen Slider"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Patched Volumen Slider"

IsEpicGLVersion = 0x3B3379
IsSteamGLVersion = 0x3B2271
IsSteamJPVersion = 0x3B2221

---------------------------
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
		ConsolePrint("Patched Volumen Slider (EPIC GL) - installed")
	end
	
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Patched Volumen Slider (Steam GL) - installed")
	end
	
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Patched Volumen Slider (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
			VolumenSlider1 = 0x150C6B
			VolumenSlider2 = 0x150C8B
			VolumenSlider3 = 0x150CBF
			VolumenSlider4 = 0x116BB5
			VolumenSlider5 = 0x1169C7
			VolumenSlider6 = 0x116F0C
			VolumenSlider7 = 0x1170B7
			VolumenSlider8 = 0x150B5C
			VolumenSlider9 = 0x150B7C
			VolumenSlider10 = 0x150B9C
			VolumenSlider11 = 0x150BBC
			VolumenSlider()
end


---------- Steam Version
if stmgames == 1 then
			VolumenSlider1 = 0x15110B
			VolumenSlider2 = 0x15112B
			VolumenSlider3 = 0x15115F
			VolumenSlider4 = 0x116A75
			VolumenSlider5 = 0x116887
			VolumenSlider6 = 0x116DCC
			VolumenSlider7 = 0x116F77
			VolumenSlider8 = 0x150FFC
			VolumenSlider9 = 0x15101C
			VolumenSlider10 = 0x15103C
			VolumenSlider11 = 0x15105C
			VolumenSlider()
end

---------- Steam JP Version
if stmjpgames == 1 then
			VolumenSlider1 = 0x150E8B
			VolumenSlider2 = 0x150EAB
			VolumenSlider3 = 0x150EDF
			VolumenSlider4 = 0x1167F5
			VolumenSlider5 = 0x116607
			VolumenSlider6 = 0x116B4C
			VolumenSlider7 = 0x116CF7
			VolumenSlider8 = 0x150D7C
			VolumenSlider9 = 0x150D9C
			VolumenSlider10 = 0x150DBC
			VolumenSlider11 = 0x150DDC
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