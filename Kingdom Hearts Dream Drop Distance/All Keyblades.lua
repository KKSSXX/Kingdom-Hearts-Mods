LUAGUI_NAME = "All Keyblades"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "All Keyblades"

IsEpicGLVersion = 0x7F7109
IsSteamGLVersion = 0x7F7041
IsSteamJPVersion = 0x7F6FF1

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
		ConsolePrint("All Keyblades (EPIC GL) - installed")
	end
	
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("All Keyblades (Steam GL) - installed")
	end
	
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("All Keyblades (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
slot1 = 0xA4BAE4
slot2 = slot1+0x2
slot3 = slot1+0x4
slot4 = slot1+0x6
slot5 = slot1+0x8
slot6 = slot1+0xA
slot7 = slot1+0xC
slot8 = slot1+0xE
slot9 = slot1+0x10
slot10 = slot1+0x12
slot11 = slot1+0x14
slot12 = slot1+0x16
slot13 = slot1+0x18
slot18 = slot1+0x22
slot19 = slot1+0x24
slot20 = slot1+0x26
slot21 = slot1+0x28
slot22 = slot1+0x2A
slot23 = slot1+0x2C
slot24 = slot1+0x2E
slot25 = slot1+0x30
slot26 = slot1+0x32
slot27 = slot1+0x34
slot28 = slot1+0x36
slot29 = slot1+0x38
slot32 = slot1+0x3E
WriteShort(slot1, 0x0200)
WriteShort(slot2, 0x0201)
WriteShort(slot3, 0x0202)
WriteShort(slot4, 0x0203)
WriteShort(slot5, 0x0204)
WriteShort(slot6, 0x0205)
WriteShort(slot7, 0x0206)
WriteShort(slot8, 0x0207)
WriteShort(slot9, 0x0208)
WriteShort(slot10, 0x0209)
WriteShort(slot11, 0x020A)
WriteShort(slot12, 0x020B)
WriteShort(slot13, 0x020C)
WriteShort(slot18, 0x0211)
WriteShort(slot19, 0x0212)
WriteShort(slot20, 0x0213)
WriteShort(slot21, 0x0214)
WriteShort(slot22, 0x0215)
WriteShort(slot23, 0x0216)
WriteShort(slot24, 0x0217)
WriteShort(slot25, 0x0218)
WriteShort(slot26, 0x0219)
WriteShort(slot27, 0x021A)
WriteShort(slot28, 0x021B)
WriteShort(slot29, 0x021C)
WriteShort(slot32, 0x021F)
end

---------- Steam Version
if stmgames == 1 then
slot1 = 0xA4C264
slot2 = slot1+0x2
slot3 = slot1+0x4
slot4 = slot1+0x6
slot5 = slot1+0x8
slot6 = slot1+0xA
slot7 = slot1+0xC
slot8 = slot1+0xE
slot9 = slot1+0x10
slot10 = slot1+0x12
slot11 = slot1+0x14
slot12 = slot1+0x16
slot13 = slot1+0x18
slot18 = slot1+0x22
slot19 = slot1+0x24
slot20 = slot1+0x26
slot21 = slot1+0x28
slot22 = slot1+0x2A
slot23 = slot1+0x2C
slot24 = slot1+0x2E
slot25 = slot1+0x30
slot26 = slot1+0x32
slot27 = slot1+0x34
slot28 = slot1+0x36
slot29 = slot1+0x38
slot32 = slot1+0x3E
WriteShort(slot1, 0x0200)
WriteShort(slot2, 0x0201)
WriteShort(slot3, 0x0202)
WriteShort(slot4, 0x0203)
WriteShort(slot5, 0x0204)
WriteShort(slot6, 0x0205)
WriteShort(slot7, 0x0206)
WriteShort(slot8, 0x0207)
WriteShort(slot9, 0x0208)
WriteShort(slot10, 0x0209)
WriteShort(slot11, 0x020A)
WriteShort(slot12, 0x020B)
WriteShort(slot13, 0x020C)
WriteShort(slot18, 0x0211)
WriteShort(slot19, 0x0212)
WriteShort(slot20, 0x0213)
WriteShort(slot21, 0x0214)
WriteShort(slot22, 0x0215)
WriteShort(slot23, 0x0216)
WriteShort(slot24, 0x0217)
WriteShort(slot25, 0x0218)
WriteShort(slot26, 0x0219)
WriteShort(slot27, 0x021A)
WriteShort(slot28, 0x021B)
WriteShort(slot29, 0x021C)
WriteShort(slot32, 0x021F)
end

---------- Steam JP Version
if stmjpgames == 1 then
slot1 = 0xA4C264
slot2 = slot1+0x2
slot3 = slot1+0x4
slot4 = slot1+0x6
slot5 = slot1+0x8
slot6 = slot1+0xA
slot7 = slot1+0xC
slot8 = slot1+0xE
slot9 = slot1+0x10
slot10 = slot1+0x12
slot11 = slot1+0x14
slot12 = slot1+0x16
slot13 = slot1+0x18
slot18 = slot1+0x22
slot19 = slot1+0x24
slot20 = slot1+0x26
slot21 = slot1+0x28
slot22 = slot1+0x2A
slot23 = slot1+0x2C
slot24 = slot1+0x2E
slot25 = slot1+0x30
slot26 = slot1+0x32
slot27 = slot1+0x34
slot28 = slot1+0x36
slot29 = slot1+0x38
slot32 = slot1+0x3E
WriteShort(slot1, 0x0200)
WriteShort(slot2, 0x0201)
WriteShort(slot3, 0x0202)
WriteShort(slot4, 0x0203)
WriteShort(slot5, 0x0204)
WriteShort(slot6, 0x0205)
WriteShort(slot7, 0x0206)
WriteShort(slot8, 0x0207)
WriteShort(slot9, 0x0208)
WriteShort(slot10, 0x0209)
WriteShort(slot11, 0x020A)
WriteShort(slot12, 0x020B)
WriteShort(slot13, 0x020C)
WriteShort(slot18, 0x0211)
WriteShort(slot19, 0x0212)
WriteShort(slot20, 0x0213)
WriteShort(slot21, 0x0214)
WriteShort(slot22, 0x0215)
WriteShort(slot23, 0x0216)
WriteShort(slot24, 0x0217)
WriteShort(slot25, 0x0218)
WriteShort(slot26, 0x0219)
WriteShort(slot27, 0x021A)
WriteShort(slot28, 0x021B)
WriteShort(slot29, 0x021C)
WriteShort(slot32, 0x021F)
end

end