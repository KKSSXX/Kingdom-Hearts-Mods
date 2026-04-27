LUAGUI_NAME = "Select Enchantments"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Select Enchantments"

IsEpicGLVersion = 0x68D229
IsSteamGLVersion = 0x68D451
IsSteamJPVersion = 0x68C401

Quickload = true
Haste = true
Protect = true
Shell = true
AttackBoost = true
MagicBoost = true
Regen = true
MunnyPlus = true
Berserk = true
MagicDefelctor = true
AttackReflector = true
Float = true
AutoLife = true
AutoTeleport = true
AutoRemedy = true
Steal = true
Drain = true
DoubleStrike = true
FocusSaver = true
Overdrive = true
GaugeBoost = true
AutoCounter = true
StunBoost = true
DoubleEXP = true
DoubleCP = true
AutoBlock = true

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
		ConsolePrint("Select Enchantments (EPIC GL) - installed")
	end
	
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Select Enchantments (Steam GL) - installed")
	end
	
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Select Enchantments (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
Enchant1 = 0x10F9F5C0
Enchant2 = Enchant1+1
Enchant3 = Enchant1+2
Enchant4 = Enchant1+3
Enchantments()
end

---------- Steam Version
if stmgames == 1 then
Enchant1 = 0x10F9EEC0
Enchant2 = Enchant1+1
Enchant3 = Enchant1+2
Enchant4 = Enchant1+3
Enchantments()
end

---------- Steam JP Version
if stmjpgames == 1 then
Enchant1 = 0x10F9EEC0-0x1000
Enchant2 = Enchant1+1
Enchant3 = Enchant1+2
Enchant4 = Enchant1+3
Enchantments()
end

end

function Enchantments()
if Quickload == true then
WriteByte(Enchant1, ReadByte(Enchant1) | 0x02)
end
if Haste == true then
WriteByte(Enchant1, ReadByte(Enchant1) | 0x04)
end
if Protect == true then
WriteByte(Enchant1, ReadByte(Enchant1) | 0x08)
end
if Shell == true then
WriteByte(Enchant1, ReadByte(Enchant1) | 0x10)
end
if AttackBoost == true then
WriteByte(Enchant1, ReadByte(Enchant1) | 0x20)
end
if MagicBoost == true then
WriteByte(Enchant1, ReadByte(Enchant1) | 0x40)
end
if Regen == true then
WriteByte(Enchant1, ReadByte(Enchant1) | 0x80)
end

if MunnyPlus == true then
WriteByte(Enchant2, ReadByte(Enchant2) | 0x01)
end
if Berserk == true then
WriteByte(Enchant2, ReadByte(Enchant2) | 0x02)
end
if MagicDefelctor == true then
WriteByte(Enchant2, ReadByte(Enchant2) | 0x04)
end
if AttackReflector == true then
WriteByte(Enchant2, ReadByte(Enchant2) | 0x08)
end
if Float == true then
WriteByte(Enchant2, ReadByte(Enchant2) | 0x10)
end
if AutoLife == true then
WriteByte(Enchant2, ReadByte(Enchant2) | 0x20)
end
if AutoTeleport == true then
WriteByte(Enchant2, ReadByte(Enchant2) | 0x40)
end
if AutoRemedy == true then
WriteByte(Enchant2, ReadByte(Enchant2) | 0x80)
end

if Steal == true then
WriteByte(Enchant3, ReadByte(Enchant3) | 0x01)
end
if Drain == true then
WriteByte(Enchant3, ReadByte(Enchant3) | 0x02)
end
if DoubleStrike == true then
WriteByte(Enchant3, ReadByte(Enchant3) | 0x04)
end
if FocusSaver == true then
WriteByte(Enchant3, ReadByte(Enchant3) | 0x08)
end
if Overdrive == true then
WriteByte(Enchant3, ReadByte(Enchant3) | 0x10)
end
if GaugeBoost == true then
WriteByte(Enchant3, ReadByte(Enchant3) | 0x40)
end
if AutoCounter == true then
WriteByte(Enchant3, ReadByte(Enchant3) | 0x80)
end

if StunBoost == true then
WriteByte(Enchant4, ReadByte(Enchant4) | 0x01)
end
if DoubleEXP == true then
WriteByte(Enchant4, ReadByte(Enchant4) | 0x02)
end
if DoubleCP == true then
WriteByte(Enchant4, ReadByte(Enchant4) | 0x04)
end
if AutoBlock == true then
WriteByte(Enchant4, ReadByte(Enchant4) | 0x08)
end

end