LUAGUI_NAME = "Playable Disney Castle"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Playable Disney Castle"

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
		ConsolePrint("Playable Disney Castle (EPIC GL) - installed")
	end
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Playable Disney Castle (Steam GL) - installed")
	end
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Playable Disney Castle (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
EpicTraverseTownStoryFlag = 0x2DEB264
EpicCursorPositionX = 0x268A3EC
EpicCursorPositionY = 0x268A530
EpicOverworldMapLeftBlock = 0x268A71C
EpicAllowWarp = 0x22ECA90
EpicWarpAnyWhere = 0x23405C0
EpicOverworldMapOpenMenu = 0x268A540 
EpicOverworldMapSelectedMap = 0x508280
EpicOverworldMapCurrentMap = 0x507D7C
EpicButtonPress = 0x23413B5
EpicWarp = 0x22ECA8C
EpicWorld = 0x2340E5C
EpicRoom = 0x2340EC4
EpicSpawn = 0x232E908
EpicFlag = 0x2340EC8
EpicSoraWorld = 0x2340ECC
EpicSoraRoom = 0x23B4034
EpicPauseMenu = 0x232E98C
EpicMusicModifier = 0x232DF00
EpicSoraHUD = 0x2812E9C
EpicSoraPosPointer = 0x23F13D0
EpicSoraAnimPointer = 0x2812408

if ReadByte(EpicTraverseTownStoryFlag) >= 1 then
if ReadByte(EpicAllowWarp) == 6 and ReadByte(EpicWarpAnyWhere) == 7 then
WriteFloat(EpicOverworldMapLeftBlock, -70)

if ReadInt(EpicCursorPositionX) > 0xC2750000 and ReadInt(EpicCursorPositionX) < 0xC2880000
and ReadInt(EpicCursorPositionY) > 0xC109BC02 and ReadInt(EpicCursorPositionY) < 0xC1854466 then
WriteByte(EpicOverworldMapOpenMenu, 66)
WriteByte(EpicOverworldMapSelectedMap, 2)
WriteByte(EpicOverworldMapCurrentMap, 2)
overworldmap = true
else
overworldmap = false
end

if overworldmap == true and ReadByte(EpicButtonPress) == 0x40 then
WriteByte(EpicWorld, 2)
WriteByte(EpicRoom, 1)
WriteByte(EpicSpawn, 1)
WriteByte(EpicFlag, 2)
WriteByte(EpicAllowWarp, 4)
WriteByte(EpicWarpAnyWhere, 5)
WriteInt(EpicWarp, 10)
WriteByte(EpicOverworldMapOpenMenu, 67)
end
end

if ReadByte(EpicSoraWorld) == 2 then
WriteByte(EpicFlag, 2)
WriteByte(EpicPauseMenu, 1)

--- Warp Between Rooms
SoraX = ReadLong(EpicSoraPosPointer)+0x10, true
SoraZ = ReadLong(EpicSoraPosPointer)+0x14, true
SoraY = ReadLong(EpicSoraPosPointer)+0x18, true
SoraAnimation = ReadLong(EpicSoraAnimPointer)+0x70, true
if ReadByte(EpicRoom) == 0 and ReadInt(SoraY,true) == 0xC4CEE666 and ReadFloat(EpicSoraHUD) == 1 then
WriteByte(EpicRoom, 2)
WriteByte(EpicSpawn, 2)
WriteByte(EpicFlag, 2)
WriteInt(EpicWarp, 10)
end

if ReadByte(EpicRoom) == 2 and ReadInt(SoraX,true) <= 0x453F1F48 and ReadInt(SoraX,true) >= 0x453BECCC and ReadInt(SoraY,true) >= 0xC50B74BE and ReadInt(SoraY,true) <= 0xC526A9C6 and ReadFloat(EpicSoraHUD) == 1 then
WriteByte(EpicRoom, 3)
WriteByte(EpicSpawn, 4)
WriteByte(EpicFlag, 2)
WriteInt(EpicWarp, 10)
end

if ReadByte(EpicRoom) == 3 and ReadFloat(SoraX,true) <= -2100 and ReadFloat(SoraZ,true) == -10 and ReadFloat(SoraY,true) <= -1600 and ReadFloat(EpicSoraHUD) == 1 then
WriteByte(EpicRoom, 2)
WriteByte(EpicSpawn, 2)
WriteByte(EpicFlag, 2)
WriteInt(EpicWarp, 10)
end

if ReadByte(EpicRoom) == 3 and ReadFloat(SoraX,true) >= 2144 and ReadFloat(SoraY,true) <= -1916 and ReadFloat(SoraZ,true) <= -10 and ReadFloat(EpicSoraHUD) == 1 then
WriteByte(EpicRoom, 6)
WriteByte(EpicSpawn, 7)
WriteByte(EpicFlag, 2)
WriteInt(EpicWarp, 10)
end

if ReadByte(EpicRoom) == 6 and ReadFloat(SoraZ,true) <= -4640 and ReadFloat(SoraZ,true) >= -4670 and ReadFloat(EpicSoraHUD) == 1 then
WriteByte(EpicRoom, 3)
WriteByte(EpicSpawn, 4)
WriteByte(EpicFlag, 2)
WriteInt(EpicWarp, 10)
end

if ReadByte(EpicRoom) == 6 and ReadFloat(SoraZ,true) <= -1230 and ReadFloat(SoraZ,true) >= -1260 and ReadFloat(EpicSoraHUD) == 1 then
WriteByte(EpicRoom, 5)
WriteByte(EpicSpawn, 5)
WriteByte(EpicFlag, 2)
WriteInt(EpicWarp, 10)
end

if ReadByte(EpicRoom) == 5 and ReadFloat(SoraX,true) >= 2380 and ReadFloat(SoraX,true) <= 2420 and ReadFloat(EpicSoraHUD) == 1 then
WriteByte(EpicRoom, 6)
WriteByte(EpicSpawn, 7)
WriteByte(EpicFlag, 2)
WriteFloat(EpicSoraHUD, 0)
WriteInt(EpicWarp, 10)
end

if ReadByte(EpicRoom) == 5 and ReadFloat(SoraZ,true) >= 1900  and ReadFloat(EpicSoraHUD) == 1 then
WriteByte(EpicRoom, 8)
WriteByte(EpicSpawn, 8)
WriteByte(EpicFlag, 2)
WriteFloat(EpicSoraHUD, 0)
WriteInt(EpicWarp, 10)
end

if ReadByte(EpicRoom) == 8 and ReadInt(SoraAnimation,true) ~= 0x8 then
WriteInt(SoraAnimation, 0x8, true)
end

if ReadByte(EpicRoom) == 8 and ReadFloat(SoraZ,true) >= 4500 and ReadFloat(EpicSoraHUD) == 1 then
WriteByte(EpicRoom, 7)
WriteByte(EpicSpawn, 8)
WriteByte(EpicFlag, 2)
WriteFloat(EpicSoraHUD, 0)
WriteInt(EpicWarp, 10)
end

if ReadByte(EpicRoom) == 7 and ReadFloat(SoraY,true) <= -11000 and ReadFloat(EpicSoraHUD) == 1 then
WriteByte(EpicAllowWarp, 6)
WriteByte(EpicWarp, 10)
WriteFloat(EpicSoraHUD, 0)
end

--- Set Music
if ReadByte(EpicRoom) == 1 or ReadByte(EpicRoom) == 2 or ReadByte(EpicRoom) == 0 or ReadByte(EpicRoom) == 3 then
WriteByte(EpicMusicModifier, 143)
end

if ReadByte(EpicRoom) == 6 then
WriteByte(EpicMusicModifier, 155)
end

if ReadByte(EpicRoom) == 5 then
WriteByte(EpicMusicModifier, 123)
end

if ReadByte(EpicRoom) == 8 then
WriteByte(EpicMusicModifier, 0x82)
end

if ReadByte(EpicRoom) == 7 then
WriteByte(EpicMusicModifier, 0x6E)
end

end 

end
end

---------- Steam Version
if stmgames == 1 then
if ReadByte(0x2DEA864) >= 1 then
if ReadByte(0x22EC0B0) == 6 and ReadByte(0x233FBC0) == 7 then
WriteFloat(0x2689D1C, -70)

if ReadFloat(0x2689B30) < -9 and ReadFloat(0x2689B30) > -13
and ReadFloat(0x26899EC) < -60 and ReadFloat(0x26899EC) > -67 then
WriteByte(0x2689B40, 66)
WriteByte(0x507580, 2)
WriteByte(0x50707C, 2)
overworldmap = true
else
overworldmap = false
end

if overworldmap == true and ReadByte(0x23407B5) == 0x40 then
WriteByte(0x233FE84, 2)
WriteByte(0x233FE8C, 1)
WriteByte(0x232DF18, 1)
WriteByte(0x233FE90, 2)
WriteByte(0x22EC0B0, 4)
WriteByte(0x233FBC0, 5)
WriteInt(0x22EC0AC, 10)
WriteByte(0x2689B40, 67)
end
end

if ReadByte(0x233FE94) == 2 then
WriteByte(0x233FE90, 2)
WriteByte(0x232DF80, 1)

--- Warp Between Rooms
SoraX = ReadLong(0x2811A08)+0x10, true
SoraZ = ReadLong(0x2811A08)+0x14, true
SoraY = ReadLong(0x2811A08)+0x18, true
SoraAnimation = ReadLong(0x2811A08)+0x70, true
if ReadByte(0x233FE8C) == 0 and ReadInt(SoraY,true) == 0xC4CEE666 and ReadFloat(0x281249C) == 1 then
WriteByte(0x233FE8C, 2)
WriteByte(0x232DF18, 2)
WriteByte(0x233FE90, 2)
WriteInt(0x22EC0AC, 10)
end

if ReadByte(0x233FE8C) == 2 and ReadInt(SoraX,true) <= 0x453F1F48 and ReadInt(SoraX,true) >= 0x453BECCC and ReadInt(SoraY,true) >= 0xC50B74BE and ReadInt(SoraY,true) <= 0xC526A9C6 and ReadFloat(0x281249C) == 1 then
WriteByte(0x233FE8C, 3)
WriteByte(0x232DF18, 4)
WriteByte(0x233FE90, 2)
WriteInt(0x22EC0AC, 10)
end

if ReadByte(0x233FE8C) == 3 and ReadFloat(SoraX,true) <= -2100 and ReadFloat(SoraZ,true) == -10 and ReadFloat(SoraY,true) <= -1600 and ReadFloat(0x281249C) == 1 then
WriteByte(0x233FE8C, 2)
WriteByte(0x232DF18, 2)
WriteByte(0x233FE90, 2)
WriteInt(0x22EC0AC, 10)
end

if ReadByte(0x233FE8C) == 3 and ReadFloat(SoraX,true) >= 2144 and ReadFloat(SoraY,true) <= -1916 and ReadFloat(SoraZ,true) <= -10 and ReadFloat(0x281249C) == 1 then
WriteByte(0x233FE8C, 6)
WriteByte(0x232DF18, 7)
WriteByte(0x233FE90, 2)
WriteInt(0x22EC0AC, 10)
end

if ReadByte(0x233FE8C) == 6 and ReadFloat(SoraZ,true) <= -4640 and ReadFloat(SoraZ,true) >= -4670 and ReadFloat(0x281249C) == 1 then
WriteByte(0x233FE8C, 3)
WriteByte(0x232DF18, 4)
WriteByte(0x233FE90, 2)
WriteInt(0x22EC0AC, 10)
end

if ReadByte(0x233FE8C) == 6 and ReadFloat(SoraZ,true) <= -1230 and ReadFloat(SoraZ,true) >= -1260 and ReadFloat(0x281249C) == 1 then
WriteByte(0x233FE8C, 5)
WriteByte(0x232DF18, 5)
WriteByte(0x233FE90, 2)
WriteInt(0x22EC0AC, 10)
end

if ReadByte(0x233FE8C) == 5 and ReadFloat(SoraX,true) >= 2380 and ReadFloat(SoraX,true) <= 2420 and ReadFloat(0x281249C) == 1 then
WriteByte(0x233FE8C, 6)
WriteByte(0x232DF18, 7)
WriteByte(0x233FE90, 2)
WriteFloat(0x281249C, 0)
WriteInt(0x22EC0AC, 10)
end

if ReadByte(0x233FE8C) == 5 and ReadFloat(SoraZ,true) >= 1900  and ReadFloat(0x281249C) == 1 then
WriteByte(0x233FE8C, 8)
WriteByte(0x232DF18, 8)
WriteByte(0x233FE90, 2)
WriteFloat(0x281249C, 0)
WriteInt(0x22EC0AC, 10)
end

if ReadByte(0x233FE8C) == 8 and ReadInt(SoraAnimation,true) ~= 0x8 then
WriteInt(SoraAnimation, 0x8, true)
end

if ReadByte(0x233FE8C) == 8 and ReadFloat(SoraZ,true) >= 4500 and ReadFloat(0x281249C) == 1 then
WriteByte(0x233FE8C, 7)
WriteByte(0x232DF18, 8)
WriteByte(0x233FE90, 2)
WriteFloat(0x281249C, 0)
WriteInt(0x22EC0AC, 10)
end

if ReadByte(0x233FE8C) == 7 and ReadFloat(SoraY,true) <= -11000 and ReadFloat(0x281249C) == 1 then
WriteByte(0x22EC0B0, 6)
WriteByte(0x22EC0AC, 10)
WriteFloat(0x281249C, 0)
end

--- Set Music
if ReadByte(0x233FE8C) == 1 or ReadByte(0x233FE8C) == 2 or ReadByte(0x233FE8C) == 0 or ReadByte(0x233FE8C) == 3 then
WriteByte(0x232D518, 143)
end

if ReadByte(0x233FE8C) == 6 then
WriteByte(0x232D518, 155)
end

if ReadByte(0x233FE8C) == 5 then
WriteByte(0x232D518, 123)
end

if ReadByte(0x233FE8C) == 8 then
WriteByte(0x232D518, 0x82)
end

if ReadByte(0x233FE8C) == 7 then
WriteByte(0x232D518, 0x6E)
end

end 

end
end

---------- Steam JP Version
if stmjpgames == 1 then
if ReadByte(0x2DEA864) >= 1 then
if ReadByte(0x22EC0B0) == 6 and ReadByte(0x233FBC0) == 7 then
WriteFloat(0x2689D1C, -70)

if ReadFloat(0x2689B30) < -9 and ReadFloat(0x2689B30) > -13
and ReadFloat(0x26899EC) < -60 and ReadFloat(0x26899EC) > -67 then
WriteByte(0x2689B40, 66)
WriteByte(0x507580, 2)
WriteByte(0x50707C, 2)
overworldmap = true
else
overworldmap = false
end

if overworldmap == true and ReadByte(0x23407B5) == 0x40 then
WriteByte(0x233FE84, 2)
WriteByte(0x233FE8C, 1)
WriteByte(0x232DF18, 1)
WriteByte(0x233FE90, 2)
WriteByte(0x22EC0B0, 4)
WriteByte(0x233FBC0, 5)
WriteInt(0x22EC0AC, 10)
WriteByte(0x2689B40, 67)
end
end

if ReadByte(0x233FE94) == 2 then
WriteByte(0x233FE90, 2)
WriteByte(0x232DF80, 1)

--- Warp Between Rooms
SoraX = ReadLong(0x2811A08)+0x10, true
SoraZ = ReadLong(0x2811A08)+0x14, true
SoraY = ReadLong(0x2811A08)+0x18, true
SoraAnimation = ReadLong(0x2811A08)+0x70, true
if ReadByte(0x233FE8C) == 0 and ReadInt(SoraY,true) == 0xC4CEE666 and ReadFloat(0x281249C) == 1 then
WriteByte(0x233FE8C, 2)
WriteByte(0x232DF18, 2)
WriteByte(0x233FE90, 2)
WriteInt(0x22EC0AC, 10)
end

if ReadByte(0x233FE8C) == 2 and ReadInt(SoraX,true) <= 0x453F1F48 and ReadInt(SoraX,true) >= 0x453BECCC and ReadInt(SoraY,true) >= 0xC50B74BE and ReadInt(SoraY,true) <= 0xC526A9C6 and ReadFloat(0x281249C) == 1 then
WriteByte(0x233FE8C, 3)
WriteByte(0x232DF18, 4)
WriteByte(0x233FE90, 2)
WriteInt(0x22EC0AC, 10)
end

if ReadByte(0x233FE8C) == 3 and ReadFloat(SoraX,true) <= -2100 and ReadFloat(SoraZ,true) == -10 and ReadFloat(SoraY,true) <= -1600 and ReadFloat(0x281249C) == 1 then
WriteByte(0x233FE8C, 2)
WriteByte(0x232DF18, 2)
WriteByte(0x233FE90, 2)
WriteInt(0x22EC0AC, 10)
end

if ReadByte(0x233FE8C) == 3 and ReadFloat(SoraX,true) >= 2144 and ReadFloat(SoraY,true) <= -1916 and ReadFloat(SoraZ,true) <= -10 and ReadFloat(0x281249C) == 1 then
WriteByte(0x233FE8C, 6)
WriteByte(0x232DF18, 7)
WriteByte(0x233FE90, 2)
WriteInt(0x22EC0AC, 10)
end

if ReadByte(0x233FE8C) == 6 and ReadFloat(SoraZ,true) <= -4640 and ReadFloat(SoraZ,true) >= -4670 and ReadFloat(0x281249C) == 1 then
WriteByte(0x233FE8C, 3)
WriteByte(0x232DF18, 4)
WriteByte(0x233FE90, 2)
WriteInt(0x22EC0AC, 10)
end

if ReadByte(0x233FE8C) == 6 and ReadFloat(SoraZ,true) <= -1230 and ReadFloat(SoraZ,true) >= -1260 and ReadFloat(0x281249C) == 1 then
WriteByte(0x233FE8C, 5)
WriteByte(0x232DF18, 5)
WriteByte(0x233FE90, 2)
WriteInt(0x22EC0AC, 10)
end

if ReadByte(0x233FE8C) == 5 and ReadFloat(SoraX,true) >= 2380 and ReadFloat(SoraX,true) <= 2420 and ReadFloat(0x281249C) == 1 then
WriteByte(0x233FE8C, 6)
WriteByte(0x232DF18, 7)
WriteByte(0x233FE90, 2)
WriteFloat(0x281249C, 0)
WriteInt(0x22EC0AC, 10)
end

if ReadByte(0x233FE8C) == 5 and ReadFloat(SoraZ,true) >= 1900  and ReadFloat(0x281249C) == 1 then
WriteByte(0x233FE8C, 8)
WriteByte(0x232DF18, 8)
WriteByte(0x233FE90, 2)
WriteFloat(0x281249C, 0)
WriteInt(0x22EC0AC, 10)
end

if ReadByte(0x233FE8C) == 8 and ReadInt(SoraAnimation,true) ~= 0x8 then
WriteInt(SoraAnimation, 0x8, true)
end

if ReadByte(0x233FE8C) == 8 and ReadFloat(SoraZ,true) >= 4500 and ReadFloat(0x281249C) == 1 then
WriteByte(0x233FE8C, 7)
WriteByte(0x232DF18, 8)
WriteByte(0x233FE90, 2)
WriteFloat(0x281249C, 0)
WriteInt(0x22EC0AC, 10)
end

if ReadByte(0x233FE8C) == 7 and ReadFloat(SoraY,true) <= -11000 and ReadFloat(0x281249C) == 1 then
WriteByte(0x22EC0B0, 6)
WriteByte(0x22EC0AC, 10)
WriteFloat(0x281249C, 0)
end

--- Set Music
if ReadByte(0x233FE8C) == 1 or ReadByte(0x233FE8C) == 2 or ReadByte(0x233FE8C) == 0 or ReadByte(0x233FE8C) == 3 then
WriteByte(0x232D518, 143)
end

if ReadByte(0x233FE8C) == 6 then
WriteByte(0x232D518, 155)
end

if ReadByte(0x233FE8C) == 5 then
WriteByte(0x232D518, 123)
end

if ReadByte(0x233FE8C) == 8 then
WriteByte(0x232D518, 0x82)
end

if ReadByte(0x233FE8C) == 7 then
WriteByte(0x232D518, 0x6E)
end

end 

end
end
end