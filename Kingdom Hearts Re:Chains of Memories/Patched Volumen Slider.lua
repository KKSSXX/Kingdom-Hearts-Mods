LUAGUI_NAME = "Patched Volumen Slider"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Patched Volumen Slider"

Bright = 1.25

IsEpicGLVersion = 0x616149
IsSteamGLVersion = 0x6116C1
IsSteamJPVersion = 0x611671

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

if epicgames == 1 then
			VolumenSlider1 = 0x36E64B
			VolumenSlider2 = 0x36E66B
			VolumenSlider3 = 0x36E69F
			VolumenSlider4 = 0x302625 
			VolumenSlider5 = 0x302437
			VolumenSlider6 = 0x30297C 
			VolumenSlider7 = 0x302B27
			VolumenSlider8 = 0x36E59C
			VolumenSlider9 = 0x36E57C
			VolumenSlider10 = 0x36E55C
			VolumenSlider11 = 0x36E53C
			VolumenSlider()
end

---------- Steam Version
if stmgames == 1 then
			VolumenSlider1 = 0x36CAAB
			VolumenSlider2 = 0x36CACB
			VolumenSlider3 = 0x36CAFF
			VolumenSlider4 = 0x302B85
			VolumenSlider5 = 0x302997
			VolumenSlider6 = 0x302EDC
			VolumenSlider7 = 0x303087
			VolumenSlider8 = 0x36C99C
			VolumenSlider9 = 0x36C9BC
			VolumenSlider10 = 0x36C9DC
			VolumenSlider11 = 0x36C9FC
			VolumenSlider()
end

---------- Steam JP Version
if stmjpgames == 1 then
			VolumenSlider1 = 0x36C82B
			VolumenSlider2 = 0x36C84B
			VolumenSlider3 = 0x36C87F
			VolumenSlider4 = 0x302905
			VolumenSlider5 = 0x302717
			VolumenSlider6 = 0x302C5C
			VolumenSlider7 = 0x302E07
			VolumenSlider8 = 0x36C71C
			VolumenSlider9 = 0x36C73C
			VolumenSlider10 = 0x36C75C
			VolumenSlider11 = 0x36C77C
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