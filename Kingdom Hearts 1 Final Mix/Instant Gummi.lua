LUAGUI_NAME = "Instant Gummi"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Instant Gummi"

--- Version Check
IsEpicGLVersion = 0x3B3379
IsSteamGLVersion = IsEpicGLVersion-0x1108
IsSteamJPVersion = IsEpicGLVersion-0x1158

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
		ConsolePrint("Instant Gummi (EPIC GL) - installed")
	end
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Instant Gummi (Steam GL) - installed")
	end
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Instant Gummi (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
selectedworld = 0x507D7C
gummiworldcurrentworld = 0x507C90
soracheckifworldmapornot = 0x23405C0
agrabahworldstatus = 0x2DEBC54
monstroworldstatus = 0x2DEBC5A
DeepJungleFlag = 0x2DEB265
MonstroFlag = 0x2DEB269
NeverlandFlag = 0x2DEB26D
InstaGummi()
end

---------- Steam Version
if stmgames == 1 then
selectedworld = 0x50707C
gummiworldcurrentworld = 0x506F90
soracheckifworldmapornot = 0x233FBC0
agrabahworldstatus = 0x2DEB254
monstroworldstatus = 0x2DEB25A
DeepJungleFlag = 0x2DEA865
MonstroFlag = 0x2DEA869
NeverlandFlag = 0x2DEA86D
InstaGummi()
end

---------- Steam JP Version
if stmjpgames == 1 then
selectedworld = 0x50707C
gummiworldcurrentworld = 0x506F90
soracheckifworldmapornot = 0x233FBC0
agrabahworldstatus = 0x2DEB254
monstroworldstatus = 0x2DEB25A
DeepJungleFlag = 0x2DEA865
MonstroFlag = 0x2DEA869
NeverlandFlag = 0x2DEA86D
InstaGummi()
end

end


function InstaGummi()
	if ReadByte(selectedworld) == 18 or (ReadByte(selectedworld) >= 21 and ReadByte(selectedworld) <= 26) then
		return
	end

	if ReadByte(selectedworld) ~= 255 and ReadByte(soracheckifworldmapornot) == 7 then
		WriteByte(gummiworldcurrentworld, ReadByte(selectedworld))
	end

	if ReadByte(agrabahworldstatus) == 4 and ReadByte(soracheckifworldmapornot) == 7 then
		WriteByte(monstroworldstatus, 3)
	end

	if ReadByte(DeepJungleFlag) < 1 then
		WriteByte(DeepJungleFlag, 1)
	end

	if ReadByte(NeverlandFlag) < 1 then
		WriteByte(NeverlandFlag, 1)
	end

end
