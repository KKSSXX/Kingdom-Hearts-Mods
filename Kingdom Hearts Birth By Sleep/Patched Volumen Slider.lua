LUAGUI_NAME = "Patched Volumen Slider"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Patched Volumen Slider"

IsEpicGLVersion = 0x68D229
IsSteamGLVersion = 0x68D451
IsSteamJPVersion = 0x68C401


function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
	epicgames = 0
	stmgames = 0
	stmjpgames = 0
	end
end

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
VolumenSlider1 = 0x56F63B
VolumenSlider2 = 0x56F65B
VolumenSlider3 = 0x56F68F
VolumenSlider4 = 0x4C0375
VolumenSlider5 = 0x4C0187
VolumenSlider6 = 0x4C06CC
VolumenSlider7 = 0x4C0877
VolumenSlider8 = 0x56F58C
VolumenSlider9 = 0x56F56C
VolumenSlider10 = 0x56F54C
VolumenSlider11 = 0x56F52C
VolumenSlider()
end

---------- Steam Version
if stmgames == 1 then
VolumenSlider1 = 0x56DCAB
VolumenSlider2 = 0x56DCCB
VolumenSlider3 = 0x56DCFF
VolumenSlider4 = 0x4C0C25
VolumenSlider5 = 0x4C0A37
VolumenSlider6 = 0x4C0F7C
VolumenSlider7 = 0x4C1127
VolumenSlider8 = 0x56DB9C
VolumenSlider9 = 0x56DBBC
VolumenSlider10 = 0x56DBDC
VolumenSlider11 = 0x56DBFC
VolumenSlider()

end

---------- Steam JP Version
if stmjpgames == 1 then
VolumenSlider1 = 0x56DA2B
VolumenSlider2 = 0x56DA4B
VolumenSlider3 = 0x56DA7F
VolumenSlider4 = 0x4C0C25
VolumenSlider5 = 0x4C0A37
VolumenSlider6 = 0x4C0F7C
VolumenSlider7 = 0x4C1127
VolumenSlider8 = 0x56D91C
VolumenSlider9 = 0x56D93C
VolumenSlider10 = 0x56D95C
VolumenSlider11 = 0x56D97C
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