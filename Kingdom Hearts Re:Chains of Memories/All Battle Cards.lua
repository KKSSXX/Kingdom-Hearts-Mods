LUAGUI_NAME = "All Battle Cards"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "All Battle Cards"

IsEpicGLVersion = 0x616149
IsSteamGLVersion = 0x6116C1
IsSteamJPVersion = 0x611671


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
		ConsolePrint("All Battle Cards (EPIC GL) - installed")
	end
	
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("All Battle Cards (Steam GL) - installed")
	end
	
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("All Battle Cards (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then

IngameCheck = 0xAC3F00
KingdomKey = ReadLong(0x87A1E8)+0x30, true
ThreeWishes = ReadLong(0x87A1E8)+0x3A , true
CrabClaw = ReadLong(0x87A1E8)+0x44, true
PumpkinHead = ReadLong(0x87A1E8)+0x4E, true
FairyHarp = ReadLong(0x87A1E8)+0x58, true
WishingStar = ReadLong(0x87A1E8)+0x62, true
Spellbinder = ReadLong(0x87A1E8)+0x6C, true
MetalChocobo = ReadLong(0x87A1E8)+0x76, true
Olympia = ReadLong(0x87A1E8)+0x80, true
LionHeart = ReadLong(0x87A1E8)+0x8A, true
LadyLuck = ReadLong(0x87A1E8)+0x94, true
DivineRose = ReadLong(0x87A1E8)+0x9E, true
OathKeeper = ReadLong(0x87A1E8)+0xA8, true
Oblivion = ReadLong(0x87A1E8)+0xB2, true
UltimaWeapon = ReadLong(0x87A1E8)+0xBC, true
DiamondDust = ReadLong(0x87A1E8)+0xC6, true
OneWingedAngel = ReadLong(0x87A1E8)+0xD0, true
SoulEater = ReadLong(0x87A1E8)+0xDA, true
StarSeeker = ReadLong(0x87A1E8)+0xE4, true
TotalEclipse = ReadLong(0x87A1E8)+0xEE, true
MidnightRoar = ReadLong(0x87A1E8)+0xF8, true
MaverickFlare = ReadLong(0x87A1E8)+0x102, true
TwoBecomeOne = ReadLong(0x87A1E8)+0x10C, true
BondofFlame = ReadLong(0x87A1E8)+0x116, true
PremiumKingdomKey = ReadLong(0x87A1E8)+0x120, true
PremiumThreeWishes = ReadLong(0x87A1E8)+0x12A , true
PremiumCrabClaw = ReadLong(0x87A1E8)+0x134, true
PremiumPumpkinHead = ReadLong(0x87A1E8)+0x13E, true
PremiumFairyHarp = ReadLong(0x87A1E8)+0x148, true
PremiumWishingStar = ReadLong(0x87A1E8)+0x152, true
PremiumSpellbinder = ReadLong(0x87A1E8)+0x15C, true
PremiumMetalChocobo = ReadLong(0x87A1E8)+0x166, true
PremiumOlympia = ReadLong(0x87A1E8)+0x170, true
PremiumLionHeart = ReadLong(0x87A1E8)+0x17A, true
PremiumLadyLuck = ReadLong(0x87A1E8)+0x184, true
PremiumDivineRose = ReadLong(0x87A1E8)+0x18E, true
PremiumOathKeeper = ReadLong(0x87A1E8)+0x198, true
PremiumOblivion = ReadLong(0x87A1E8)+0x1A2, true
PremiumUltimaWeapon = ReadLong(0x87A1E8)+0x1AC, true
PremiumDiamondDust = ReadLong(0x87A1E8)+0x1B6, true
PremiumOneWingedAngel = ReadLong(0x87A1E8)+0x1C0, true
PremiumSoulEater = ReadLong(0x87A1E8)+0x1CA, true
PremiumStarSeeker = ReadLong(0x87A1E8)+0x1D4, true
PremiumTotalEclipse = ReadLong(0x87A1E8)+0x1DE, true
PremiumMidnightRoar = ReadLong(0x87A1E8)+0x1E8, true
PremiumMaverickFlare = ReadLong(0x87A1E8)+0x1F2, true
PremiumTwoBecomeOne = ReadLong(0x87A1E8)+0x1FC, true
PremiumBondofFlame = ReadLong(0x87A1E8)+0x206, true
Fire = ReadLong(0x87A1E8)+0x210, true
Blizzard = ReadLong(0x87A1E8)+0x21A, true
Thunder = ReadLong(0x87A1E8)+0x224, true
Cure = ReadLong(0x87A1E8)+0x22E, true
Gravity = ReadLong(0x87A1E8)+0x238, true
Stop = ReadLong(0x87A1E8)+0x242, true
Aero = ReadLong(0x87A1E8)+0x24C, true
UnkownMagic1 = ReadLong(0x87A1E8)+0x256, true
UnkownMagic2 = ReadLong(0x87A1E8)+0x260, true
Simba = ReadLong(0x87A1E8)+0x26A, true
Genie = ReadLong(0x87A1E8)+0x274, true
Bambi = ReadLong(0x87A1E8)+0x27E, true
Dumbo = ReadLong(0x87A1E8)+0x288, true
TinkerBell = ReadLong(0x87A1E8)+0x292, true
Mushu = ReadLong(0x87A1E8)+0x29C, true
Cloud = ReadLong(0x87A1E8)+0x2A6, true
PremiumFire = ReadLong(0x87A1E8)+0x2B0, true
PremiumBlizzard = ReadLong(0x87A1E8)+0x2BA, true
PremiumThunder = ReadLong(0x87A1E8)+0x2C4, true
PremiumCure = ReadLong(0x87A1E8)+0x2CE, true
PremiumGravity = ReadLong(0x87A1E8)+0x2D8, true
PremiumStop = ReadLong(0x87A1E8)+0x2E2, true
PremiumAero = ReadLong(0x87A1E8)+0x2EC, true
PremiumUnkownMagic1 = ReadLong(0x87A1E8)+0x2F6, true
PremiumUnkownMagic2 = ReadLong(0x87A1E8)+0x300, true
PremiumSimba = ReadLong(0x87A1E8)+0x30A, true
PremiumGenie = ReadLong(0x87A1E8)+0x314, true
PremiumBambi = ReadLong(0x87A1E8)+0x31E, true
PremiumDumbo = ReadLong(0x87A1E8)+0x328, true
PremiumTinkerBell = ReadLong(0x87A1E8)+0x332, true
PremiumMushu = ReadLong(0x87A1E8)+0x33C, true
PremiumCloud = ReadLong(0x87A1E8)+0x346, true
Potion = ReadLong(0x87A1E8)+0x350, true
HiPotion = ReadLong(0x87A1E8)+0x35A, true
MegaPotion = ReadLong(0x87A1E8)+0x364, true
Ether = ReadLong(0x87A1E8)+0x36E, true
MegaEther = ReadLong(0x87A1E8)+0x378, true
Elixir = ReadLong(0x87A1E8)+0x382, true
Megalixir = ReadLong(0x87A1E8)+0x38C, true
EnemyCards = ReadLong(0x87A1E8)+0x490, true
JournalBattleCardFlags = ReadLong(0x87A1E8)+0xEE7, true

if ReadByte(IngameCheck) >= 1 then
		WriteByte(KingdomKey, 99, true)   -- Kingdom Key #0
		WriteByte(KingdomKey+1, 99, true) -- Kingdom Key #1
		WriteByte(KingdomKey+2, 99, true) -- Kingdom Key #2
		WriteByte(KingdomKey+3, 99, true) -- Kingdom Key #3
		WriteByte(KingdomKey+4, 99, true) -- Kingdom Key #4
		WriteByte(KingdomKey+5, 99, true) -- Kingdom Key #5
		WriteByte(KingdomKey+6, 99, true) -- Kingdom Key #6
		WriteByte(KingdomKey+7, 99, true) -- Kingdom Key #7
		WriteByte(KingdomKey+8, 99, true) -- Kingdom Key #8
		WriteByte(KingdomKey+9, 99, true) -- Kingdom Key #9
		
		WriteByte(ThreeWishes, 99, true)   -- Three Wishes #0
		WriteByte(ThreeWishes+1, 99, true) -- Three Wishes #1
		WriteByte(ThreeWishes+2, 99, true) -- Three Wishes #2
		WriteByte(ThreeWishes+3, 99, true) -- Three Wishes #3
		WriteByte(ThreeWishes+4, 99, true) -- Three Wishes #4
		WriteByte(ThreeWishes+5, 99, true) -- Three Wishes #5
		WriteByte(ThreeWishes+6, 99, true) -- Three Wishes #6
		WriteByte(ThreeWishes+7, 99, true) -- Three Wishes #7
		WriteByte(ThreeWishes+8, 99, true) -- Three Wishes #8
		WriteByte(ThreeWishes+9, 99, true) -- Three Wishes #9
		
		WriteByte(CrabClaw, 99, true)   -- Crab Claw #0
		WriteByte(CrabClaw+1, 99, true) -- Crab Claw #1
		WriteByte(CrabClaw+2, 99, true) -- Crab Claw #2
		WriteByte(CrabClaw+3, 99, true) -- Crab Claw #3
		WriteByte(CrabClaw+4, 99, true) -- Crab Claw #4
		WriteByte(CrabClaw+5, 99, true) -- Crab Claw #5
		WriteByte(CrabClaw+6, 99, true) -- Crab Claw #6
		WriteByte(CrabClaw+7, 99, true) -- Crab Claw #7
		WriteByte(CrabClaw+8, 99, true) -- Crab Claw #8
		WriteByte(CrabClaw+9, 99, true) -- Crab Claw #9
		
		WriteByte(PumpkinHead, 99, true)   -- Pumpkinhead #0
		WriteByte(PumpkinHead+1, 99, true) -- Pumpkinhead #1
		WriteByte(PumpkinHead+2, 99, true) -- Pumpkinhead #2
		WriteByte(PumpkinHead+3, 99, true) -- Pumpkinhead #3
		WriteByte(PumpkinHead+4, 99, true) -- Pumpkinhead #4
		WriteByte(PumpkinHead+5, 99, true) -- Pumpkinhead #5
		WriteByte(PumpkinHead+6, 99, true) -- Pumpkinhead #6
		WriteByte(PumpkinHead+7, 99, true) -- Pumpkinhead #7
		WriteByte(PumpkinHead+8, 99, true) -- Pumpkinhead #8
		WriteByte(PumpkinHead+9, 99, true) -- Pumpkinhead #9
		
		WriteByte(FairyHarp, 99, true)   -- Fairy Harp #0
		WriteByte(FairyHarp+1, 99, true) -- Fairy Harp #1
		WriteByte(FairyHarp+2, 99, true) -- Fairy Harp #2
		WriteByte(FairyHarp+3, 99, true) -- Fairy Harp #3
		WriteByte(FairyHarp+4, 99, true) -- Fairy Harp #4
		WriteByte(FairyHarp+5, 99, true) -- Fairy Harp #5
		WriteByte(FairyHarp+6, 99, true) -- Fairy Harp #6
		WriteByte(FairyHarp+7, 99, true) -- Fairy Harp #7
		WriteByte(FairyHarp+8, 99, true) -- Fairy Harp #8
		WriteByte(FairyHarp+9, 99, true) -- Fairy Harp #9
		
		WriteByte(WishingStar, 99, true)   -- Wishing Star #0
		WriteByte(WishingStar+1, 99, true) -- Wishing Star #1
		WriteByte(WishingStar+2, 99, true) -- Wishing Star #2
		WriteByte(WishingStar+3, 99, true) -- Wishing Star #3
		WriteByte(WishingStar+4, 99, true) -- Wishing Star #4
		WriteByte(WishingStar+5, 99, true) -- Wishing Star #5
		WriteByte(WishingStar+6, 99, true) -- Wishing Star #6
		WriteByte(WishingStar+7, 99, true) -- Wishing Star #7
		WriteByte(WishingStar+8, 99, true) -- Wishing Star #8
		WriteByte(WishingStar+9, 99, true) -- Wishing Star #9
		
		WriteByte(Spellbinder, 99, true)   -- Spellbinder #0
		WriteByte(Spellbinder+1, 99, true) -- Spellbinder #1
		WriteByte(Spellbinder+2, 99, true) -- Spellbinder #2
		WriteByte(Spellbinder+3, 99, true) -- Spellbinder #3
		WriteByte(Spellbinder+4, 99, true) -- Spellbinder #4
		WriteByte(Spellbinder+5, 99, true) -- Spellbinder #5
		WriteByte(Spellbinder+6, 99, true) -- Spellbinder #6
		WriteByte(Spellbinder+7, 99, true) -- Spellbinder #7
		WriteByte(Spellbinder+8, 99, true) -- Spellbinder #8
		WriteByte(Spellbinder+9, 99, true) -- Spellbinder #9
		
		WriteByte(MetalChocobo, 99, true)   -- Metal Chocobo #0
		WriteByte(MetalChocobo+1, 99, true) -- Metal Chocobo #1
		WriteByte(MetalChocobo+2, 99, true) -- Metal Chocobo #2
		WriteByte(MetalChocobo+3, 99, true) -- Metal Chocobo #3
		WriteByte(MetalChocobo+4, 99, true) -- Metal Chocobo #4
		WriteByte(MetalChocobo+5, 99, true) -- Metal Chocobo #5
		WriteByte(MetalChocobo+6, 99, true) -- Metal Chocobo #6
		WriteByte(MetalChocobo+7, 99, true) -- Metal Chocobo #7
		WriteByte(MetalChocobo+8, 99, true) -- Metal Chocobo #8
		WriteByte(MetalChocobo+9, 99, true) -- Metal Chocobo #9
		
		WriteByte(Olympia, 99, true)   -- Olympia #0
		WriteByte(Olympia+1, 99, true) -- Olympia #1
		WriteByte(Olympia+2, 99, true) -- Olympia #2
		WriteByte(Olympia+3, 99, true) -- Olympia #3
		WriteByte(Olympia+4, 99, true) -- Olympia #4
		WriteByte(Olympia+5, 99, true) -- Olympia #5
		WriteByte(Olympia+6, 99, true) -- Olympia #6
		WriteByte(Olympia+7, 99, true) -- Olympia #7
		WriteByte(Olympia+8, 99, true) -- Olympia #8
		WriteByte(Olympia+9, 99, true) -- Olympia #9
		
		WriteByte(LionHeart, 99, true)   -- Lionheart #0
		WriteByte(LionHeart+1, 99, true) -- Lionheart #1
		WriteByte(LionHeart+2, 99, true) -- Lionheart #2
		WriteByte(LionHeart+3, 99, true) -- Lionheart #3
		WriteByte(LionHeart+4, 99, true) -- Lionheart #4
		WriteByte(LionHeart+5, 99, true) -- Lionheart #5
		WriteByte(LionHeart+6, 99, true) -- Lionheart #6
		WriteByte(LionHeart+7, 99, true) -- Lionheart #7
		WriteByte(LionHeart+8, 99, true) -- Lionheart #8
		WriteByte(LionHeart+9, 99, true) -- Lionheart #9
		
		WriteByte(LadyLuck, 99, true)   -- Lady Luck #0
		WriteByte(LadyLuck+1, 99, true) -- Lady Luck #1
		WriteByte(LadyLuck+2, 99, true) -- Lady Luck #2
		WriteByte(LadyLuck+3, 99, true) -- Lady Luck #3
		WriteByte(LadyLuck+4, 99, true) -- Lady Luck #4
		WriteByte(LadyLuck+5, 99, true) -- Lady Luck #5
		WriteByte(LadyLuck+6, 99, true) -- Lady Luck #6
		WriteByte(LadyLuck+7, 99, true) -- Lady Luck #7
		WriteByte(LadyLuck+8, 99, true) -- Lady Luck #8
		WriteByte(LadyLuck+9, 99, true) -- Lady Luck #9
		
		WriteByte(DivineRose, 99, true)   -- Divine Rose #0
		WriteByte(DivineRose+1, 99, true) -- Divine Rose #1
		WriteByte(DivineRose+2, 99, true) -- Divine Rose #2
		WriteByte(DivineRose+3, 99, true) -- Divine Rose #3
		WriteByte(DivineRose+4, 99, true) -- Divine Rose #4
		WriteByte(DivineRose+5, 99, true) -- Divine Rose #5
		WriteByte(DivineRose+6, 99, true) -- Divine Rose #6
		WriteByte(DivineRose+7, 99, true) -- Divine Rose #7
		WriteByte(DivineRose+8, 99, true) -- Divine Rose #8
		WriteByte(DivineRose+9, 99, true) -- Divine Rose #9
		
		WriteByte(OathKeeper, 99, true)   -- Oathkeeper #0
		WriteByte(OathKeeper+1, 99, true) -- Oathkeeper #1
		WriteByte(OathKeeper+2, 99, true) -- Oathkeeper #2
		WriteByte(OathKeeper+3, 99, true) -- Oathkeeper #3
		WriteByte(OathKeeper+4, 99, true) -- Oathkeeper #4
		WriteByte(OathKeeper+5, 99, true) -- Oathkeeper #5
		WriteByte(OathKeeper+6, 99, true) -- Oathkeeper #6
		WriteByte(OathKeeper+7, 99, true) -- Oathkeeper #7
		WriteByte(OathKeeper+8, 99, true) -- Oathkeeper #8
		WriteByte(OathKeeper+9, 99, true) -- Oathkeeper #9
		
		WriteByte(Oblivion, 99, true)   -- Oblivion #0
		WriteByte(Oblivion+1, 99, true) -- Oblivion #1
		WriteByte(Oblivion+2, 99, true) -- Oblivion #2
		WriteByte(Oblivion+3, 99, true) -- Oblivion #3
		WriteByte(Oblivion+4, 99, true) -- Oblivion #4
		WriteByte(Oblivion+5, 99, true) -- Oblivion #5
		WriteByte(Oblivion+6, 99, true) -- Oblivion #6
		WriteByte(Oblivion+7, 99, true) -- Oblivion #7
		WriteByte(Oblivion+8, 99, true) -- Oblivion #8
		WriteByte(Oblivion+9, 99, true) -- Oblivion #9
		
		WriteByte(UltimaWeapon, 99, true)   -- Ultima Weapon #0
		WriteByte(UltimaWeapon+1, 99, true) -- Ultima Weapon #1
		WriteByte(UltimaWeapon+2, 99, true) -- Ultima Weapon #2
		WriteByte(UltimaWeapon+3, 99, true) -- Ultima Weapon #3
		WriteByte(UltimaWeapon+4, 99, true) -- Ultima Weapon #4
		WriteByte(UltimaWeapon+5, 99, true) -- Ultima Weapon #5
		WriteByte(UltimaWeapon+6, 99, true) -- Ultima Weapon #6
		WriteByte(UltimaWeapon+7, 99, true) -- Ultima Weapon #7
		WriteByte(UltimaWeapon+8, 99, true) -- Ultima Weapon #8
		WriteByte(UltimaWeapon+9, 99, true) -- Ultima Weapon #9
		
		WriteByte(DiamondDust, 99, true)   -- Diamond Dust #0
		WriteByte(DiamondDust+1, 99, true) -- Diamond Dust #1
		WriteByte(DiamondDust+2, 99, true) -- Diamond Dust #2
		WriteByte(DiamondDust+3, 99, true) -- Diamond Dust #3
		WriteByte(DiamondDust+4, 99, true) -- Diamond Dust #4
		WriteByte(DiamondDust+5, 99, true) -- Diamond Dust #5
		WriteByte(DiamondDust+6, 99, true) -- Diamond Dust #6
		WriteByte(DiamondDust+7, 99, true) -- Diamond Dust #7
		WriteByte(DiamondDust+8, 99, true) -- Diamond Dust #8
		WriteByte(DiamondDust+9, 99, true) -- Diamond Dust #9
		
		WriteByte(OneWingedAngel, 99, true)   -- One-Winged Angel #0
		WriteByte(OneWingedAngel+1, 99, true) -- One-Winged Angel #1
		WriteByte(OneWingedAngel+2, 99, true) -- One-Winged Angel #2
		WriteByte(OneWingedAngel+3, 99, true) -- One-Winged Angel #3
		WriteByte(OneWingedAngel+4, 99, true) -- One-Winged Angel #4
		WriteByte(OneWingedAngel+5, 99, true) -- One-Winged Angel #5
		WriteByte(OneWingedAngel+6, 99, true) -- One-Winged Angel #6
		WriteByte(OneWingedAngel+7, 99, true) -- One-Winged Angel #7
		WriteByte(OneWingedAngel+8, 99, true) -- One-Winged Angel #8
		WriteByte(OneWingedAngel+9, 99, true) -- One-Winged Angel #9
		
		WriteByte(SoulEater, 99, true)   -- Soul Eater #0
		WriteByte(SoulEater+1, 99, true) -- Soul Eater #1
		WriteByte(SoulEater+2, 99, true) -- Soul Eater #2
		WriteByte(SoulEater+3, 99, true) -- Soul Eater #3
		WriteByte(SoulEater+4, 99, true) -- Soul Eater #4
		WriteByte(SoulEater+5, 99, true) -- Soul Eater #5
		WriteByte(SoulEater+6, 99, true) -- Soul Eater #6
		WriteByte(SoulEater+7, 99, true) -- Soul Eater #7
		WriteByte(SoulEater+8, 99, true) -- Soul Eater #8
		WriteByte(SoulEater+9, 99, true) -- Soul Eater #9
		
		WriteByte(StarSeeker, 99, true)   -- Star Seeker #0
		WriteByte(StarSeeker+1, 99, true) -- Star Seeker #1
		WriteByte(StarSeeker+2, 99, true) -- Star Seeker #2
		WriteByte(StarSeeker+3, 99, true) -- Star Seeker #3
		WriteByte(StarSeeker+4, 99, true) -- Star Seeker #4
		WriteByte(StarSeeker+5, 99, true) -- Star Seeker #5
		WriteByte(StarSeeker+6, 99, true) -- Star Seeker #6
		WriteByte(StarSeeker+7, 99, true) -- Star Seeker #7
		WriteByte(StarSeeker+8, 99, true) -- Star Seeker #8
		WriteByte(StarSeeker+9, 99, true) -- Star Seeker #9
		
		WriteByte(TotalEclipse, 99, true)   -- Total Eclipse #0
		WriteByte(TotalEclipse+1, 99, true) -- Total Eclipse #1
		WriteByte(TotalEclipse+2, 99, true) -- Total Eclipse #2
		WriteByte(TotalEclipse+3, 99, true) -- Total Eclipse #3
		WriteByte(TotalEclipse+4, 99, true) -- Total Eclipse #4
		WriteByte(TotalEclipse+5, 99, true) -- Total Eclipse #5
		WriteByte(TotalEclipse+6, 99, true) -- Total Eclipse #6
		WriteByte(TotalEclipse+7, 99, true) -- Total Eclipse #7
		WriteByte(TotalEclipse+8, 99, true) -- Total Eclipse #8
		WriteByte(TotalEclipse+9, 99, true) -- Total Eclipse #9
		
		WriteByte(MidnightRoar, 99, true)   -- Midnight Roar #0
		WriteByte(MidnightRoar+1, 99, true) -- Midnight Roar #1
		WriteByte(MidnightRoar+2, 99, true) -- Midnight Roar #2
		WriteByte(MidnightRoar+3, 99, true) -- Midnight Roar #3
		WriteByte(MidnightRoar+4, 99, true) -- Midnight Roar #4
		WriteByte(MidnightRoar+5, 99, true) -- Midnight Roar #5
		WriteByte(MidnightRoar+6, 99, true) -- Midnight Roar #6
		WriteByte(MidnightRoar+7, 99, true) -- Midnight Roar #7
		WriteByte(MidnightRoar+8, 99, true) -- Midnight Roar #8
		WriteByte(MidnightRoar+9, 99, true) -- Midnight Roar #9
		
		WriteByte(MaverickFlare, 99, true)   -- Maverick Flare #0
		WriteByte(MaverickFlare+1, 99, true) -- Maverick Flare #1
		WriteByte(MaverickFlare+2, 99, true) -- Maverick Flare #2
		WriteByte(MaverickFlare+3, 99, true) -- Maverick Flare #3
		WriteByte(MaverickFlare+4, 99, true) -- Maverick Flare #4
		WriteByte(MaverickFlare+5, 99, true) -- Maverick Flare #5
		WriteByte(MaverickFlare+6, 99, true) -- Maverick Flare #6
		WriteByte(MaverickFlare+7, 99, true) -- Maverick Flare #7
		WriteByte(MaverickFlare+8, 99, true) -- Maverick Flare #8
		WriteByte(MaverickFlare+9, 99, true) -- Maverick Flare #9
		
		WriteByte(TwoBecomeOne, 99, true)   -- Two Become One #0
		WriteByte(TwoBecomeOne+1, 99, true) -- Two Become One #1
		WriteByte(TwoBecomeOne+2, 99, true) -- Two Become One #2
		WriteByte(TwoBecomeOne+3, 99, true) -- Two Become One #3
		WriteByte(TwoBecomeOne+4, 99, true) -- Two Become One #4
		WriteByte(TwoBecomeOne+5, 99, true) -- Two Become One #5
		WriteByte(TwoBecomeOne+6, 99, true) -- Two Become One #6
		WriteByte(TwoBecomeOne+7, 99, true) -- Two Become One #7
		WriteByte(TwoBecomeOne+8, 99, true) -- Two Become One #8
		WriteByte(TwoBecomeOne+9, 99, true) -- Two Become One #9
		
		WriteByte(BondofFlame, 99, true)   -- Bond of Flame #0
		WriteByte(BondofFlame+1, 99, true) -- Bond of Flame #1
		WriteByte(BondofFlame+2, 99, true) -- Bond of Flame #2
		WriteByte(BondofFlame+3, 99, true) -- Bond of Flame #3
		WriteByte(BondofFlame+4, 99, true) -- Bond of Flame #4
		WriteByte(BondofFlame+5, 99, true) -- Bond of Flame #5
		WriteByte(BondofFlame+6, 99, true) -- Bond of Flame #6
		WriteByte(BondofFlame+7, 99, true) -- Bond of Flame #7
		WriteByte(BondofFlame+8, 99, true) -- Bond of Flame #8
		WriteByte(BondofFlame+9, 99, true) -- Bond of Flame #9
		
		WriteByte(PremiumKingdomKey, 99, true)   -- Premium Kingdom Key #0
		WriteByte(PremiumKingdomKey+1, 99, true) -- Premium Kingdom Key #1
		WriteByte(PremiumKingdomKey+2, 99, true) -- Premium Kingdom Key #2
		WriteByte(PremiumKingdomKey+3, 99, true) -- Premium Kingdom Key #3
		WriteByte(PremiumKingdomKey+4, 99, true) -- Premium Kingdom Key #4
		WriteByte(PremiumKingdomKey+5, 99, true) -- Premium Kingdom Key #5
		WriteByte(PremiumKingdomKey+6, 99, true) -- Premium Kingdom Key #6
		WriteByte(PremiumKingdomKey+7, 99, true) -- Premium Kingdom Key #7
		WriteByte(PremiumKingdomKey+8, 99, true) -- Premium Kingdom Key #8
		WriteByte(PremiumKingdomKey+9, 99, true) -- Premium Kingdom Key #9
		
		WriteByte(PremiumThreeWishes, 99, true)   -- Premium Three Wishes #0
		WriteByte(PremiumThreeWishes+1, 99, true) -- Premium Three Wishes #1
		WriteByte(PremiumThreeWishes+2, 99, true) -- Premium Three Wishes #2
		WriteByte(PremiumThreeWishes+3, 99, true) -- Premium Three Wishes #3
		WriteByte(PremiumThreeWishes+4, 99, true) -- Premium Three Wishes #4
		WriteByte(PremiumThreeWishes+5, 99, true) -- Premium Three Wishes #5
		WriteByte(PremiumThreeWishes+6, 99, true) -- Premium Three Wishes #6
		WriteByte(PremiumThreeWishes+7, 99, true) -- Premium Three Wishes #7
		WriteByte(PremiumThreeWishes+8, 99, true) -- Premium Three Wishes #8
		WriteByte(PremiumThreeWishes+9, 99, true) -- Premium Three Wishes #9
		
		WriteByte(PremiumCrabClaw, 99, true)   -- Premium Crab Claw #0
		WriteByte(PremiumCrabClaw+1, 99, true) -- Premium Crab Claw #1
		WriteByte(PremiumCrabClaw+2, 99, true) -- Premium Crab Claw #2
		WriteByte(PremiumCrabClaw+3, 99, true) -- Premium Crab Claw #3
		WriteByte(PremiumCrabClaw+4, 99, true) -- Premium Crab Claw #4
		WriteByte(PremiumCrabClaw+5, 99, true) -- Premium Crab Claw #5
		WriteByte(PremiumCrabClaw+6, 99, true) -- Premium Crab Claw #6
		WriteByte(PremiumCrabClaw+7, 99, true) -- Premium Crab Claw #7
		WriteByte(PremiumCrabClaw+8, 99, true) -- Premium Crab Claw #8
		WriteByte(PremiumCrabClaw+9, 99, true) -- Premium Crab Claw #9
		
		WriteByte(PremiumPumpkinHead, 99, true)   -- Premium Pumpkinhead #0
		WriteByte(PremiumPumpkinHead+1, 99, true) -- Premium Pumpkinhead #1
		WriteByte(PremiumPumpkinHead+2, 99, true) -- Premium Pumpkinhead #2
		WriteByte(PremiumPumpkinHead+3, 99, true) -- Premium Pumpkinhead #3
		WriteByte(PremiumPumpkinHead+4, 99, true) -- Premium Pumpkinhead #4
		WriteByte(PremiumPumpkinHead+5, 99, true) -- Premium Pumpkinhead #5
		WriteByte(PremiumPumpkinHead+6, 99, true) -- Premium Pumpkinhead #6
		WriteByte(PremiumPumpkinHead+7, 99, true) -- Premium Pumpkinhead #7
		WriteByte(PremiumPumpkinHead+8, 99, true) -- Premium Pumpkinhead #8
		WriteByte(PremiumPumpkinHead+9, 99, true) -- Premium Pumpkinhead #9
		
		WriteByte(PremiumFairyHarp, 99, true)   -- Premium Fairy Harp #0
		WriteByte(PremiumFairyHarp+1, 99, true) -- Premium Fairy Harp #1
		WriteByte(PremiumFairyHarp+2, 99, true) -- Premium Fairy Harp #2
		WriteByte(PremiumFairyHarp+3, 99, true) -- Premium Fairy Harp #3
		WriteByte(PremiumFairyHarp+4, 99, true) -- Premium Fairy Harp #4
		WriteByte(PremiumFairyHarp+5, 99, true) -- Premium Fairy Harp #5
		WriteByte(PremiumFairyHarp+6, 99, true) -- Premium Fairy Harp #6
		WriteByte(PremiumFairyHarp+7, 99, true) -- Premium Fairy Harp #7
		WriteByte(PremiumFairyHarp+8, 99, true) -- Premium Fairy Harp #8
		WriteByte(PremiumFairyHarp+9, 99, true) -- Premium Fairy Harp #9
		
		WriteByte(PremiumWishingStar, 99, true)   -- Premium Wishing Star #0
		WriteByte(PremiumWishingStar+1, 99, true) -- Premium Wishing Star #1
		WriteByte(PremiumWishingStar+2, 99, true) -- Premium Wishing Star #2
		WriteByte(PremiumWishingStar+3, 99, true) -- Premium Wishing Star #3
		WriteByte(PremiumWishingStar+4, 99, true) -- Premium Wishing Star #4
		WriteByte(PremiumWishingStar+5, 99, true) -- Premium Wishing Star #5
		WriteByte(PremiumWishingStar+6, 99, true) -- Premium Wishing Star #6
		WriteByte(PremiumWishingStar+7, 99, true) -- Premium Wishing Star #7
		WriteByte(PremiumWishingStar+8, 99, true) -- Premium Wishing Star #8
		WriteByte(PremiumWishingStar+9, 99, true) -- Premium Wishing Star #9
		
		WriteByte(PremiumSpellbinder, 99, true)   -- Premium Spellbinder #0
		WriteByte(PremiumSpellbinder+1, 99, true) -- Premium Spellbinder #1
		WriteByte(PremiumSpellbinder+2, 99, true) -- Premium Spellbinder #2
		WriteByte(PremiumSpellbinder+3, 99, true) -- Premium Spellbinder #3
		WriteByte(PremiumSpellbinder+4, 99, true) -- Premium Spellbinder #4
		WriteByte(PremiumSpellbinder+5, 99, true) -- Premium Spellbinder #5
		WriteByte(PremiumSpellbinder+6, 99, true) -- Premium Spellbinder #6
		WriteByte(PremiumSpellbinder+7, 99, true) -- Premium Spellbinder #7
		WriteByte(PremiumSpellbinder+8, 99, true) -- Premium Spellbinder #8
		WriteByte(PremiumSpellbinder+9, 99, true) -- Premium Spellbinder #9
		
		WriteByte(PremiumMetalChocobo, 99, true)   -- Premium Metal Chocobo #0
		WriteByte(PremiumMetalChocobo+1, 99, true) -- Premium Metal Chocobo #1
		WriteByte(PremiumMetalChocobo+2, 99, true) -- Premium Metal Chocobo #2
		WriteByte(PremiumMetalChocobo+3, 99, true) -- Premium Metal Chocobo #3
		WriteByte(PremiumMetalChocobo+4, 99, true) -- Premium Metal Chocobo #4
		WriteByte(PremiumMetalChocobo+5, 99, true) -- Premium Metal Chocobo #5
		WriteByte(PremiumMetalChocobo+6, 99, true) -- Premium Metal Chocobo #6
		WriteByte(PremiumMetalChocobo+7, 99, true) -- Premium Metal Chocobo #7
		WriteByte(PremiumMetalChocobo+8, 99, true) -- Premium Metal Chocobo #8
		WriteByte(PremiumMetalChocobo+9, 99, true) -- Premium Metal Chocobo #9
		
		WriteByte(PremiumOlympia, 99, true)   -- Premium Olympia #0
		WriteByte(PremiumOlympia+1, 99, true) -- Premium Olympia #1
		WriteByte(PremiumOlympia+2, 99, true) -- Premium Olympia #2
		WriteByte(PremiumOlympia+3, 99, true) -- Premium Olympia #3
		WriteByte(PremiumOlympia+4, 99, true) -- Premium Olympia #4
		WriteByte(PremiumOlympia+5, 99, true) -- Premium Olympia #5
		WriteByte(PremiumOlympia+6, 99, true) -- Premium Olympia #6
		WriteByte(PremiumOlympia+7, 99, true) -- Premium Olympia #7
		WriteByte(PremiumOlympia+8, 99, true) -- Premium Olympia #8
		WriteByte(PremiumOlympia+9, 99, true) -- Premium Olympia #9
		
		WriteByte(PremiumLionHeart, 99, true)   -- Premium Lionheart #0
		WriteByte(PremiumLionHeart+1, 99, true) -- Premium Lionheart #1
		WriteByte(PremiumLionHeart+2, 99, true) -- Premium Lionheart #2
		WriteByte(PremiumLionHeart+3, 99, true) -- Premium Lionheart #3
		WriteByte(PremiumLionHeart+4, 99, true) -- Premium Lionheart #4
		WriteByte(PremiumLionHeart+5, 99, true) -- Premium Lionheart #5
		WriteByte(PremiumLionHeart+6, 99, true) -- Premium Lionheart #6
		WriteByte(PremiumLionHeart+7, 99, true) -- Premium Lionheart #7
		WriteByte(PremiumLionHeart+8, 99, true) -- Premium Lionheart #8
		WriteByte(PremiumLionHeart+9, 99, true) -- Premium Lionheart #9
		
		WriteByte(PremiumLadyLuck, 99, true)   -- Premium Lady Luck #0
		WriteByte(PremiumLadyLuck+1, 99, true) -- Premium Lady Luck #1
		WriteByte(PremiumLadyLuck+2, 99, true) -- Premium Lady Luck #2
		WriteByte(PremiumLadyLuck+3, 99, true) -- Premium Lady Luck #3
		WriteByte(PremiumLadyLuck+4, 99, true) -- Premium Lady Luck #4
		WriteByte(PremiumLadyLuck+5, 99, true) -- Premium Lady Luck #5
		WriteByte(PremiumLadyLuck+6, 99, true) -- Premium Lady Luck #6
		WriteByte(PremiumLadyLuck+7, 99, true) -- Premium Lady Luck #7
		WriteByte(PremiumLadyLuck+8, 99, true) -- Premium Lady Luck #8
		WriteByte(PremiumLadyLuck+9, 99, true) -- Premium Lady Luck #9
		
		WriteByte(PremiumDivineRose, 99, true)   -- Premium Divine Rose #0
		WriteByte(PremiumDivineRose+1, 99, true) -- Premium Divine Rose #1
		WriteByte(PremiumDivineRose+2, 99, true) -- Premium Divine Rose #2
		WriteByte(PremiumDivineRose+3, 99, true) -- Premium Divine Rose #3
		WriteByte(PremiumDivineRose+4, 99, true) -- Premium Divine Rose #4
		WriteByte(PremiumDivineRose+5, 99, true) -- Premium Divine Rose #5
		WriteByte(PremiumDivineRose+6, 99, true) -- Premium Divine Rose #6
		WriteByte(PremiumDivineRose+7, 99, true) -- Premium Divine Rose #7
		WriteByte(PremiumDivineRose+8, 99, true) -- Premium Divine Rose #8
		WriteByte(PremiumDivineRose+9, 99, true) -- Premium Divine Rose #9
		
		WriteByte(PremiumOathKeeper, 99, true)   -- Premium Oathkeeper #0
		WriteByte(PremiumOathKeeper+1, 99, true) -- Premium Oathkeeper #1
		WriteByte(PremiumOathKeeper+2, 99, true) -- Premium Oathkeeper #2
		WriteByte(PremiumOathKeeper+3, 99, true) -- Premium Oathkeeper #3
		WriteByte(PremiumOathKeeper+4, 99, true) -- Premium Oathkeeper #4
		WriteByte(PremiumOathKeeper+5, 99, true) -- Premium Oathkeeper #5
		WriteByte(PremiumOathKeeper+6, 99, true) -- Premium Oathkeeper #6
		WriteByte(PremiumOathKeeper+7, 99, true) -- Premium Oathkeeper #7
		WriteByte(PremiumOathKeeper+8, 99, true) -- Premium Oathkeeper #8
		WriteByte(PremiumOathKeeper+9, 99, true) -- Premium Oathkeeper #9
		
		WriteByte(PremiumOblivion, 99, true)   -- Premium Oblivion #0
		WriteByte(PremiumOblivion+1, 99, true) -- Premium Oblivion #1
		WriteByte(PremiumOblivion+2, 99, true) -- Premium Oblivion #2
		WriteByte(PremiumOblivion+3, 99, true) -- Premium Oblivion #3
		WriteByte(PremiumOblivion+4, 99, true) -- Premium Oblivion #4
		WriteByte(PremiumOblivion+5, 99, true) -- Premium Oblivion #5
		WriteByte(PremiumOblivion+6, 99, true) -- Premium Oblivion #6
		WriteByte(PremiumOblivion+7, 99, true) -- Premium Oblivion #7
		WriteByte(PremiumOblivion+8, 99, true) -- Premium Oblivion #8
		WriteByte(PremiumOblivion+9, 99, true) -- Premium Oblivion #9
		
		WriteByte(PremiumUltimaWeapon, 99, true)   -- Premium Ultima Weapon #0
		WriteByte(PremiumUltimaWeapon+1, 99, true) -- Premium Ultima Weapon #1
		WriteByte(PremiumUltimaWeapon+2, 99, true) -- Premium Ultima Weapon #2
		WriteByte(PremiumUltimaWeapon+3, 99, true) -- Premium Ultima Weapon #3
		WriteByte(PremiumUltimaWeapon+4, 99, true) -- Premium Ultima Weapon #4
		WriteByte(PremiumUltimaWeapon+5, 99, true) -- Premium Ultima Weapon #5
		WriteByte(PremiumUltimaWeapon+6, 99, true) -- Premium Ultima Weapon #6
		WriteByte(PremiumUltimaWeapon+7, 99, true) -- Premium Ultima Weapon #7
		WriteByte(PremiumUltimaWeapon+8, 99, true) -- Premium Ultima Weapon #8
		WriteByte(PremiumUltimaWeapon+9, 99, true) -- Premium Ultima Weapon #9
		
		WriteByte(PremiumDiamondDust, 99, true)   -- Premium Diamond Dust #0
		WriteByte(PremiumDiamondDust+1, 99, true) -- Premium Diamond Dust #1
		WriteByte(PremiumDiamondDust+2, 99, true) -- Premium Diamond Dust #2
		WriteByte(PremiumDiamondDust+3, 99, true) -- Premium Diamond Dust #3
		WriteByte(PremiumDiamondDust+4, 99, true) -- Premium Diamond Dust #4
		WriteByte(PremiumDiamondDust+5, 99, true) -- Premium Diamond Dust #5
		WriteByte(PremiumDiamondDust+6, 99, true) -- Premium Diamond Dust #6
		WriteByte(PremiumDiamondDust+7, 99, true) -- Premium Diamond Dust #7
		WriteByte(PremiumDiamondDust+8, 99, true) -- Premium Diamond Dust #8
		WriteByte(PremiumDiamondDust+9, 99, true) -- Premium Diamond Dust #9
		
		WriteByte(PremiumOneWingedAngel, 99, true)   -- Premium One-Winged Angel #0
		WriteByte(PremiumOneWingedAngel+1, 99, true) -- Premium One-Winged Angel #1
		WriteByte(PremiumOneWingedAngel+2, 99, true) -- Premium One-Winged Angel #2
		WriteByte(PremiumOneWingedAngel+3, 99, true) -- Premium One-Winged Angel #3
		WriteByte(PremiumOneWingedAngel+4, 99, true) -- Premium One-Winged Angel #4
		WriteByte(PremiumOneWingedAngel+5, 99, true) -- Premium One-Winged Angel #5
		WriteByte(PremiumOneWingedAngel+6, 99, true) -- Premium One-Winged Angel #6
		WriteByte(PremiumOneWingedAngel+7, 99, true) -- Premium One-Winged Angel #7
		WriteByte(PremiumOneWingedAngel+8, 99, true) -- Premium One-Winged Angel #8
		WriteByte(PremiumOneWingedAngel+9, 99, true) -- Premium One-Winged Angel #9
		
		WriteByte(PremiumSoulEater, 99, true)   -- Premium Soul Eater #0
		WriteByte(PremiumSoulEater+1, 99, true) -- Premium Soul Eater #1
		WriteByte(PremiumSoulEater+2, 99, true) -- Premium Soul Eater #2
		WriteByte(PremiumSoulEater+3, 99, true) -- Premium Soul Eater #3
		WriteByte(PremiumSoulEater+4, 99, true) -- Premium Soul Eater #4
		WriteByte(PremiumSoulEater+5, 99, true) -- Premium Soul Eater #5
		WriteByte(PremiumSoulEater+6, 99, true) -- Premium Soul Eater #6
		WriteByte(PremiumSoulEater+7, 99, true) -- Premium Soul Eater #7
		WriteByte(PremiumSoulEater+8, 99, true) -- Premium Soul Eater #8
		WriteByte(PremiumSoulEater+9, 99, true) -- Premium Soul Eater #9
		
		WriteByte(PremiumStarSeeker, 99, true)   -- Premium Star Seeker #0
		WriteByte(PremiumStarSeeker+1, 99, true) -- Premium Star Seeker #1
		WriteByte(PremiumStarSeeker+2, 99, true) -- Premium Star Seeker #2
		WriteByte(PremiumStarSeeker+3, 99, true) -- Premium Star Seeker #3
		WriteByte(PremiumStarSeeker+4, 99, true) -- Premium Star Seeker #4
		WriteByte(PremiumStarSeeker+5, 99, true) -- Premium Star Seeker #5
		WriteByte(PremiumStarSeeker+6, 99, true) -- Premium Star Seeker #6
		WriteByte(PremiumStarSeeker+7, 99, true) -- Premium Star Seeker #7
		WriteByte(PremiumStarSeeker+8, 99, true) -- Premium Star Seeker #8
		WriteByte(PremiumStarSeeker+9, 99, true) -- Premium Star Seeker #9
		
		WriteByte(PremiumTotalEclipse, 99, true)   -- Premium Total Eclipse #0
		WriteByte(PremiumTotalEclipse+1, 99, true) -- Premium Total Eclipse #1
		WriteByte(PremiumTotalEclipse+2, 99, true) -- Premium Total Eclipse #2
		WriteByte(PremiumTotalEclipse+3, 99, true) -- Premium Total Eclipse #3
		WriteByte(PremiumTotalEclipse+4, 99, true) -- Premium Total Eclipse #4
		WriteByte(PremiumTotalEclipse+5, 99, true) -- Premium Total Eclipse #5
		WriteByte(PremiumTotalEclipse+6, 99, true) -- Premium Total Eclipse #6
		WriteByte(PremiumTotalEclipse+7, 99, true) -- Premium Total Eclipse #7
		WriteByte(PremiumTotalEclipse+8, 99, true) -- Premium Total Eclipse #8
		WriteByte(PremiumTotalEclipse+9, 99, true) -- Premium Total Eclipse #9
		
		WriteByte(PremiumMidnightRoar, 99, true)   -- Premium Midnight Roar #0
		WriteByte(PremiumMidnightRoar+1, 99, true) -- Premium Midnight Roar #1
		WriteByte(PremiumMidnightRoar+2, 99, true) -- Premium Midnight Roar #2
		WriteByte(PremiumMidnightRoar+3, 99, true) -- Premium Midnight Roar #3
		WriteByte(PremiumMidnightRoar+4, 99, true) -- Premium Midnight Roar #4
		WriteByte(PremiumMidnightRoar+5, 99, true) -- Premium Midnight Roar #5
		WriteByte(PremiumMidnightRoar+6, 99, true) -- Premium Midnight Roar #6
		WriteByte(PremiumMidnightRoar+7, 99, true) -- Premium Midnight Roar #7
		WriteByte(PremiumMidnightRoar+8, 99, true) -- Premium Midnight Roar #8
		WriteByte(PremiumMidnightRoar+9, 99, true) -- Premium Midnight Roar #9
		
		WriteByte(PremiumMaverickFlare, 99, true)   -- Premium Maverick Flare #0
		WriteByte(PremiumMaverickFlare+1, 99, true) -- Premium Maverick Flare #1
		WriteByte(PremiumMaverickFlare+2, 99, true) -- Premium Maverick Flare #2
		WriteByte(PremiumMaverickFlare+3, 99, true) -- Premium Maverick Flare #3
		WriteByte(PremiumMaverickFlare+4, 99, true) -- Premium Maverick Flare #4
		WriteByte(PremiumMaverickFlare+5, 99, true) -- Premium Maverick Flare #5
		WriteByte(PremiumMaverickFlare+6, 99, true) -- Premium Maverick Flare #6
		WriteByte(PremiumMaverickFlare+7, 99, true) -- Premium Maverick Flare #7
		WriteByte(PremiumMaverickFlare+8, 99, true) -- Premium Maverick Flare #8
		WriteByte(PremiumMaverickFlare+9, 99, true) -- Premium Maverick Flare #9
		
		WriteByte(PremiumTwoBecomeOne, 99, true)   -- Premium Two Become One #0
		WriteByte(PremiumTwoBecomeOne+1, 99, true) -- Premium Two Become One #1
		WriteByte(PremiumTwoBecomeOne+2, 99, true) -- Premium Two Become One #2
		WriteByte(PremiumTwoBecomeOne+3, 99, true) -- Premium Two Become One #3
		WriteByte(PremiumTwoBecomeOne+4, 99, true) -- Premium Two Become One #4
		WriteByte(PremiumTwoBecomeOne+5, 99, true) -- Premium Two Become One #5
		WriteByte(PremiumTwoBecomeOne+6, 99, true) -- Premium Two Become One #6
		WriteByte(PremiumTwoBecomeOne+7, 99, true) -- Premium Two Become One #7
		WriteByte(PremiumTwoBecomeOne+8, 99, true) -- Premium Two Become One #8
		WriteByte(PremiumTwoBecomeOne+9, 99, true) -- Premium Two Become One #9
		
		WriteByte(PremiumBondofFlame, 99, true)   -- Premium Bond of Flame #0
		WriteByte(PremiumBondofFlame+1, 99, true) -- Premium Bond of Flame #1
		WriteByte(PremiumBondofFlame+2, 99, true) -- Premium Bond of Flame #2
		WriteByte(PremiumBondofFlame+3, 99, true) -- Premium Bond of Flame #3
		WriteByte(PremiumBondofFlame+4, 99, true) -- Premium Bond of Flame #4
		WriteByte(PremiumBondofFlame+5, 99, true) -- Premium Bond of Flame #5
		WriteByte(PremiumBondofFlame+6, 99, true) -- Premium Bond of Flame #6
		WriteByte(PremiumBondofFlame+7, 99, true) -- Premium Bond of Flame #7
		WriteByte(PremiumBondofFlame+8, 99, true) -- Premium Bond of Flame #8
		WriteByte(PremiumBondofFlame+9, 99, true) -- Premium Bond of Flame #9
		
		WriteByte(Fire, 99, true)   -- Fire #0
		WriteByte(Fire+1, 99, true) -- Fire #1
		WriteByte(Fire+2, 99, true) -- Fire #2
		WriteByte(Fire+3, 99, true) -- Fire #3
		WriteByte(Fire+4, 99, true) -- Fire #4
		WriteByte(Fire+5, 99, true) -- Fire #5
		WriteByte(Fire+6, 99, true) -- Fire #6
		WriteByte(Fire+7, 99, true) -- Fire #7
		WriteByte(Fire+8, 99, true) -- Fire #8
		WriteByte(Fire+9, 99, true) -- Fire #9
		
		WriteByte(Blizzard, 99, true)   -- Blizzard #0
		WriteByte(Blizzard+1, 99, true) -- Blizzard #1
		WriteByte(Blizzard+2, 99, true) -- Blizzard #2
		WriteByte(Blizzard+3, 99, true) -- Blizzard #3
		WriteByte(Blizzard+4, 99, true) -- Blizzard #4
		WriteByte(Blizzard+5, 99, true) -- Blizzard #5
		WriteByte(Blizzard+6, 99, true) -- Blizzard #6
		WriteByte(Blizzard+7, 99, true) -- Blizzard #7
		WriteByte(Blizzard+8, 99, true) -- Blizzard #8
		WriteByte(Blizzard+9, 99, true) -- Blizzard #9
		
		WriteByte(Thunder, 99, true)   -- Thunder #0
		WriteByte(Thunder+1, 99, true) -- Thunder #1
		WriteByte(Thunder+2, 99, true) -- Thunder #2
		WriteByte(Thunder+3, 99, true) -- Thunder #3
		WriteByte(Thunder+4, 99, true) -- Thunder #4
		WriteByte(Thunder+5, 99, true) -- Thunder #5
		WriteByte(Thunder+6, 99, true) -- Thunder #6
		WriteByte(Thunder+7, 99, true) -- Thunder #7
		WriteByte(Thunder+8, 99, true) -- Thunder #8
		WriteByte(Thunder+9, 99, true) -- Thunder #9
		
		WriteByte(Cure, 99, true)   -- Cure #0
		WriteByte(Cure+1, 99, true) -- Cure #1
		WriteByte(Cure+2, 99, true) -- Cure #2
		WriteByte(Cure+3, 99, true) -- Cure #3
		WriteByte(Cure+4, 99, true) -- Cure #4
		WriteByte(Cure+5, 99, true) -- Cure #5
		WriteByte(Cure+6, 99, true) -- Cure #6
		WriteByte(Cure+7, 99, true) -- Cure #7
		WriteByte(Cure+8, 99, true) -- Cure #8
		WriteByte(Cure+9, 99, true) -- Cure #9
		
		WriteByte(Gravity, 99, true)   -- Gravity #0
		WriteByte(Gravity+1, 99, true) -- Gravity #1
		WriteByte(Gravity+2, 99, true) -- Gravity #2
		WriteByte(Gravity+3, 99, true) -- Gravity #3
		WriteByte(Gravity+4, 99, true) -- Gravity #4
		WriteByte(Gravity+5, 99, true) -- Gravity #5
		WriteByte(Gravity+6, 99, true) -- Gravity #6
		WriteByte(Gravity+7, 99, true) -- Gravity #7
		WriteByte(Gravity+8, 99, true) -- Gravity #8
		WriteByte(Gravity+9, 99, true) -- Gravity #9
		
		WriteByte(Stop, 99, true)   -- Stop #0
		WriteByte(Stop+1, 99, true) -- Stop #1
		WriteByte(Stop+2, 99, true) -- Stop #2
		WriteByte(Stop+3, 99, true) -- Stop #3
		WriteByte(Stop+4, 99, true) -- Stop #4
		WriteByte(Stop+5, 99, true) -- Stop #5
		WriteByte(Stop+6, 99, true) -- Stop #6
		WriteByte(Stop+7, 99, true) -- Stop #7
		WriteByte(Stop+8, 99, true) -- Stop #8
		WriteByte(Stop+9, 99, true) -- Stop #9
		
		WriteByte(Aero, 99, true)   -- Aero #0
		WriteByte(Aero+1, 99, true) -- Aero #1
		WriteByte(Aero+2, 99, true) -- Aero #2
		WriteByte(Aero+3, 99, true) -- Aero #3
		WriteByte(Aero+4, 99, true) -- Aero #4
		WriteByte(Aero+5, 99, true) -- Aero #5
		WriteByte(Aero+6, 99, true) -- Aero #6
		WriteByte(Aero+7, 99, true) -- Aero #7
		WriteByte(Aero+8, 99, true) -- Aero #8
		WriteByte(Aero+9, 99, true) -- Aero #9
		
		WriteByte(UnkownMagic1, 99, true)   -- Unkown Magic 1 #0
		WriteByte(UnkownMagic1+1, 99, true) -- Unkown Magic 1 #1
		WriteByte(UnkownMagic1+2, 99, true) -- Unkown Magic 1 #2
		WriteByte(UnkownMagic1+3, 99, true) -- Unkown Magic 1 #3
		WriteByte(UnkownMagic1+4, 99, true) -- Unkown Magic 1 #4
		WriteByte(UnkownMagic1+5, 99, true) -- Unkown Magic 1 #5
		WriteByte(UnkownMagic1+6, 99, true) -- Unkown Magic 1 #6
		WriteByte(UnkownMagic1+7, 99, true) -- Unkown Magic 1 #7
		WriteByte(UnkownMagic1+8, 99, true) -- Unkown Magic 1 #8
		WriteByte(UnkownMagic1+9, 99, true) -- Unkown Magic 1 #9
		
		WriteByte(UnkownMagic2, 99, true)   -- Unkown Magic 2 #0
		WriteByte(UnkownMagic2+1, 99, true) -- Unkown Magic 2 #1
		WriteByte(UnkownMagic2+2, 99, true) -- Unkown Magic 2 #2
		WriteByte(UnkownMagic2+3, 99, true) -- Unkown Magic 2 #3
		WriteByte(UnkownMagic2+4, 99, true) -- Unkown Magic 2 #4
		WriteByte(UnkownMagic2+5, 99, true) -- Unkown Magic 2 #5
		WriteByte(UnkownMagic2+6, 99, true) -- Unkown Magic 2 #6
		WriteByte(UnkownMagic2+7, 99, true) -- Unkown Magic 2 #7
		WriteByte(UnkownMagic2+8, 99, true) -- Unkown Magic 2 #8
		WriteByte(UnkownMagic2+9, 99, true) -- Unkown Magic 2 #9
		
		WriteByte(Simba, 99, true)   -- Simba #0
		WriteByte(Simba+1, 99, true) -- Simba #1
		WriteByte(Simba+2, 99, true) -- Simba #2
		WriteByte(Simba+3, 99, true) -- Simba #3
		WriteByte(Simba+4, 99, true) -- Simba #4
		WriteByte(Simba+5, 99, true) -- Simba #5
		WriteByte(Simba+6, 99, true) -- Simba #6
		WriteByte(Simba+7, 99, true) -- Simba #7
		WriteByte(Simba+8, 99, true) -- Simba #8
		WriteByte(Simba+9, 99, true) -- Simba #9
		
		WriteByte(Genie, 99, true)   -- Genie #0
		WriteByte(Genie+1, 99, true) -- Genie #1
		WriteByte(Genie+2, 99, true) -- Genie #2
		WriteByte(Genie+3, 99, true) -- Genie #3
		WriteByte(Genie+4, 99, true) -- Genie #4
		WriteByte(Genie+5, 99, true) -- Genie #5
		WriteByte(Genie+6, 99, true) -- Genie #6
		WriteByte(Genie+7, 99, true) -- Genie #7
		WriteByte(Genie+8, 99, true) -- Genie #8
		WriteByte(Genie+9, 99, true) -- Genie #9
		
		WriteByte(Bambi, 99, true)   -- Bambi #0
		WriteByte(Bambi+1, 99, true) -- Bambi #1
		WriteByte(Bambi+2, 99, true) -- Bambi #2
		WriteByte(Bambi+3, 99, true) -- Bambi #3
		WriteByte(Bambi+4, 99, true) -- Bambi #4
		WriteByte(Bambi+5, 99, true) -- Bambi #5
		WriteByte(Bambi+6, 99, true) -- Bambi #6
		WriteByte(Bambi+7, 99, true) -- Bambi #7
		WriteByte(Bambi+8, 99, true) -- Bambi #8
		WriteByte(Bambi+9, 99, true) -- Bambi #9
		
		WriteByte(Dumbo, 99, true)   -- Dumbo #0
		WriteByte(Dumbo+1, 99, true) -- Dumbo #1
		WriteByte(Dumbo+2, 99, true) -- Dumbo #2
		WriteByte(Dumbo+3, 99, true) -- Dumbo #3
		WriteByte(Dumbo+4, 99, true) -- Dumbo #4
		WriteByte(Dumbo+5, 99, true) -- Dumbo #5
		WriteByte(Dumbo+6, 99, true) -- Dumbo #6
		WriteByte(Dumbo+7, 99, true) -- Dumbo #7
		WriteByte(Dumbo+8, 99, true) -- Dumbo #8
		WriteByte(Dumbo+9, 99, true) -- Dumbo #9
		
		WriteByte(TinkerBell, 99, true)   -- Tinker Bell #0
		WriteByte(TinkerBell+1, 99, true) -- Tinker Bell #1
		WriteByte(TinkerBell+2, 99, true) -- Tinker Bell #2
		WriteByte(TinkerBell+3, 99, true) -- Tinker Bell #3
		WriteByte(TinkerBell+4, 99, true) -- Tinker Bell #4
		WriteByte(TinkerBell+5, 99, true) -- Tinker Bell #5
		WriteByte(TinkerBell+6, 99, true) -- Tinker Bell #6
		WriteByte(TinkerBell+7, 99, true) -- Tinker Bell #7
		WriteByte(TinkerBell+8, 99, true) -- Tinker Bell #8
		WriteByte(TinkerBell+9, 99, true) -- Tinker Bell #9
		
		WriteByte(Mushu, 99, true)   -- Mushu #0
		WriteByte(Mushu+1, 99, true) -- Mushu #1
		WriteByte(Mushu+2, 99, true) -- Mushu #2
		WriteByte(Mushu+3, 99, true) -- Mushu #3
		WriteByte(Mushu+4, 99, true) -- Mushu #4
		WriteByte(Mushu+5, 99, true) -- Mushu #5
		WriteByte(Mushu+6, 99, true) -- Mushu #6
		WriteByte(Mushu+7, 99, true) -- Mushu #7
		WriteByte(Mushu+8, 99, true) -- Mushu #8
		WriteByte(Mushu+9, 99, true) -- Mushu #9
		
		WriteByte(Cloud, 99, true)   -- Cloud #0
		WriteByte(Cloud+1, 99, true) -- Cloud #1
		WriteByte(Cloud+2, 99, true) -- Cloud #2
		WriteByte(Cloud+3, 99, true) -- Cloud #3
		WriteByte(Cloud+4, 99, true) -- Cloud #4
		WriteByte(Cloud+5, 99, true) -- Cloud #5
		WriteByte(Cloud+6, 99, true) -- Cloud #6
		WriteByte(Cloud+7, 99, true) -- Cloud #7
		WriteByte(Cloud+8, 99, true) -- Cloud #8
		WriteByte(Cloud+9, 99, true) -- Cloud #9
		
		WriteByte(PremiumFire, 99, true)   -- Premium Fire #0
		WriteByte(PremiumFire+1, 99, true) -- Premium Fire #1
		WriteByte(PremiumFire+2, 99, true) -- Premium Fire #2
		WriteByte(PremiumFire+3, 99, true) -- Premium Fire #3
		WriteByte(PremiumFire+4, 99, true) -- Premium Fire #4
		WriteByte(PremiumFire+5, 99, true) -- Premium Fire #5
		WriteByte(PremiumFire+6, 99, true) -- Premium Fire #6
		WriteByte(PremiumFire+7, 99, true) -- Premium Fire #7
		WriteByte(PremiumFire+8, 99, true) -- Premium Fire #8
		WriteByte(PremiumFire+9, 99, true) -- Premium Fire #9
		
		WriteByte(PremiumBlizzard, 99, true)   -- Premium Blizzard #0
		WriteByte(PremiumBlizzard+1, 99, true) -- Premium Blizzard #1
		WriteByte(PremiumBlizzard+2, 99, true) -- Premium Blizzard #2
		WriteByte(PremiumBlizzard+3, 99, true) -- Premium Blizzard #3
		WriteByte(PremiumBlizzard+4, 99, true) -- Premium Blizzard #4
		WriteByte(PremiumBlizzard+5, 99, true) -- Premium Blizzard #5
		WriteByte(PremiumBlizzard+6, 99, true) -- Premium Blizzard #6
		WriteByte(PremiumBlizzard+7, 99, true) -- Premium Blizzard #7
		WriteByte(PremiumBlizzard+8, 99, true) -- Premium Blizzard #8
		WriteByte(PremiumBlizzard+9, 99, true) -- Premium Blizzard #9
		
		WriteByte(PremiumThunder, 99, true)   -- Premium Thunder #0
		WriteByte(PremiumThunder+1, 99, true) -- Premium Thunder #1
		WriteByte(PremiumThunder+2, 99, true) -- Premium Thunder #2
		WriteByte(PremiumThunder+3, 99, true) -- Premium Thunder #3
		WriteByte(PremiumThunder+4, 99, true) -- Premium Thunder #4
		WriteByte(PremiumThunder+5, 99, true) -- Premium Thunder #5
		WriteByte(PremiumThunder+6, 99, true) -- Premium Thunder #6
		WriteByte(PremiumThunder+7, 99, true) -- Premium Thunder #7
		WriteByte(PremiumThunder+8, 99, true) -- Premium Thunder #8
		WriteByte(PremiumThunder+9, 99, true) -- Premium Thunder #9
		
		WriteByte(PremiumCure, 99, true)   -- Premium Cure #0
		WriteByte(PremiumCure+1, 99, true) -- Premium Cure #1
		WriteByte(PremiumCure+2, 99, true) -- Premium Cure #2
		WriteByte(PremiumCure+3, 99, true) -- Premium Cure #3
		WriteByte(PremiumCure+4, 99, true) -- Premium Cure #4
		WriteByte(PremiumCure+5, 99, true) -- Premium Cure #5
		WriteByte(PremiumCure+6, 99, true) -- Premium Cure #6
		WriteByte(PremiumCure+7, 99, true) -- Premium Cure #7
		WriteByte(PremiumCure+8, 99, true) -- Premium Cure #8
		WriteByte(PremiumCure+9, 99, true) -- Premium Cure #9
		
		WriteByte(PremiumGravity, 99, true)   -- Premium Gravity #0
		WriteByte(PremiumGravity+1, 99, true) -- Premium Gravity #1
		WriteByte(PremiumGravity+2, 99, true) -- Premium Gravity #2
		WriteByte(PremiumGravity+3, 99, true) -- Premium Gravity #3
		WriteByte(PremiumGravity+4, 99, true) -- Premium Gravity #4
		WriteByte(PremiumGravity+5, 99, true) -- Premium Gravity #5
		WriteByte(PremiumGravity+6, 99, true) -- Premium Gravity #6
		WriteByte(PremiumGravity+7, 99, true) -- Premium Gravity #7
		WriteByte(PremiumGravity+8, 99, true) -- Premium Gravity #8
		WriteByte(PremiumGravity+9, 99, true) -- Premium Gravity #9
		
		WriteByte(PremiumStop, 99, true)   -- Premium Stop #0
		WriteByte(PremiumStop+1, 99, true) -- Premium Stop #1
		WriteByte(PremiumStop+2, 99, true) -- Premium Stop #2
		WriteByte(PremiumStop+3, 99, true) -- Premium Stop #3
		WriteByte(PremiumStop+4, 99, true) -- Premium Stop #4
		WriteByte(PremiumStop+5, 99, true) -- Premium Stop #5
		WriteByte(PremiumStop+6, 99, true) -- Premium Stop #6
		WriteByte(PremiumStop+7, 99, true) -- Premium Stop #7
		WriteByte(PremiumStop+8, 99, true) -- Premium Stop #8
		WriteByte(PremiumStop+9, 99, true) -- Premium Stop #9
		
		WriteByte(PremiumAero, 99, true)   -- Premium Aero #0
		WriteByte(PremiumAero+1, 99, true) -- Premium Aero #1
		WriteByte(PremiumAero+2, 99, true) -- Premium Aero #2
		WriteByte(PremiumAero+3, 99, true) -- Premium Aero #3
		WriteByte(PremiumAero+4, 99, true) -- Premium Aero #4
		WriteByte(PremiumAero+5, 99, true) -- Premium Aero #5
		WriteByte(PremiumAero+6, 99, true) -- Premium Aero #6
		WriteByte(PremiumAero+7, 99, true) -- Premium Aero #7
		WriteByte(PremiumAero+8, 99, true) -- Premium Aero #8
		WriteByte(PremiumAero+9, 99, true) -- Premium Aero #9
		
		WriteByte(PremiumUnkownMagic1, 99, true)   -- Premium Unkown Magic 1 #0
		WriteByte(PremiumUnkownMagic1+1, 99, true) -- Premium Unkown Magic 1 #1
		WriteByte(PremiumUnkownMagic1+2, 99, true) -- Premium Unkown Magic 1 #2
		WriteByte(PremiumUnkownMagic1+3, 99, true) -- Premium Unkown Magic 1 #3
		WriteByte(PremiumUnkownMagic1+4, 99, true) -- Premium Unkown Magic 1 #4
		WriteByte(PremiumUnkownMagic1+5, 99, true) -- Premium Unkown Magic 1 #5
		WriteByte(PremiumUnkownMagic1+6, 99, true) -- Premium Unkown Magic 1 #6
		WriteByte(PremiumUnkownMagic1+7, 99, true) -- Premium Unkown Magic 1 #7
		WriteByte(PremiumUnkownMagic1+8, 99, true) -- Premium Unkown Magic 1 #8
		WriteByte(PremiumUnkownMagic1+9, 99, true) -- Premium Unkown Magic 1 #9
		
		WriteByte(PremiumUnkownMagic2, 99, true)   -- Premium Unkown Magic 2 #0
		WriteByte(PremiumUnkownMagic2+1, 99, true) -- Premium Unkown Magic 2 #1
		WriteByte(PremiumUnkownMagic2+2, 99, true) -- Premium Unkown Magic 2 #2
		WriteByte(PremiumUnkownMagic2+3, 99, true) -- Premium Unkown Magic 2 #3
		WriteByte(PremiumUnkownMagic2+4, 99, true) -- Premium Unkown Magic 2 #4
		WriteByte(PremiumUnkownMagic2+5, 99, true) -- Premium Unkown Magic 2 #5
		WriteByte(PremiumUnkownMagic2+6, 99, true) -- Premium Unkown Magic 2 #6
		WriteByte(PremiumUnkownMagic2+7, 99, true) -- Premium Unkown Magic 2 #7
		WriteByte(PremiumUnkownMagic2+8, 99, true) -- Premium Unkown Magic 2 #8
		WriteByte(PremiumUnkownMagic2+9, 99, true) -- Premium Unkown Magic 2 #9
		
		WriteByte(PremiumSimba, 99, true)   -- Premium Simba #0
		WriteByte(PremiumSimba+1, 99, true) -- Premium Simba #1
		WriteByte(PremiumSimba+2, 99, true) -- Premium Simba #2
		WriteByte(PremiumSimba+3, 99, true) -- Premium Simba #3
		WriteByte(PremiumSimba+4, 99, true) -- Premium Simba #4
		WriteByte(PremiumSimba+5, 99, true) -- Premium Simba #5
		WriteByte(PremiumSimba+6, 99, true) -- Premium Simba #6
		WriteByte(PremiumSimba+7, 99, true) -- Premium Simba #7
		WriteByte(PremiumSimba+8, 99, true) -- Premium Simba #8
		WriteByte(PremiumSimba+9, 99, true) -- Premium Simba #9
		
		WriteByte(PremiumGenie, 99, true)   -- Premium Genie #0
		WriteByte(PremiumGenie+1, 99, true) -- Premium Genie #1
		WriteByte(PremiumGenie+2, 99, true) -- Premium Genie #2
		WriteByte(PremiumGenie+3, 99, true) -- Premium Genie #3
		WriteByte(PremiumGenie+4, 99, true) -- Premium Genie #4
		WriteByte(PremiumGenie+5, 99, true) -- Premium Genie #5
		WriteByte(PremiumGenie+6, 99, true) -- Premium Genie #6
		WriteByte(PremiumGenie+7, 99, true) -- Premium Genie #7
		WriteByte(PremiumGenie+8, 99, true) -- Premium Genie #8
		WriteByte(PremiumGenie+9, 99, true) -- Premium Genie #9
		
		WriteByte(PremiumBambi, 99, true)   -- Premium Bambi #0
		WriteByte(PremiumBambi+1, 99, true) -- Premium Bambi #1
		WriteByte(PremiumBambi+2, 99, true) -- Premium Bambi #2
		WriteByte(PremiumBambi+3, 99, true) -- Premium Bambi #3
		WriteByte(PremiumBambi+4, 99, true) -- Premium Bambi #4
		WriteByte(PremiumBambi+5, 99, true) -- Premium Bambi #5
		WriteByte(PremiumBambi+6, 99, true) -- Premium Bambi #6
		WriteByte(PremiumBambi+7, 99, true) -- Premium Bambi #7
		WriteByte(PremiumBambi+8, 99, true) -- Premium Bambi #8
		WriteByte(PremiumBambi+9, 99, true) -- Premium Bambi #9
		
		WriteByte(PremiumDumbo, 99, true)   -- Premium Dumbo #0
		WriteByte(PremiumDumbo+1, 99, true) -- Premium Dumbo #1
		WriteByte(PremiumDumbo+2, 99, true) -- Premium Dumbo #2
		WriteByte(PremiumDumbo+3, 99, true) -- Premium Dumbo #3
		WriteByte(PremiumDumbo+4, 99, true) -- Premium Dumbo #4
		WriteByte(PremiumDumbo+5, 99, true) -- Premium Dumbo #5
		WriteByte(PremiumDumbo+6, 99, true) -- Premium Dumbo #6
		WriteByte(PremiumDumbo+7, 99, true) -- Premium Dumbo #7
		WriteByte(PremiumDumbo+8, 99, true) -- Premium Dumbo #8
		WriteByte(PremiumDumbo+9, 99, true) -- Premium Dumbo #9
		
		WriteByte(PremiumTinkerBell, 99, true)   -- Premium Tinker Bell #0
		WriteByte(PremiumTinkerBell+1, 99, true) -- Premium Tinker Bell #1
		WriteByte(PremiumTinkerBell+2, 99, true) -- Premium Tinker Bell #2
		WriteByte(PremiumTinkerBell+3, 99, true) -- Premium Tinker Bell #3
		WriteByte(PremiumTinkerBell+4, 99, true) -- Premium Tinker Bell #4
		WriteByte(PremiumTinkerBell+5, 99, true) -- Premium Tinker Bell #5
		WriteByte(PremiumTinkerBell+6, 99, true) -- Premium Tinker Bell #6
		WriteByte(PremiumTinkerBell+7, 99, true) -- Premium Tinker Bell #7
		WriteByte(PremiumTinkerBell+8, 99, true) -- Premium Tinker Bell #8
		WriteByte(PremiumTinkerBell+9, 99, true) -- Premium Tinker Bell #9
		
		WriteByte(PremiumMushu, 99, true)   -- Premium Mushu #0
		WriteByte(PremiumMushu+1, 99, true) -- Premium Mushu #1
		WriteByte(PremiumMushu+2, 99, true) -- Premium Mushu #2
		WriteByte(PremiumMushu+3, 99, true) -- Premium Mushu #3
		WriteByte(PremiumMushu+4, 99, true) -- Premium Mushu #4
		WriteByte(PremiumMushu+5, 99, true) -- Premium Mushu #5
		WriteByte(PremiumMushu+6, 99, true) -- Premium Mushu #6
		WriteByte(PremiumMushu+7, 99, true) -- Premium Mushu #7
		WriteByte(PremiumMushu+8, 99, true) -- Premium Mushu #8
		WriteByte(PremiumMushu+9, 99, true) -- Premium Mushu #9
		
		WriteByte(PremiumCloud, 99, true)   -- Premium Cloud #0
		WriteByte(PremiumCloud+1, 99, true) -- Premium Cloud #1
		WriteByte(PremiumCloud+2, 99, true) -- Premium Cloud #2
		WriteByte(PremiumCloud+3, 99, true) -- Premium Cloud #3
		WriteByte(PremiumCloud+4, 99, true) -- Premium Cloud #4
		WriteByte(PremiumCloud+5, 99, true) -- Premium Cloud #5
		WriteByte(PremiumCloud+6, 99, true) -- Premium Cloud #6
		WriteByte(PremiumCloud+7, 99, true) -- Premium Cloud #7
		WriteByte(PremiumCloud+8, 99, true) -- Premium Cloud #8
		WriteByte(PremiumCloud+9, 99, true) -- Premium Cloud #9
		
		WriteByte(Potion, 99, true)   -- Potion #0
		WriteByte(Potion+1, 99, true) -- Potion #1
		WriteByte(Potion+2, 99, true) -- Potion #2
		WriteByte(Potion+3, 99, true) -- Potion #3
		WriteByte(Potion+4, 99, true) -- Potion #4
		WriteByte(Potion+5, 99, true) -- Potion #5
		WriteByte(Potion+6, 99, true) -- Potion #6
		WriteByte(Potion+7, 99, true) -- Potion #7
		WriteByte(Potion+8, 99, true) -- Potion #8
		WriteByte(Potion+9, 99, true) -- Potion #9
		
		WriteByte(HiPotion, 99, true)   -- Hi-Potion #0
		WriteByte(HiPotion+1, 99, true) -- Hi-Potion #1
		WriteByte(HiPotion+2, 99, true) -- Hi-Potion #2
		WriteByte(HiPotion+3, 99, true) -- Hi-Potion #3
		WriteByte(HiPotion+4, 99, true) -- Hi-Potion #4
		WriteByte(HiPotion+5, 99, true) -- Hi-Potion #5
		WriteByte(HiPotion+6, 99, true) -- Hi-Potion #6
		WriteByte(HiPotion+7, 99, true) -- Hi-Potion #7
		WriteByte(HiPotion+8, 99, true) -- Hi-Potion #8
		WriteByte(HiPotion+9, 99, true) -- Hi-Potion #9
		
		WriteByte(MegaPotion, 99, true)   -- Mega-Potion #0
		WriteByte(MegaPotion+1, 99, true) -- Mega-Potion #1
		WriteByte(MegaPotion+2, 99, true) -- Mega-Potion #2
		WriteByte(MegaPotion+3, 99, true) -- Mega-Potion #3
		WriteByte(MegaPotion+4, 99, true) -- Mega-Potion #4
		WriteByte(MegaPotion+5, 99, true) -- Mega-Potion #5
		WriteByte(MegaPotion+6, 99, true) -- Mega-Potion #6
		WriteByte(MegaPotion+7, 99, true) -- Mega-Potion #7
		WriteByte(MegaPotion+8, 99, true) -- Mega-Potion #8
		WriteByte(MegaPotion+9, 99, true) -- Mega-Potion #9
		
		WriteByte(Ether, 99, true)   -- Ether #0
		WriteByte(Ether+1, 99, true) -- Ether #1
		WriteByte(Ether+2, 99, true) -- Ether #2
		WriteByte(Ether+3, 99, true) -- Ether #3
		WriteByte(Ether+4, 99, true) -- Ether #4
		WriteByte(Ether+5, 99, true) -- Ether #5
		WriteByte(Ether+6, 99, true) -- Ether #6
		WriteByte(Ether+7, 99, true) -- Ether #7
		WriteByte(Ether+8, 99, true) -- Ether #8
		WriteByte(Ether+9, 99, true) -- Ether #9
		
		WriteByte(MegaEther, 99, true)   -- Mega-Ether #0
		WriteByte(MegaEther+1, 99, true) -- Mega-Ether #1
		WriteByte(MegaEther+2, 99, true) -- Mega-Ether #2
		WriteByte(MegaEther+3, 99, true) -- Mega-Ether #3
		WriteByte(MegaEther+4, 99, true) -- Mega-Ether #4
		WriteByte(MegaEther+5, 99, true) -- Mega-Ether #5
		WriteByte(MegaEther+6, 99, true) -- Mega-Ether #6
		WriteByte(MegaEther+7, 99, true) -- Mega-Ether #7
		WriteByte(MegaEther+8, 99, true) -- Mega-Ether #8
		WriteByte(MegaEther+9, 99, true) -- Mega-Ether #9
		
		WriteByte(Elixir, 99, true)   -- Elixir #0
		WriteByte(Elixir+1, 99, true) -- Elixir #1
		WriteByte(Elixir+2, 99, true) -- Elixir #2
		WriteByte(Elixir+3, 99, true) -- Elixir #3
		WriteByte(Elixir+4, 99, true) -- Elixir #4
		WriteByte(Elixir+5, 99, true) -- Elixir #5
		WriteByte(Elixir+6, 99, true) -- Elixir #6
		WriteByte(Elixir+7, 99, true) -- Elixir #7
		WriteByte(Elixir+8, 99, true) -- Elixir #8
		WriteByte(Elixir+9, 99, true) -- Elixir #9
		
		WriteByte(Megalixir, 99, true)   -- Megalixir #0
		WriteByte(Megalixir+1, 99, true) -- Megalixir #1
		WriteByte(Megalixir+2, 99, true) -- Megalixir #2
		WriteByte(Megalixir+3, 99, true) -- Megalixir #3
		WriteByte(Megalixir+4, 99, true) -- Megalixir #4
		WriteByte(Megalixir+5, 99, true) -- Megalixir #5
		WriteByte(Megalixir+6, 99, true) -- Megalixir #6
		WriteByte(Megalixir+7, 99, true) -- Megalixir #7
		WriteByte(Megalixir+8, 99, true) -- Megalixir #8
		WriteByte(Megalixir+9, 99, true) -- Megalixir #9
		
		WriteByte(EnemyCards, 99, true)      -- Shadow
		WriteByte(EnemyCards+1, 99, true)    -- Soldier
		WriteByte(EnemyCards+2, 99, true)    -- Large Body
		WriteByte(EnemyCards+3, 99, true)    -- Red Nocturne
		WriteByte(EnemyCards+4, 99, true)    -- Blue Rhapsody
		WriteByte(EnemyCards+5, 99, true)    -- Yellow Opera
		WriteByte(EnemyCards+6, 99, true)    -- Green Requiem
		WriteByte(EnemyCards+7, 99, true)    -- Powerwild
		WriteByte(EnemyCards+8, 99, true)    -- Bouncywild
		WriteByte(EnemyCards+9, 99, true)    -- Air Solider
		WriteByte(EnemyCards+10, 99, true)   -- Bandit
		WriteByte(EnemyCards+11, 99, true)   -- Fat Bandit
		WriteByte(EnemyCards+12, 99, true)    -- Barrel Spider
		WriteByte(EnemyCards+13, 99, true)    -- Search Ghost
		WriteByte(EnemyCards+14, 99, true)    -- Sea Neon
		WriteByte(EnemyCards+15, 99, true)    -- Screwdriver
		WriteByte(EnemyCards+16, 99, true)    -- Aquatank
		WriteByte(EnemyCards+17, 99, true)    -- Wight Knight
		WriteByte(EnemyCards+18, 99, true)    -- Gargoyle
		WriteByte(EnemyCards+19, 99, true)    -- Pirate
		WriteByte(EnemyCards+20, 99, true)    -- Air Pirate
		WriteByte(EnemyCards+21, 99, true)    -- Darkball 
		WriteByte(EnemyCards+22, 99, true)    -- Defender
		WriteByte(EnemyCards+23, 99, true)    -- Wyvern
		WriteByte(EnemyCards+24, 99, true)    -- Wizard
		WriteByte(EnemyCards+25, 99, true)    -- Neoshadow
		WriteByte(EnemyCards+26, 99, true)    -- White Mushroom
		WriteByte(EnemyCards+27, 99, true)    -- Black Fungus
		WriteByte(EnemyCards+28, 99, true)    -- Creeper Plant
		WriteByte(EnemyCards+29, 99, true)    -- Tornado Step 
		WriteByte(EnemyCards+30, 99, true)    -- Crescendo
		WriteByte(EnemyCards+31, 99, true)    -- Guard Armor
		WriteByte(EnemyCards+32, 99, true)    -- Parasite Cage
		WriteByte(EnemyCards+33, 99, true)    -- Trickmaster
		WriteByte(EnemyCards+34, 99, true)    -- Darkside
		WriteByte(EnemyCards+35, 99, true)    -- Card Soldier 
		WriteByte(EnemyCards+36, 99, true)    -- Hades
		WriteByte(EnemyCards+37, 99, true)    -- Jafar-Genie
		WriteByte(EnemyCards+38, 99, true)    -- Oogie Boogie
		WriteByte(EnemyCards+39, 99, true)    -- Ursula
		WriteByte(EnemyCards+40, 99, true)    -- Hook
		WriteByte(EnemyCards+41, 99, true)    -- Dragon Maleficent
		WriteByte(EnemyCards+42, 99, true)    -- Riku Replica
		WriteByte(EnemyCards+43, 99, true)    -- Axel
		WriteByte(EnemyCards+44, 99, true)    -- Larxene
		WriteByte(EnemyCards+45, 99, true)    -- Vexen
		WriteByte(EnemyCards+46, 99, true)    -- Marluxia
		WriteByte(EnemyCards+47, 99, true)    -- Lexaeus
		WriteByte(EnemyCards+48, 99, true)    -- Ansem
		WriteByte(EnemyCards+49, 99, true)    -- Zexion
		WriteByte(EnemyCards+50, 99, true)    -- Xemnas
		WriteByte(EnemyCards+51, 99, true)    -- Xigbar
		WriteByte(EnemyCards+52, 99, true)    -- Xaldin
		WriteByte(EnemyCards+53, 99, true)    -- Saix
		WriteByte(EnemyCards+54, 99, true)    -- Demyx
		WriteByte(EnemyCards+55, 99, true)    -- Luxord
		WriteByte(EnemyCards+56, 99, true)    -- Roxas
		WriteByte(EnemyCards+57, 99, true)    -- Gold Card
		WriteByte(EnemyCards+58, 99, true)    -- Platinum Card
		
		if ReadByte(JournalBattleCardFlags, true) <= 1 then   -- Kingdom Key Journal Flag
			WriteByte(JournalBattleCardFlags, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+1, true) <= 1 then -- Three Wishes Journal Flag
			WriteByte(JournalBattleCardFlags+1, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+2, true) <= 1 then -- Crabclaw Journal Flag
			WriteByte(JournalBattleCardFlags+2, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+3, true) <= 1 then -- Pumpkinhead Journal Flag
			WriteByte(JournalBattleCardFlags+3, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+4, true) <= 1 then -- Fairy Harp Journal Flag
			WriteByte(JournalBattleCardFlags+4, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+5, true) <= 1 then -- Wishing Star Journal Flag
			WriteByte(JournalBattleCardFlags+5, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+6, true) <= 1 then -- Spellbinder Journal Flag
			WriteByte(JournalBattleCardFlags+6, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+7, true) <= 1 then -- Metall Chocobo Journal Flag
			WriteByte(JournalBattleCardFlags+7, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+8, true) <= 1 then -- Olympia Journal Flag
			WriteByte(JournalBattleCardFlags+8, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+9, true) <= 1 then -- Lionheart Journal Flag
			WriteByte(JournalBattleCardFlags+9, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+10, true) <= 1 then -- Lady Luck Journal Flag
			WriteByte(JournalBattleCardFlags+10, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+11, true) <= 1 then -- Divine Rose Journal Flag
			WriteByte(JournalBattleCardFlags+11, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+12, true) <= 1 then -- Oathkeeper Journal Flag
			WriteByte(JournalBattleCardFlags+12, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+13, true) <= 1 then -- Oblivion Journal Flag
			WriteByte(JournalBattleCardFlags+13, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+14, true) <= 1 then -- Ultima Weapon Journal Flag
			WriteByte(JournalBattleCardFlags+14, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+15, true) <= 1 then -- Diamond Dust Journal Flag
			WriteByte(JournalBattleCardFlags+15, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+16, true) <= 1 then -- One Winged Angel Journal Flag
			WriteByte(JournalBattleCardFlags+16, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+17, true) <= 1 then -- Star Seeker Journal Flag
			WriteByte(JournalBattleCardFlags+17, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+18, true) <= 1 then -- Total Eclipse Journal Flag
			WriteByte(JournalBattleCardFlags+18, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+19, true) <= 1 then -- Midnight Roar Journal Flag
			WriteByte(JournalBattleCardFlags+19, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+20, true) <= 1 then -- Maverick Flare Journal Flag
			WriteByte(JournalBattleCardFlags+20, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+21, true) <= 1 then -- Two Become One Journal Flag
			WriteByte(JournalBattleCardFlags+21, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+22, true) <= 1 then -- Bond of Flame Journal Flag
			WriteByte(JournalBattleCardFlags+22, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+23, true) <= 1 then -- Fire Journal Flag
			WriteByte(JournalBattleCardFlags+23, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+24, true) <= 1 then -- Blizzard Journal Flag
			WriteByte(JournalBattleCardFlags+24, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+25, true) <= 1 then -- Thunder Journal Flag
			WriteByte(JournalBattleCardFlags+25, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+26, true) <= 1 then -- Cure Journal Flag
			WriteByte(JournalBattleCardFlags+26, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+27, true) <= 1 then -- Gravity Journal Flag
			WriteByte(JournalBattleCardFlags+27, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+28, true) <= 1 then -- Stop Journal Flag
			WriteByte(JournalBattleCardFlags+28, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+29, true) <= 1 then -- Aero Journal Flag
			WriteByte(JournalBattleCardFlags+29, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+30, true) <= 1 then -- Simba Journal Flag
			WriteByte(JournalBattleCardFlags+30, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+31, true) <= 1 then -- Genie Journal Flag
			WriteByte(JournalBattleCardFlags+31, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+32, true) <= 1 then -- Bambi Journal Flag
			WriteByte(JournalBattleCardFlags+32, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+33, true) <= 1 then -- Dumbo Journal Flag
			WriteByte(JournalBattleCardFlags+33, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+34, true) <= 1 then -- Tinker Bell Journal Flag
			WriteByte(JournalBattleCardFlags+34, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+35, true) <= 1 then -- Mushu Bell Journal Flag
			WriteByte(JournalBattleCardFlags+35, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+36, true) <= 1 then -- Cloud Journal Flag
			WriteByte(JournalBattleCardFlags+36, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+37, true) <= 1 then -- Potion Journal Flag
			WriteByte(JournalBattleCardFlags+37, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+38, true) <= 1 then -- Hi-Potion Journal Flag
			WriteByte(JournalBattleCardFlags+38, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+39, true) <= 1 then -- Mega-Potion Journal Flag
			WriteByte(JournalBattleCardFlags+39, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+40, true) <= 1 then -- Ether Journal Flag
			WriteByte(JournalBattleCardFlags+40, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+41, true) <= 1 then -- Mega-Ether Journal Flag
			WriteByte(JournalBattleCardFlags+41, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+42, true) <= 1 then -- Elixir Journal Flag
			WriteByte(JournalBattleCardFlags+42, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+43, true) <= 1 then -- Megalixir Journal Flag
			WriteByte(JournalBattleCardFlags+43, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+44, true) <= 1 then -- Donald Journal Flag
			WriteByte(JournalBattleCardFlags+44, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+45, true) <= 1 then -- Goofy Journal Flag
			WriteByte(JournalBattleCardFlags+45, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+46, true) <= 1 then -- Aladdin Journal Flag
			WriteByte(JournalBattleCardFlags+46, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+47, true) <= 1 then -- Ariel Journal Flag
			WriteByte(JournalBattleCardFlags+47, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+48, true) <= 1 then -- Jack Journal Flag
			WriteByte(JournalBattleCardFlags+48, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+49, true) <= 1 then -- Peter Pan Journal Flag
			WriteByte(JournalBattleCardFlags+49, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+50, true) <= 1 then -- Beast Journal Flag
			WriteByte(JournalBattleCardFlags+50, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+51, true) <= 1 then -- Pluto Journal Flag
			WriteByte(JournalBattleCardFlags+51, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+52, true) <= 1 then -- Shadow Journal Flag
			WriteByte(JournalBattleCardFlags+52, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+53, true) <= 1 then -- Soldier Journal Flag
			WriteByte(JournalBattleCardFlags+53, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+54, true) <= 1 then -- Powerwild Journal Flag
			WriteByte(JournalBattleCardFlags+54, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+55, true) <= 1 then -- Bouncywild Journal Flag
			WriteByte(JournalBattleCardFlags+55, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+56, true) <= 1 then -- Large Body Journal Flag
			WriteByte(JournalBattleCardFlags+56, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+57, true) <= 1 then -- Fat Bandit Journal Flag
			WriteByte(JournalBattleCardFlags+57, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+58, true) <= 1 then -- Sea Neon Journal Flag
			WriteByte(JournalBattleCardFlags+58, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+59, true) <= 1 then -- Bandit Journal Flag
			WriteByte(JournalBattleCardFlags+59, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+60, true) <= 1 then -- Pirate Journal Flag
			WriteByte(JournalBattleCardFlags+60, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+61, true) <= 1 then -- Red Nocturne Journal Flag
			WriteByte(JournalBattleCardFlags+61, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+62, true) <= 1 then -- Blue Rhapsody Journal Flag
			WriteByte(JournalBattleCardFlags+62, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+63, true) <= 1 then -- Yellow Opera Journal Flag
			WriteByte(JournalBattleCardFlags+63, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+64, true) <= 1 then -- Green Requiem Journal Flag
			WriteByte(JournalBattleCardFlags+64, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+65, true) <= 1 then -- Wizzard Journal Flag
			WriteByte(JournalBattleCardFlags+65, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+66, true) <= 1 then -- Air Soldier Journal Flag
			WriteByte(JournalBattleCardFlags+66, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+67, true) <= 1 then -- Barrel Spider Journal Flag
			WriteByte(JournalBattleCardFlags+67, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+68, true) <= 1 then -- Wight Knight Journal Flag
			WriteByte(JournalBattleCardFlags+68, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+69, true) <= 1 then -- Air Pirate Journal Flag
			WriteByte(JournalBattleCardFlags+69, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+70, true) <= 1 then -- Gargoyle Journal Flag
			WriteByte(JournalBattleCardFlags+70, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+71, true) <= 1 then -- Search Ghost Journal Flag
			WriteByte(JournalBattleCardFlags+71, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+72, true) <= 1 then -- Aquatank Journal Flag
			WriteByte(JournalBattleCardFlags+72, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+73, true) <= 1 then -- Screwdriver Journal Flag
			WriteByte(JournalBattleCardFlags+73, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+74, true) <= 1 then -- Wyvern Journal Flag
			WriteByte(JournalBattleCardFlags+74, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+75, true) <= 1 then -- Defender Journal Flag
			WriteByte(JournalBattleCardFlags+75, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+76, true) <= 1 then -- White Mushroom Journal Flag
			WriteByte(JournalBattleCardFlags+76, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+77, true) <= 1 then -- Black Fungus Journal Flag
			WriteByte(JournalBattleCardFlags+77, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+78, true) <= 1 then -- Creeper Plant Journal Flag
			WriteByte(JournalBattleCardFlags+78, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+79, true) <= 1 then -- Tornado Step Journal Flag
			WriteByte(JournalBattleCardFlags+79, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+80, true) <= 1 then -- Crescendo Journal Flag
			WriteByte(JournalBattleCardFlags+80, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+81, true) <= 1 then -- Neoshadow Journal Flag
			WriteByte(JournalBattleCardFlags+81, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+82, true) <= 1 then -- Guardarmor Journal Flag
			WriteByte(JournalBattleCardFlags+82, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+83, true) <= 1 then -- Hades Journal Flag
			WriteByte(JournalBattleCardFlags+83, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+84, true) <= 1 then -- Trickmaster Journal Flag
			WriteByte(JournalBattleCardFlags+84, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+85, true) <= 1 then -- Jafar-Genie Journal Flag
			WriteByte(JournalBattleCardFlags+85, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+86, true) <= 1 then -- Ursula Journal Flag
			WriteByte(JournalBattleCardFlags+86, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+87, true) <= 1 then -- Oogie Boogie Journal Flag
			WriteByte(JournalBattleCardFlags+87, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+88, true) <= 1 then -- Parasite Cage Journal Flag
			WriteByte(JournalBattleCardFlags+88, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+89, true) <= 1 then -- Hook Journal Flag
			WriteByte(JournalBattleCardFlags+89, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+90, true) <= 1 then -- Dragon Maleficent Journal Flag
			WriteByte(JournalBattleCardFlags+90, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+91, true) <= 1 then -- Dark Side Journal Flag
			WriteByte(JournalBattleCardFlags+91, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+92, true) <= 1 then -- Riku Replica Journal Flag
			WriteByte(JournalBattleCardFlags+92, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+93, true) <= 1 then -- Card Solider Journal Flag
			WriteByte(JournalBattleCardFlags+93, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+94, true) <= 1 then -- Ansem Journal Flag
			WriteByte(JournalBattleCardFlags+94, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+95, true) <= 1 then -- Xenmas Journal Flag
			WriteByte(JournalBattleCardFlags+95, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+96, true) <= 1 then -- Xigbar Journal Flag
			WriteByte(JournalBattleCardFlags+96, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+97, true) <= 1 then -- Xaldin Journal Flag
			WriteByte(JournalBattleCardFlags+97, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+98, true) <= 1 then -- Vexen Journal Flag
			WriteByte(JournalBattleCardFlags+98, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+99, true) <= 1 then -- Lexaeus Journal Flag
			WriteByte(JournalBattleCardFlags+99, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+100, true) <= 1 then -- Zexion Journal Flag
			WriteByte(JournalBattleCardFlags+100, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+101, true) <= 1 then -- Saix Journal Flag
			WriteByte(JournalBattleCardFlags+101, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+102, true) <= 1 then -- Axel Journal Flag
			WriteByte(JournalBattleCardFlags+102, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+103, true) <= 1 then -- Demyx Journal Flag
			WriteByte(JournalBattleCardFlags+103, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+104, true) <= 1 then -- Luxord Journal Flag
			WriteByte(JournalBattleCardFlags+104, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+105, true) <= 1 then -- Marluxia Journal Flag
			WriteByte(JournalBattleCardFlags+105, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+106, true) <= 1 then -- Larxene Journal Flag
			WriteByte(JournalBattleCardFlags+106, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+107, true) <= 1 then -- Roxas Journal Flag
			WriteByte(JournalBattleCardFlags+107, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+149, true) <= 1 then -- Mickey Journal Flag
			WriteByte(JournalBattleCardFlags+149, 4, true)
		end

		if ReadByte(JournalBattleCardFlags+150, true) <= 1 then -- Gold Card Journal Flag
			WriteByte(JournalBattleCardFlags+150, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+151, true) <= 1 then -- Platinum Card Journal Flag
			WriteByte(JournalBattleCardFlags+151, 4, true)
		end
end
end

---------- Steam Version
if stmgames == 1 then

IngameCheck = 0xAC4474
KingdomKey = ReadLong(0x87A7E8)+0x30, true
ThreeWishes = ReadLong(0x87A7E8)+0x3A , true
CrabClaw = ReadLong(0x87A7E8)+0x44, true
PumpkinHead = ReadLong(0x87A7E8)+0x4E, true
FairyHarp = ReadLong(0x87A7E8)+0x58, true
WishingStar = ReadLong(0x87A7E8)+0x62, true
Spellbinder = ReadLong(0x87A7E8)+0x6C, true
MetalChocobo = ReadLong(0x87A7E8)+0x76, true
Olympia = ReadLong(0x87A7E8)+0x80, true
LionHeart = ReadLong(0x87A7E8)+0x8A, true
LadyLuck = ReadLong(0x87A7E8)+0x94, true
DivineRose = ReadLong(0x87A7E8)+0x9E, true
OathKeeper = ReadLong(0x87A7E8)+0xA8, true
Oblivion = ReadLong(0x87A7E8)+0xB2, true
UltimaWeapon = ReadLong(0x87A7E8)+0xBC, true
DiamondDust = ReadLong(0x87A7E8)+0xC6, true
OneWingedAngel = ReadLong(0x87A7E8)+0xD0, true
SoulEater = ReadLong(0x87A7E8)+0xDA, true
StarSeeker = ReadLong(0x87A7E8)+0xE4, true
TotalEclipse = ReadLong(0x87A7E8)+0xEE, true
MidnightRoar = ReadLong(0x87A7E8)+0xF8, true
MaverickFlare = ReadLong(0x87A7E8)+0x102, true
TwoBecomeOne = ReadLong(0x87A7E8)+0x10C, true
BondofFlame = ReadLong(0x87A7E8)+0x116, true
PremiumKingdomKey = ReadLong(0x87A7E8)+0x120, true
PremiumThreeWishes = ReadLong(0x87A7E8)+0x12A , true
PremiumCrabClaw = ReadLong(0x87A7E8)+0x134, true
PremiumPumpkinHead = ReadLong(0x87A7E8)+0x13E, true
PremiumFairyHarp = ReadLong(0x87A7E8)+0x148, true
PremiumWishingStar = ReadLong(0x87A7E8)+0x152, true
PremiumSpellbinder = ReadLong(0x87A7E8)+0x15C, true
PremiumMetalChocobo = ReadLong(0x87A7E8)+0x166, true
PremiumOlympia = ReadLong(0x87A7E8)+0x170, true
PremiumLionHeart = ReadLong(0x87A7E8)+0x17A, true
PremiumLadyLuck = ReadLong(0x87A7E8)+0x184, true
PremiumDivineRose = ReadLong(0x87A7E8)+0x18E, true
PremiumOathKeeper = ReadLong(0x87A7E8)+0x198, true
PremiumOblivion = ReadLong(0x87A7E8)+0x1A2, true
PremiumUltimaWeapon = ReadLong(0x87A7E8)+0x1AC, true
PremiumDiamondDust = ReadLong(0x87A7E8)+0x1B6, true
PremiumOneWingedAngel = ReadLong(0x87A7E8)+0x1C0, true
PremiumSoulEater = ReadLong(0x87A7E8)+0x1CA, true
PremiumStarSeeker = ReadLong(0x87A7E8)+0x1D4, true
PremiumTotalEclipse = ReadLong(0x87A7E8)+0x1DE, true
PremiumMidnightRoar = ReadLong(0x87A7E8)+0x1E8, true
PremiumMaverickFlare = ReadLong(0x87A7E8)+0x1F2, true
PremiumTwoBecomeOne = ReadLong(0x87A7E8)+0x1FC, true
PremiumBondofFlame = ReadLong(0x87A7E8)+0x206, true
Fire = ReadLong(0x87A7E8)+0x210, true
Blizzard = ReadLong(0x87A7E8)+0x21A, true
Thunder = ReadLong(0x87A7E8)+0x224, true
Cure = ReadLong(0x87A7E8)+0x22E, true
Gravity = ReadLong(0x87A7E8)+0x238, true
Stop = ReadLong(0x87A7E8)+0x242, true
Aero = ReadLong(0x87A7E8)+0x24C, true
UnkownMagic1 = ReadLong(0x87A7E8)+0x256, true
UnkownMagic2 = ReadLong(0x87A7E8)+0x260, true
Simba = ReadLong(0x87A7E8)+0x26A, true
Genie = ReadLong(0x87A7E8)+0x274, true
Bambi = ReadLong(0x87A7E8)+0x27E, true
Dumbo = ReadLong(0x87A7E8)+0x288, true
TinkerBell = ReadLong(0x87A7E8)+0x292, true
Mushu = ReadLong(0x87A7E8)+0x29C, true
Cloud = ReadLong(0x87A7E8)+0x2A6, true
PremiumFire = ReadLong(0x87A7E8)+0x2B0, true
PremiumBlizzard = ReadLong(0x87A7E8)+0x2BA, true
PremiumThunder = ReadLong(0x87A7E8)+0x2C4, true
PremiumCure = ReadLong(0x87A7E8)+0x2CE, true
PremiumGravity = ReadLong(0x87A7E8)+0x2D8, true
PremiumStop = ReadLong(0x87A7E8)+0x2E2, true
PremiumAero = ReadLong(0x87A7E8)+0x2EC, true
PremiumUnkownMagic1 = ReadLong(0x87A7E8)+0x2F6, true
PremiumUnkownMagic2 = ReadLong(0x87A7E8)+0x300, true
PremiumSimba = ReadLong(0x87A7E8)+0x30A, true
PremiumGenie = ReadLong(0x87A7E8)+0x314, true
PremiumBambi = ReadLong(0x87A7E8)+0x31E, true
PremiumDumbo = ReadLong(0x87A7E8)+0x328, true
PremiumTinkerBell = ReadLong(0x87A7E8)+0x332, true
PremiumMushu = ReadLong(0x87A7E8)+0x33C, true
PremiumCloud = ReadLong(0x87A7E8)+0x346, true
Potion = ReadLong(0x87A7E8)+0x350, true
HiPotion = ReadLong(0x87A7E8)+0x35A, true
MegaPotion = ReadLong(0x87A7E8)+0x364, true
Ether = ReadLong(0x87A7E8)+0x36E, true
MegaEther = ReadLong(0x87A7E8)+0x378, true
Elixir = ReadLong(0x87A7E8)+0x382, true
Megalixir = ReadLong(0x87A7E8)+0x38C, true
EnemyCards = ReadLong(0x87A7E8)+0x490, true
JournalBattleCardFlags = ReadLong(0x87A7E8)+0xEE7, true

if ReadByte(IngameCheck) >= 1 then
		WriteByte(KingdomKey, 99, true)   -- Kingdom Key #0
		WriteByte(KingdomKey+1, 99, true) -- Kingdom Key #1
		WriteByte(KingdomKey+2, 99, true) -- Kingdom Key #2
		WriteByte(KingdomKey+3, 99, true) -- Kingdom Key #3
		WriteByte(KingdomKey+4, 99, true) -- Kingdom Key #4
		WriteByte(KingdomKey+5, 99, true) -- Kingdom Key #5
		WriteByte(KingdomKey+6, 99, true) -- Kingdom Key #6
		WriteByte(KingdomKey+7, 99, true) -- Kingdom Key #7
		WriteByte(KingdomKey+8, 99, true) -- Kingdom Key #8
		WriteByte(KingdomKey+9, 99, true) -- Kingdom Key #9
		
		WriteByte(ThreeWishes, 99, true)   -- Three Wishes #0
		WriteByte(ThreeWishes+1, 99, true) -- Three Wishes #1
		WriteByte(ThreeWishes+2, 99, true) -- Three Wishes #2
		WriteByte(ThreeWishes+3, 99, true) -- Three Wishes #3
		WriteByte(ThreeWishes+4, 99, true) -- Three Wishes #4
		WriteByte(ThreeWishes+5, 99, true) -- Three Wishes #5
		WriteByte(ThreeWishes+6, 99, true) -- Three Wishes #6
		WriteByte(ThreeWishes+7, 99, true) -- Three Wishes #7
		WriteByte(ThreeWishes+8, 99, true) -- Three Wishes #8
		WriteByte(ThreeWishes+9, 99, true) -- Three Wishes #9
		
		WriteByte(CrabClaw, 99, true)   -- Crab Claw #0
		WriteByte(CrabClaw+1, 99, true) -- Crab Claw #1
		WriteByte(CrabClaw+2, 99, true) -- Crab Claw #2
		WriteByte(CrabClaw+3, 99, true) -- Crab Claw #3
		WriteByte(CrabClaw+4, 99, true) -- Crab Claw #4
		WriteByte(CrabClaw+5, 99, true) -- Crab Claw #5
		WriteByte(CrabClaw+6, 99, true) -- Crab Claw #6
		WriteByte(CrabClaw+7, 99, true) -- Crab Claw #7
		WriteByte(CrabClaw+8, 99, true) -- Crab Claw #8
		WriteByte(CrabClaw+9, 99, true) -- Crab Claw #9
		
		WriteByte(PumpkinHead, 99, true)   -- Pumpkinhead #0
		WriteByte(PumpkinHead+1, 99, true) -- Pumpkinhead #1
		WriteByte(PumpkinHead+2, 99, true) -- Pumpkinhead #2
		WriteByte(PumpkinHead+3, 99, true) -- Pumpkinhead #3
		WriteByte(PumpkinHead+4, 99, true) -- Pumpkinhead #4
		WriteByte(PumpkinHead+5, 99, true) -- Pumpkinhead #5
		WriteByte(PumpkinHead+6, 99, true) -- Pumpkinhead #6
		WriteByte(PumpkinHead+7, 99, true) -- Pumpkinhead #7
		WriteByte(PumpkinHead+8, 99, true) -- Pumpkinhead #8
		WriteByte(PumpkinHead+9, 99, true) -- Pumpkinhead #9
		
		WriteByte(FairyHarp, 99, true)   -- Fairy Harp #0
		WriteByte(FairyHarp+1, 99, true) -- Fairy Harp #1
		WriteByte(FairyHarp+2, 99, true) -- Fairy Harp #2
		WriteByte(FairyHarp+3, 99, true) -- Fairy Harp #3
		WriteByte(FairyHarp+4, 99, true) -- Fairy Harp #4
		WriteByte(FairyHarp+5, 99, true) -- Fairy Harp #5
		WriteByte(FairyHarp+6, 99, true) -- Fairy Harp #6
		WriteByte(FairyHarp+7, 99, true) -- Fairy Harp #7
		WriteByte(FairyHarp+8, 99, true) -- Fairy Harp #8
		WriteByte(FairyHarp+9, 99, true) -- Fairy Harp #9
		
		WriteByte(WishingStar, 99, true)   -- Wishing Star #0
		WriteByte(WishingStar+1, 99, true) -- Wishing Star #1
		WriteByte(WishingStar+2, 99, true) -- Wishing Star #2
		WriteByte(WishingStar+3, 99, true) -- Wishing Star #3
		WriteByte(WishingStar+4, 99, true) -- Wishing Star #4
		WriteByte(WishingStar+5, 99, true) -- Wishing Star #5
		WriteByte(WishingStar+6, 99, true) -- Wishing Star #6
		WriteByte(WishingStar+7, 99, true) -- Wishing Star #7
		WriteByte(WishingStar+8, 99, true) -- Wishing Star #8
		WriteByte(WishingStar+9, 99, true) -- Wishing Star #9
		
		WriteByte(Spellbinder, 99, true)   -- Spellbinder #0
		WriteByte(Spellbinder+1, 99, true) -- Spellbinder #1
		WriteByte(Spellbinder+2, 99, true) -- Spellbinder #2
		WriteByte(Spellbinder+3, 99, true) -- Spellbinder #3
		WriteByte(Spellbinder+4, 99, true) -- Spellbinder #4
		WriteByte(Spellbinder+5, 99, true) -- Spellbinder #5
		WriteByte(Spellbinder+6, 99, true) -- Spellbinder #6
		WriteByte(Spellbinder+7, 99, true) -- Spellbinder #7
		WriteByte(Spellbinder+8, 99, true) -- Spellbinder #8
		WriteByte(Spellbinder+9, 99, true) -- Spellbinder #9
		
		WriteByte(MetalChocobo, 99, true)   -- Metal Chocobo #0
		WriteByte(MetalChocobo+1, 99, true) -- Metal Chocobo #1
		WriteByte(MetalChocobo+2, 99, true) -- Metal Chocobo #2
		WriteByte(MetalChocobo+3, 99, true) -- Metal Chocobo #3
		WriteByte(MetalChocobo+4, 99, true) -- Metal Chocobo #4
		WriteByte(MetalChocobo+5, 99, true) -- Metal Chocobo #5
		WriteByte(MetalChocobo+6, 99, true) -- Metal Chocobo #6
		WriteByte(MetalChocobo+7, 99, true) -- Metal Chocobo #7
		WriteByte(MetalChocobo+8, 99, true) -- Metal Chocobo #8
		WriteByte(MetalChocobo+9, 99, true) -- Metal Chocobo #9
		
		WriteByte(Olympia, 99, true)   -- Olympia #0
		WriteByte(Olympia+1, 99, true) -- Olympia #1
		WriteByte(Olympia+2, 99, true) -- Olympia #2
		WriteByte(Olympia+3, 99, true) -- Olympia #3
		WriteByte(Olympia+4, 99, true) -- Olympia #4
		WriteByte(Olympia+5, 99, true) -- Olympia #5
		WriteByte(Olympia+6, 99, true) -- Olympia #6
		WriteByte(Olympia+7, 99, true) -- Olympia #7
		WriteByte(Olympia+8, 99, true) -- Olympia #8
		WriteByte(Olympia+9, 99, true) -- Olympia #9
		
		WriteByte(LionHeart, 99, true)   -- Lionheart #0
		WriteByte(LionHeart+1, 99, true) -- Lionheart #1
		WriteByte(LionHeart+2, 99, true) -- Lionheart #2
		WriteByte(LionHeart+3, 99, true) -- Lionheart #3
		WriteByte(LionHeart+4, 99, true) -- Lionheart #4
		WriteByte(LionHeart+5, 99, true) -- Lionheart #5
		WriteByte(LionHeart+6, 99, true) -- Lionheart #6
		WriteByte(LionHeart+7, 99, true) -- Lionheart #7
		WriteByte(LionHeart+8, 99, true) -- Lionheart #8
		WriteByte(LionHeart+9, 99, true) -- Lionheart #9
		
		WriteByte(LadyLuck, 99, true)   -- Lady Luck #0
		WriteByte(LadyLuck+1, 99, true) -- Lady Luck #1
		WriteByte(LadyLuck+2, 99, true) -- Lady Luck #2
		WriteByte(LadyLuck+3, 99, true) -- Lady Luck #3
		WriteByte(LadyLuck+4, 99, true) -- Lady Luck #4
		WriteByte(LadyLuck+5, 99, true) -- Lady Luck #5
		WriteByte(LadyLuck+6, 99, true) -- Lady Luck #6
		WriteByte(LadyLuck+7, 99, true) -- Lady Luck #7
		WriteByte(LadyLuck+8, 99, true) -- Lady Luck #8
		WriteByte(LadyLuck+9, 99, true) -- Lady Luck #9
		
		WriteByte(DivineRose, 99, true)   -- Divine Rose #0
		WriteByte(DivineRose+1, 99, true) -- Divine Rose #1
		WriteByte(DivineRose+2, 99, true) -- Divine Rose #2
		WriteByte(DivineRose+3, 99, true) -- Divine Rose #3
		WriteByte(DivineRose+4, 99, true) -- Divine Rose #4
		WriteByte(DivineRose+5, 99, true) -- Divine Rose #5
		WriteByte(DivineRose+6, 99, true) -- Divine Rose #6
		WriteByte(DivineRose+7, 99, true) -- Divine Rose #7
		WriteByte(DivineRose+8, 99, true) -- Divine Rose #8
		WriteByte(DivineRose+9, 99, true) -- Divine Rose #9
		
		WriteByte(OathKeeper, 99, true)   -- Oathkeeper #0
		WriteByte(OathKeeper+1, 99, true) -- Oathkeeper #1
		WriteByte(OathKeeper+2, 99, true) -- Oathkeeper #2
		WriteByte(OathKeeper+3, 99, true) -- Oathkeeper #3
		WriteByte(OathKeeper+4, 99, true) -- Oathkeeper #4
		WriteByte(OathKeeper+5, 99, true) -- Oathkeeper #5
		WriteByte(OathKeeper+6, 99, true) -- Oathkeeper #6
		WriteByte(OathKeeper+7, 99, true) -- Oathkeeper #7
		WriteByte(OathKeeper+8, 99, true) -- Oathkeeper #8
		WriteByte(OathKeeper+9, 99, true) -- Oathkeeper #9
		
		WriteByte(Oblivion, 99, true)   -- Oblivion #0
		WriteByte(Oblivion+1, 99, true) -- Oblivion #1
		WriteByte(Oblivion+2, 99, true) -- Oblivion #2
		WriteByte(Oblivion+3, 99, true) -- Oblivion #3
		WriteByte(Oblivion+4, 99, true) -- Oblivion #4
		WriteByte(Oblivion+5, 99, true) -- Oblivion #5
		WriteByte(Oblivion+6, 99, true) -- Oblivion #6
		WriteByte(Oblivion+7, 99, true) -- Oblivion #7
		WriteByte(Oblivion+8, 99, true) -- Oblivion #8
		WriteByte(Oblivion+9, 99, true) -- Oblivion #9
		
		WriteByte(UltimaWeapon, 99, true)   -- Ultima Weapon #0
		WriteByte(UltimaWeapon+1, 99, true) -- Ultima Weapon #1
		WriteByte(UltimaWeapon+2, 99, true) -- Ultima Weapon #2
		WriteByte(UltimaWeapon+3, 99, true) -- Ultima Weapon #3
		WriteByte(UltimaWeapon+4, 99, true) -- Ultima Weapon #4
		WriteByte(UltimaWeapon+5, 99, true) -- Ultima Weapon #5
		WriteByte(UltimaWeapon+6, 99, true) -- Ultima Weapon #6
		WriteByte(UltimaWeapon+7, 99, true) -- Ultima Weapon #7
		WriteByte(UltimaWeapon+8, 99, true) -- Ultima Weapon #8
		WriteByte(UltimaWeapon+9, 99, true) -- Ultima Weapon #9
		
		WriteByte(DiamondDust, 99, true)   -- Diamond Dust #0
		WriteByte(DiamondDust+1, 99, true) -- Diamond Dust #1
		WriteByte(DiamondDust+2, 99, true) -- Diamond Dust #2
		WriteByte(DiamondDust+3, 99, true) -- Diamond Dust #3
		WriteByte(DiamondDust+4, 99, true) -- Diamond Dust #4
		WriteByte(DiamondDust+5, 99, true) -- Diamond Dust #5
		WriteByte(DiamondDust+6, 99, true) -- Diamond Dust #6
		WriteByte(DiamondDust+7, 99, true) -- Diamond Dust #7
		WriteByte(DiamondDust+8, 99, true) -- Diamond Dust #8
		WriteByte(DiamondDust+9, 99, true) -- Diamond Dust #9
		
		WriteByte(OneWingedAngel, 99, true)   -- One-Winged Angel #0
		WriteByte(OneWingedAngel+1, 99, true) -- One-Winged Angel #1
		WriteByte(OneWingedAngel+2, 99, true) -- One-Winged Angel #2
		WriteByte(OneWingedAngel+3, 99, true) -- One-Winged Angel #3
		WriteByte(OneWingedAngel+4, 99, true) -- One-Winged Angel #4
		WriteByte(OneWingedAngel+5, 99, true) -- One-Winged Angel #5
		WriteByte(OneWingedAngel+6, 99, true) -- One-Winged Angel #6
		WriteByte(OneWingedAngel+7, 99, true) -- One-Winged Angel #7
		WriteByte(OneWingedAngel+8, 99, true) -- One-Winged Angel #8
		WriteByte(OneWingedAngel+9, 99, true) -- One-Winged Angel #9
		
		WriteByte(SoulEater, 99, true)   -- Soul Eater #0
		WriteByte(SoulEater+1, 99, true) -- Soul Eater #1
		WriteByte(SoulEater+2, 99, true) -- Soul Eater #2
		WriteByte(SoulEater+3, 99, true) -- Soul Eater #3
		WriteByte(SoulEater+4, 99, true) -- Soul Eater #4
		WriteByte(SoulEater+5, 99, true) -- Soul Eater #5
		WriteByte(SoulEater+6, 99, true) -- Soul Eater #6
		WriteByte(SoulEater+7, 99, true) -- Soul Eater #7
		WriteByte(SoulEater+8, 99, true) -- Soul Eater #8
		WriteByte(SoulEater+9, 99, true) -- Soul Eater #9
		
		WriteByte(StarSeeker, 99, true)   -- Star Seeker #0
		WriteByte(StarSeeker+1, 99, true) -- Star Seeker #1
		WriteByte(StarSeeker+2, 99, true) -- Star Seeker #2
		WriteByte(StarSeeker+3, 99, true) -- Star Seeker #3
		WriteByte(StarSeeker+4, 99, true) -- Star Seeker #4
		WriteByte(StarSeeker+5, 99, true) -- Star Seeker #5
		WriteByte(StarSeeker+6, 99, true) -- Star Seeker #6
		WriteByte(StarSeeker+7, 99, true) -- Star Seeker #7
		WriteByte(StarSeeker+8, 99, true) -- Star Seeker #8
		WriteByte(StarSeeker+9, 99, true) -- Star Seeker #9
		
		WriteByte(TotalEclipse, 99, true)   -- Total Eclipse #0
		WriteByte(TotalEclipse+1, 99, true) -- Total Eclipse #1
		WriteByte(TotalEclipse+2, 99, true) -- Total Eclipse #2
		WriteByte(TotalEclipse+3, 99, true) -- Total Eclipse #3
		WriteByte(TotalEclipse+4, 99, true) -- Total Eclipse #4
		WriteByte(TotalEclipse+5, 99, true) -- Total Eclipse #5
		WriteByte(TotalEclipse+6, 99, true) -- Total Eclipse #6
		WriteByte(TotalEclipse+7, 99, true) -- Total Eclipse #7
		WriteByte(TotalEclipse+8, 99, true) -- Total Eclipse #8
		WriteByte(TotalEclipse+9, 99, true) -- Total Eclipse #9
		
		WriteByte(MidnightRoar, 99, true)   -- Midnight Roar #0
		WriteByte(MidnightRoar+1, 99, true) -- Midnight Roar #1
		WriteByte(MidnightRoar+2, 99, true) -- Midnight Roar #2
		WriteByte(MidnightRoar+3, 99, true) -- Midnight Roar #3
		WriteByte(MidnightRoar+4, 99, true) -- Midnight Roar #4
		WriteByte(MidnightRoar+5, 99, true) -- Midnight Roar #5
		WriteByte(MidnightRoar+6, 99, true) -- Midnight Roar #6
		WriteByte(MidnightRoar+7, 99, true) -- Midnight Roar #7
		WriteByte(MidnightRoar+8, 99, true) -- Midnight Roar #8
		WriteByte(MidnightRoar+9, 99, true) -- Midnight Roar #9
		
		WriteByte(MaverickFlare, 99, true)   -- Maverick Flare #0
		WriteByte(MaverickFlare+1, 99, true) -- Maverick Flare #1
		WriteByte(MaverickFlare+2, 99, true) -- Maverick Flare #2
		WriteByte(MaverickFlare+3, 99, true) -- Maverick Flare #3
		WriteByte(MaverickFlare+4, 99, true) -- Maverick Flare #4
		WriteByte(MaverickFlare+5, 99, true) -- Maverick Flare #5
		WriteByte(MaverickFlare+6, 99, true) -- Maverick Flare #6
		WriteByte(MaverickFlare+7, 99, true) -- Maverick Flare #7
		WriteByte(MaverickFlare+8, 99, true) -- Maverick Flare #8
		WriteByte(MaverickFlare+9, 99, true) -- Maverick Flare #9
		
		WriteByte(TwoBecomeOne, 99, true)   -- Two Become One #0
		WriteByte(TwoBecomeOne+1, 99, true) -- Two Become One #1
		WriteByte(TwoBecomeOne+2, 99, true) -- Two Become One #2
		WriteByte(TwoBecomeOne+3, 99, true) -- Two Become One #3
		WriteByte(TwoBecomeOne+4, 99, true) -- Two Become One #4
		WriteByte(TwoBecomeOne+5, 99, true) -- Two Become One #5
		WriteByte(TwoBecomeOne+6, 99, true) -- Two Become One #6
		WriteByte(TwoBecomeOne+7, 99, true) -- Two Become One #7
		WriteByte(TwoBecomeOne+8, 99, true) -- Two Become One #8
		WriteByte(TwoBecomeOne+9, 99, true) -- Two Become One #9
		
		WriteByte(BondofFlame, 99, true)   -- Bond of Flame #0
		WriteByte(BondofFlame+1, 99, true) -- Bond of Flame #1
		WriteByte(BondofFlame+2, 99, true) -- Bond of Flame #2
		WriteByte(BondofFlame+3, 99, true) -- Bond of Flame #3
		WriteByte(BondofFlame+4, 99, true) -- Bond of Flame #4
		WriteByte(BondofFlame+5, 99, true) -- Bond of Flame #5
		WriteByte(BondofFlame+6, 99, true) -- Bond of Flame #6
		WriteByte(BondofFlame+7, 99, true) -- Bond of Flame #7
		WriteByte(BondofFlame+8, 99, true) -- Bond of Flame #8
		WriteByte(BondofFlame+9, 99, true) -- Bond of Flame #9
		
		WriteByte(PremiumKingdomKey, 99, true)   -- Premium Kingdom Key #0
		WriteByte(PremiumKingdomKey+1, 99, true) -- Premium Kingdom Key #1
		WriteByte(PremiumKingdomKey+2, 99, true) -- Premium Kingdom Key #2
		WriteByte(PremiumKingdomKey+3, 99, true) -- Premium Kingdom Key #3
		WriteByte(PremiumKingdomKey+4, 99, true) -- Premium Kingdom Key #4
		WriteByte(PremiumKingdomKey+5, 99, true) -- Premium Kingdom Key #5
		WriteByte(PremiumKingdomKey+6, 99, true) -- Premium Kingdom Key #6
		WriteByte(PremiumKingdomKey+7, 99, true) -- Premium Kingdom Key #7
		WriteByte(PremiumKingdomKey+8, 99, true) -- Premium Kingdom Key #8
		WriteByte(PremiumKingdomKey+9, 99, true) -- Premium Kingdom Key #9
		
		WriteByte(PremiumThreeWishes, 99, true)   -- Premium Three Wishes #0
		WriteByte(PremiumThreeWishes+1, 99, true) -- Premium Three Wishes #1
		WriteByte(PremiumThreeWishes+2, 99, true) -- Premium Three Wishes #2
		WriteByte(PremiumThreeWishes+3, 99, true) -- Premium Three Wishes #3
		WriteByte(PremiumThreeWishes+4, 99, true) -- Premium Three Wishes #4
		WriteByte(PremiumThreeWishes+5, 99, true) -- Premium Three Wishes #5
		WriteByte(PremiumThreeWishes+6, 99, true) -- Premium Three Wishes #6
		WriteByte(PremiumThreeWishes+7, 99, true) -- Premium Three Wishes #7
		WriteByte(PremiumThreeWishes+8, 99, true) -- Premium Three Wishes #8
		WriteByte(PremiumThreeWishes+9, 99, true) -- Premium Three Wishes #9
		
		WriteByte(PremiumCrabClaw, 99, true)   -- Premium Crab Claw #0
		WriteByte(PremiumCrabClaw+1, 99, true) -- Premium Crab Claw #1
		WriteByte(PremiumCrabClaw+2, 99, true) -- Premium Crab Claw #2
		WriteByte(PremiumCrabClaw+3, 99, true) -- Premium Crab Claw #3
		WriteByte(PremiumCrabClaw+4, 99, true) -- Premium Crab Claw #4
		WriteByte(PremiumCrabClaw+5, 99, true) -- Premium Crab Claw #5
		WriteByte(PremiumCrabClaw+6, 99, true) -- Premium Crab Claw #6
		WriteByte(PremiumCrabClaw+7, 99, true) -- Premium Crab Claw #7
		WriteByte(PremiumCrabClaw+8, 99, true) -- Premium Crab Claw #8
		WriteByte(PremiumCrabClaw+9, 99, true) -- Premium Crab Claw #9
		
		WriteByte(PremiumPumpkinHead, 99, true)   -- Premium Pumpkinhead #0
		WriteByte(PremiumPumpkinHead+1, 99, true) -- Premium Pumpkinhead #1
		WriteByte(PremiumPumpkinHead+2, 99, true) -- Premium Pumpkinhead #2
		WriteByte(PremiumPumpkinHead+3, 99, true) -- Premium Pumpkinhead #3
		WriteByte(PremiumPumpkinHead+4, 99, true) -- Premium Pumpkinhead #4
		WriteByte(PremiumPumpkinHead+5, 99, true) -- Premium Pumpkinhead #5
		WriteByte(PremiumPumpkinHead+6, 99, true) -- Premium Pumpkinhead #6
		WriteByte(PremiumPumpkinHead+7, 99, true) -- Premium Pumpkinhead #7
		WriteByte(PremiumPumpkinHead+8, 99, true) -- Premium Pumpkinhead #8
		WriteByte(PremiumPumpkinHead+9, 99, true) -- Premium Pumpkinhead #9
		
		WriteByte(PremiumFairyHarp, 99, true)   -- Premium Fairy Harp #0
		WriteByte(PremiumFairyHarp+1, 99, true) -- Premium Fairy Harp #1
		WriteByte(PremiumFairyHarp+2, 99, true) -- Premium Fairy Harp #2
		WriteByte(PremiumFairyHarp+3, 99, true) -- Premium Fairy Harp #3
		WriteByte(PremiumFairyHarp+4, 99, true) -- Premium Fairy Harp #4
		WriteByte(PremiumFairyHarp+5, 99, true) -- Premium Fairy Harp #5
		WriteByte(PremiumFairyHarp+6, 99, true) -- Premium Fairy Harp #6
		WriteByte(PremiumFairyHarp+7, 99, true) -- Premium Fairy Harp #7
		WriteByte(PremiumFairyHarp+8, 99, true) -- Premium Fairy Harp #8
		WriteByte(PremiumFairyHarp+9, 99, true) -- Premium Fairy Harp #9
		
		WriteByte(PremiumWishingStar, 99, true)   -- Premium Wishing Star #0
		WriteByte(PremiumWishingStar+1, 99, true) -- Premium Wishing Star #1
		WriteByte(PremiumWishingStar+2, 99, true) -- Premium Wishing Star #2
		WriteByte(PremiumWishingStar+3, 99, true) -- Premium Wishing Star #3
		WriteByte(PremiumWishingStar+4, 99, true) -- Premium Wishing Star #4
		WriteByte(PremiumWishingStar+5, 99, true) -- Premium Wishing Star #5
		WriteByte(PremiumWishingStar+6, 99, true) -- Premium Wishing Star #6
		WriteByte(PremiumWishingStar+7, 99, true) -- Premium Wishing Star #7
		WriteByte(PremiumWishingStar+8, 99, true) -- Premium Wishing Star #8
		WriteByte(PremiumWishingStar+9, 99, true) -- Premium Wishing Star #9
		
		WriteByte(PremiumSpellbinder, 99, true)   -- Premium Spellbinder #0
		WriteByte(PremiumSpellbinder+1, 99, true) -- Premium Spellbinder #1
		WriteByte(PremiumSpellbinder+2, 99, true) -- Premium Spellbinder #2
		WriteByte(PremiumSpellbinder+3, 99, true) -- Premium Spellbinder #3
		WriteByte(PremiumSpellbinder+4, 99, true) -- Premium Spellbinder #4
		WriteByte(PremiumSpellbinder+5, 99, true) -- Premium Spellbinder #5
		WriteByte(PremiumSpellbinder+6, 99, true) -- Premium Spellbinder #6
		WriteByte(PremiumSpellbinder+7, 99, true) -- Premium Spellbinder #7
		WriteByte(PremiumSpellbinder+8, 99, true) -- Premium Spellbinder #8
		WriteByte(PremiumSpellbinder+9, 99, true) -- Premium Spellbinder #9
		
		WriteByte(PremiumMetalChocobo, 99, true)   -- Premium Metal Chocobo #0
		WriteByte(PremiumMetalChocobo+1, 99, true) -- Premium Metal Chocobo #1
		WriteByte(PremiumMetalChocobo+2, 99, true) -- Premium Metal Chocobo #2
		WriteByte(PremiumMetalChocobo+3, 99, true) -- Premium Metal Chocobo #3
		WriteByte(PremiumMetalChocobo+4, 99, true) -- Premium Metal Chocobo #4
		WriteByte(PremiumMetalChocobo+5, 99, true) -- Premium Metal Chocobo #5
		WriteByte(PremiumMetalChocobo+6, 99, true) -- Premium Metal Chocobo #6
		WriteByte(PremiumMetalChocobo+7, 99, true) -- Premium Metal Chocobo #7
		WriteByte(PremiumMetalChocobo+8, 99, true) -- Premium Metal Chocobo #8
		WriteByte(PremiumMetalChocobo+9, 99, true) -- Premium Metal Chocobo #9
		
		WriteByte(PremiumOlympia, 99, true)   -- Premium Olympia #0
		WriteByte(PremiumOlympia+1, 99, true) -- Premium Olympia #1
		WriteByte(PremiumOlympia+2, 99, true) -- Premium Olympia #2
		WriteByte(PremiumOlympia+3, 99, true) -- Premium Olympia #3
		WriteByte(PremiumOlympia+4, 99, true) -- Premium Olympia #4
		WriteByte(PremiumOlympia+5, 99, true) -- Premium Olympia #5
		WriteByte(PremiumOlympia+6, 99, true) -- Premium Olympia #6
		WriteByte(PremiumOlympia+7, 99, true) -- Premium Olympia #7
		WriteByte(PremiumOlympia+8, 99, true) -- Premium Olympia #8
		WriteByte(PremiumOlympia+9, 99, true) -- Premium Olympia #9
		
		WriteByte(PremiumLionHeart, 99, true)   -- Premium Lionheart #0
		WriteByte(PremiumLionHeart+1, 99, true) -- Premium Lionheart #1
		WriteByte(PremiumLionHeart+2, 99, true) -- Premium Lionheart #2
		WriteByte(PremiumLionHeart+3, 99, true) -- Premium Lionheart #3
		WriteByte(PremiumLionHeart+4, 99, true) -- Premium Lionheart #4
		WriteByte(PremiumLionHeart+5, 99, true) -- Premium Lionheart #5
		WriteByte(PremiumLionHeart+6, 99, true) -- Premium Lionheart #6
		WriteByte(PremiumLionHeart+7, 99, true) -- Premium Lionheart #7
		WriteByte(PremiumLionHeart+8, 99, true) -- Premium Lionheart #8
		WriteByte(PremiumLionHeart+9, 99, true) -- Premium Lionheart #9
		
		WriteByte(PremiumLadyLuck, 99, true)   -- Premium Lady Luck #0
		WriteByte(PremiumLadyLuck+1, 99, true) -- Premium Lady Luck #1
		WriteByte(PremiumLadyLuck+2, 99, true) -- Premium Lady Luck #2
		WriteByte(PremiumLadyLuck+3, 99, true) -- Premium Lady Luck #3
		WriteByte(PremiumLadyLuck+4, 99, true) -- Premium Lady Luck #4
		WriteByte(PremiumLadyLuck+5, 99, true) -- Premium Lady Luck #5
		WriteByte(PremiumLadyLuck+6, 99, true) -- Premium Lady Luck #6
		WriteByte(PremiumLadyLuck+7, 99, true) -- Premium Lady Luck #7
		WriteByte(PremiumLadyLuck+8, 99, true) -- Premium Lady Luck #8
		WriteByte(PremiumLadyLuck+9, 99, true) -- Premium Lady Luck #9
		
		WriteByte(PremiumDivineRose, 99, true)   -- Premium Divine Rose #0
		WriteByte(PremiumDivineRose+1, 99, true) -- Premium Divine Rose #1
		WriteByte(PremiumDivineRose+2, 99, true) -- Premium Divine Rose #2
		WriteByte(PremiumDivineRose+3, 99, true) -- Premium Divine Rose #3
		WriteByte(PremiumDivineRose+4, 99, true) -- Premium Divine Rose #4
		WriteByte(PremiumDivineRose+5, 99, true) -- Premium Divine Rose #5
		WriteByte(PremiumDivineRose+6, 99, true) -- Premium Divine Rose #6
		WriteByte(PremiumDivineRose+7, 99, true) -- Premium Divine Rose #7
		WriteByte(PremiumDivineRose+8, 99, true) -- Premium Divine Rose #8
		WriteByte(PremiumDivineRose+9, 99, true) -- Premium Divine Rose #9
		
		WriteByte(PremiumOathKeeper, 99, true)   -- Premium Oathkeeper #0
		WriteByte(PremiumOathKeeper+1, 99, true) -- Premium Oathkeeper #1
		WriteByte(PremiumOathKeeper+2, 99, true) -- Premium Oathkeeper #2
		WriteByte(PremiumOathKeeper+3, 99, true) -- Premium Oathkeeper #3
		WriteByte(PremiumOathKeeper+4, 99, true) -- Premium Oathkeeper #4
		WriteByte(PremiumOathKeeper+5, 99, true) -- Premium Oathkeeper #5
		WriteByte(PremiumOathKeeper+6, 99, true) -- Premium Oathkeeper #6
		WriteByte(PremiumOathKeeper+7, 99, true) -- Premium Oathkeeper #7
		WriteByte(PremiumOathKeeper+8, 99, true) -- Premium Oathkeeper #8
		WriteByte(PremiumOathKeeper+9, 99, true) -- Premium Oathkeeper #9
		
		WriteByte(PremiumOblivion, 99, true)   -- Premium Oblivion #0
		WriteByte(PremiumOblivion+1, 99, true) -- Premium Oblivion #1
		WriteByte(PremiumOblivion+2, 99, true) -- Premium Oblivion #2
		WriteByte(PremiumOblivion+3, 99, true) -- Premium Oblivion #3
		WriteByte(PremiumOblivion+4, 99, true) -- Premium Oblivion #4
		WriteByte(PremiumOblivion+5, 99, true) -- Premium Oblivion #5
		WriteByte(PremiumOblivion+6, 99, true) -- Premium Oblivion #6
		WriteByte(PremiumOblivion+7, 99, true) -- Premium Oblivion #7
		WriteByte(PremiumOblivion+8, 99, true) -- Premium Oblivion #8
		WriteByte(PremiumOblivion+9, 99, true) -- Premium Oblivion #9
		
		WriteByte(PremiumUltimaWeapon, 99, true)   -- Premium Ultima Weapon #0
		WriteByte(PremiumUltimaWeapon+1, 99, true) -- Premium Ultima Weapon #1
		WriteByte(PremiumUltimaWeapon+2, 99, true) -- Premium Ultima Weapon #2
		WriteByte(PremiumUltimaWeapon+3, 99, true) -- Premium Ultima Weapon #3
		WriteByte(PremiumUltimaWeapon+4, 99, true) -- Premium Ultima Weapon #4
		WriteByte(PremiumUltimaWeapon+5, 99, true) -- Premium Ultima Weapon #5
		WriteByte(PremiumUltimaWeapon+6, 99, true) -- Premium Ultima Weapon #6
		WriteByte(PremiumUltimaWeapon+7, 99, true) -- Premium Ultima Weapon #7
		WriteByte(PremiumUltimaWeapon+8, 99, true) -- Premium Ultima Weapon #8
		WriteByte(PremiumUltimaWeapon+9, 99, true) -- Premium Ultima Weapon #9
		
		WriteByte(PremiumDiamondDust, 99, true)   -- Premium Diamond Dust #0
		WriteByte(PremiumDiamondDust+1, 99, true) -- Premium Diamond Dust #1
		WriteByte(PremiumDiamondDust+2, 99, true) -- Premium Diamond Dust #2
		WriteByte(PremiumDiamondDust+3, 99, true) -- Premium Diamond Dust #3
		WriteByte(PremiumDiamondDust+4, 99, true) -- Premium Diamond Dust #4
		WriteByte(PremiumDiamondDust+5, 99, true) -- Premium Diamond Dust #5
		WriteByte(PremiumDiamondDust+6, 99, true) -- Premium Diamond Dust #6
		WriteByte(PremiumDiamondDust+7, 99, true) -- Premium Diamond Dust #7
		WriteByte(PremiumDiamondDust+8, 99, true) -- Premium Diamond Dust #8
		WriteByte(PremiumDiamondDust+9, 99, true) -- Premium Diamond Dust #9
		
		WriteByte(PremiumOneWingedAngel, 99, true)   -- Premium One-Winged Angel #0
		WriteByte(PremiumOneWingedAngel+1, 99, true) -- Premium One-Winged Angel #1
		WriteByte(PremiumOneWingedAngel+2, 99, true) -- Premium One-Winged Angel #2
		WriteByte(PremiumOneWingedAngel+3, 99, true) -- Premium One-Winged Angel #3
		WriteByte(PremiumOneWingedAngel+4, 99, true) -- Premium One-Winged Angel #4
		WriteByte(PremiumOneWingedAngel+5, 99, true) -- Premium One-Winged Angel #5
		WriteByte(PremiumOneWingedAngel+6, 99, true) -- Premium One-Winged Angel #6
		WriteByte(PremiumOneWingedAngel+7, 99, true) -- Premium One-Winged Angel #7
		WriteByte(PremiumOneWingedAngel+8, 99, true) -- Premium One-Winged Angel #8
		WriteByte(PremiumOneWingedAngel+9, 99, true) -- Premium One-Winged Angel #9
		
		WriteByte(PremiumSoulEater, 99, true)   -- Premium Soul Eater #0
		WriteByte(PremiumSoulEater+1, 99, true) -- Premium Soul Eater #1
		WriteByte(PremiumSoulEater+2, 99, true) -- Premium Soul Eater #2
		WriteByte(PremiumSoulEater+3, 99, true) -- Premium Soul Eater #3
		WriteByte(PremiumSoulEater+4, 99, true) -- Premium Soul Eater #4
		WriteByte(PremiumSoulEater+5, 99, true) -- Premium Soul Eater #5
		WriteByte(PremiumSoulEater+6, 99, true) -- Premium Soul Eater #6
		WriteByte(PremiumSoulEater+7, 99, true) -- Premium Soul Eater #7
		WriteByte(PremiumSoulEater+8, 99, true) -- Premium Soul Eater #8
		WriteByte(PremiumSoulEater+9, 99, true) -- Premium Soul Eater #9
		
		WriteByte(PremiumStarSeeker, 99, true)   -- Premium Star Seeker #0
		WriteByte(PremiumStarSeeker+1, 99, true) -- Premium Star Seeker #1
		WriteByte(PremiumStarSeeker+2, 99, true) -- Premium Star Seeker #2
		WriteByte(PremiumStarSeeker+3, 99, true) -- Premium Star Seeker #3
		WriteByte(PremiumStarSeeker+4, 99, true) -- Premium Star Seeker #4
		WriteByte(PremiumStarSeeker+5, 99, true) -- Premium Star Seeker #5
		WriteByte(PremiumStarSeeker+6, 99, true) -- Premium Star Seeker #6
		WriteByte(PremiumStarSeeker+7, 99, true) -- Premium Star Seeker #7
		WriteByte(PremiumStarSeeker+8, 99, true) -- Premium Star Seeker #8
		WriteByte(PremiumStarSeeker+9, 99, true) -- Premium Star Seeker #9
		
		WriteByte(PremiumTotalEclipse, 99, true)   -- Premium Total Eclipse #0
		WriteByte(PremiumTotalEclipse+1, 99, true) -- Premium Total Eclipse #1
		WriteByte(PremiumTotalEclipse+2, 99, true) -- Premium Total Eclipse #2
		WriteByte(PremiumTotalEclipse+3, 99, true) -- Premium Total Eclipse #3
		WriteByte(PremiumTotalEclipse+4, 99, true) -- Premium Total Eclipse #4
		WriteByte(PremiumTotalEclipse+5, 99, true) -- Premium Total Eclipse #5
		WriteByte(PremiumTotalEclipse+6, 99, true) -- Premium Total Eclipse #6
		WriteByte(PremiumTotalEclipse+7, 99, true) -- Premium Total Eclipse #7
		WriteByte(PremiumTotalEclipse+8, 99, true) -- Premium Total Eclipse #8
		WriteByte(PremiumTotalEclipse+9, 99, true) -- Premium Total Eclipse #9
		
		WriteByte(PremiumMidnightRoar, 99, true)   -- Premium Midnight Roar #0
		WriteByte(PremiumMidnightRoar+1, 99, true) -- Premium Midnight Roar #1
		WriteByte(PremiumMidnightRoar+2, 99, true) -- Premium Midnight Roar #2
		WriteByte(PremiumMidnightRoar+3, 99, true) -- Premium Midnight Roar #3
		WriteByte(PremiumMidnightRoar+4, 99, true) -- Premium Midnight Roar #4
		WriteByte(PremiumMidnightRoar+5, 99, true) -- Premium Midnight Roar #5
		WriteByte(PremiumMidnightRoar+6, 99, true) -- Premium Midnight Roar #6
		WriteByte(PremiumMidnightRoar+7, 99, true) -- Premium Midnight Roar #7
		WriteByte(PremiumMidnightRoar+8, 99, true) -- Premium Midnight Roar #8
		WriteByte(PremiumMidnightRoar+9, 99, true) -- Premium Midnight Roar #9
		
		WriteByte(PremiumMaverickFlare, 99, true)   -- Premium Maverick Flare #0
		WriteByte(PremiumMaverickFlare+1, 99, true) -- Premium Maverick Flare #1
		WriteByte(PremiumMaverickFlare+2, 99, true) -- Premium Maverick Flare #2
		WriteByte(PremiumMaverickFlare+3, 99, true) -- Premium Maverick Flare #3
		WriteByte(PremiumMaverickFlare+4, 99, true) -- Premium Maverick Flare #4
		WriteByte(PremiumMaverickFlare+5, 99, true) -- Premium Maverick Flare #5
		WriteByte(PremiumMaverickFlare+6, 99, true) -- Premium Maverick Flare #6
		WriteByte(PremiumMaverickFlare+7, 99, true) -- Premium Maverick Flare #7
		WriteByte(PremiumMaverickFlare+8, 99, true) -- Premium Maverick Flare #8
		WriteByte(PremiumMaverickFlare+9, 99, true) -- Premium Maverick Flare #9
		
		WriteByte(PremiumTwoBecomeOne, 99, true)   -- Premium Two Become One #0
		WriteByte(PremiumTwoBecomeOne+1, 99, true) -- Premium Two Become One #1
		WriteByte(PremiumTwoBecomeOne+2, 99, true) -- Premium Two Become One #2
		WriteByte(PremiumTwoBecomeOne+3, 99, true) -- Premium Two Become One #3
		WriteByte(PremiumTwoBecomeOne+4, 99, true) -- Premium Two Become One #4
		WriteByte(PremiumTwoBecomeOne+5, 99, true) -- Premium Two Become One #5
		WriteByte(PremiumTwoBecomeOne+6, 99, true) -- Premium Two Become One #6
		WriteByte(PremiumTwoBecomeOne+7, 99, true) -- Premium Two Become One #7
		WriteByte(PremiumTwoBecomeOne+8, 99, true) -- Premium Two Become One #8
		WriteByte(PremiumTwoBecomeOne+9, 99, true) -- Premium Two Become One #9
		
		WriteByte(PremiumBondofFlame, 99, true)   -- Premium Bond of Flame #0
		WriteByte(PremiumBondofFlame+1, 99, true) -- Premium Bond of Flame #1
		WriteByte(PremiumBondofFlame+2, 99, true) -- Premium Bond of Flame #2
		WriteByte(PremiumBondofFlame+3, 99, true) -- Premium Bond of Flame #3
		WriteByte(PremiumBondofFlame+4, 99, true) -- Premium Bond of Flame #4
		WriteByte(PremiumBondofFlame+5, 99, true) -- Premium Bond of Flame #5
		WriteByte(PremiumBondofFlame+6, 99, true) -- Premium Bond of Flame #6
		WriteByte(PremiumBondofFlame+7, 99, true) -- Premium Bond of Flame #7
		WriteByte(PremiumBondofFlame+8, 99, true) -- Premium Bond of Flame #8
		WriteByte(PremiumBondofFlame+9, 99, true) -- Premium Bond of Flame #9
		
		WriteByte(Fire, 99, true)   -- Fire #0
		WriteByte(Fire+1, 99, true) -- Fire #1
		WriteByte(Fire+2, 99, true) -- Fire #2
		WriteByte(Fire+3, 99, true) -- Fire #3
		WriteByte(Fire+4, 99, true) -- Fire #4
		WriteByte(Fire+5, 99, true) -- Fire #5
		WriteByte(Fire+6, 99, true) -- Fire #6
		WriteByte(Fire+7, 99, true) -- Fire #7
		WriteByte(Fire+8, 99, true) -- Fire #8
		WriteByte(Fire+9, 99, true) -- Fire #9
		
		WriteByte(Blizzard, 99, true)   -- Blizzard #0
		WriteByte(Blizzard+1, 99, true) -- Blizzard #1
		WriteByte(Blizzard+2, 99, true) -- Blizzard #2
		WriteByte(Blizzard+3, 99, true) -- Blizzard #3
		WriteByte(Blizzard+4, 99, true) -- Blizzard #4
		WriteByte(Blizzard+5, 99, true) -- Blizzard #5
		WriteByte(Blizzard+6, 99, true) -- Blizzard #6
		WriteByte(Blizzard+7, 99, true) -- Blizzard #7
		WriteByte(Blizzard+8, 99, true) -- Blizzard #8
		WriteByte(Blizzard+9, 99, true) -- Blizzard #9
		
		WriteByte(Thunder, 99, true)   -- Thunder #0
		WriteByte(Thunder+1, 99, true) -- Thunder #1
		WriteByte(Thunder+2, 99, true) -- Thunder #2
		WriteByte(Thunder+3, 99, true) -- Thunder #3
		WriteByte(Thunder+4, 99, true) -- Thunder #4
		WriteByte(Thunder+5, 99, true) -- Thunder #5
		WriteByte(Thunder+6, 99, true) -- Thunder #6
		WriteByte(Thunder+7, 99, true) -- Thunder #7
		WriteByte(Thunder+8, 99, true) -- Thunder #8
		WriteByte(Thunder+9, 99, true) -- Thunder #9
		
		WriteByte(Cure, 99, true)   -- Cure #0
		WriteByte(Cure+1, 99, true) -- Cure #1
		WriteByte(Cure+2, 99, true) -- Cure #2
		WriteByte(Cure+3, 99, true) -- Cure #3
		WriteByte(Cure+4, 99, true) -- Cure #4
		WriteByte(Cure+5, 99, true) -- Cure #5
		WriteByte(Cure+6, 99, true) -- Cure #6
		WriteByte(Cure+7, 99, true) -- Cure #7
		WriteByte(Cure+8, 99, true) -- Cure #8
		WriteByte(Cure+9, 99, true) -- Cure #9
		
		WriteByte(Gravity, 99, true)   -- Gravity #0
		WriteByte(Gravity+1, 99, true) -- Gravity #1
		WriteByte(Gravity+2, 99, true) -- Gravity #2
		WriteByte(Gravity+3, 99, true) -- Gravity #3
		WriteByte(Gravity+4, 99, true) -- Gravity #4
		WriteByte(Gravity+5, 99, true) -- Gravity #5
		WriteByte(Gravity+6, 99, true) -- Gravity #6
		WriteByte(Gravity+7, 99, true) -- Gravity #7
		WriteByte(Gravity+8, 99, true) -- Gravity #8
		WriteByte(Gravity+9, 99, true) -- Gravity #9
		
		WriteByte(Stop, 99, true)   -- Stop #0
		WriteByte(Stop+1, 99, true) -- Stop #1
		WriteByte(Stop+2, 99, true) -- Stop #2
		WriteByte(Stop+3, 99, true) -- Stop #3
		WriteByte(Stop+4, 99, true) -- Stop #4
		WriteByte(Stop+5, 99, true) -- Stop #5
		WriteByte(Stop+6, 99, true) -- Stop #6
		WriteByte(Stop+7, 99, true) -- Stop #7
		WriteByte(Stop+8, 99, true) -- Stop #8
		WriteByte(Stop+9, 99, true) -- Stop #9
		
		WriteByte(Aero, 99, true)   -- Aero #0
		WriteByte(Aero+1, 99, true) -- Aero #1
		WriteByte(Aero+2, 99, true) -- Aero #2
		WriteByte(Aero+3, 99, true) -- Aero #3
		WriteByte(Aero+4, 99, true) -- Aero #4
		WriteByte(Aero+5, 99, true) -- Aero #5
		WriteByte(Aero+6, 99, true) -- Aero #6
		WriteByte(Aero+7, 99, true) -- Aero #7
		WriteByte(Aero+8, 99, true) -- Aero #8
		WriteByte(Aero+9, 99, true) -- Aero #9
		
		WriteByte(UnkownMagic1, 99, true)   -- Unkown Magic 1 #0
		WriteByte(UnkownMagic1+1, 99, true) -- Unkown Magic 1 #1
		WriteByte(UnkownMagic1+2, 99, true) -- Unkown Magic 1 #2
		WriteByte(UnkownMagic1+3, 99, true) -- Unkown Magic 1 #3
		WriteByte(UnkownMagic1+4, 99, true) -- Unkown Magic 1 #4
		WriteByte(UnkownMagic1+5, 99, true) -- Unkown Magic 1 #5
		WriteByte(UnkownMagic1+6, 99, true) -- Unkown Magic 1 #6
		WriteByte(UnkownMagic1+7, 99, true) -- Unkown Magic 1 #7
		WriteByte(UnkownMagic1+8, 99, true) -- Unkown Magic 1 #8
		WriteByte(UnkownMagic1+9, 99, true) -- Unkown Magic 1 #9
		
		WriteByte(UnkownMagic2, 99, true)   -- Unkown Magic 2 #0
		WriteByte(UnkownMagic2+1, 99, true) -- Unkown Magic 2 #1
		WriteByte(UnkownMagic2+2, 99, true) -- Unkown Magic 2 #2
		WriteByte(UnkownMagic2+3, 99, true) -- Unkown Magic 2 #3
		WriteByte(UnkownMagic2+4, 99, true) -- Unkown Magic 2 #4
		WriteByte(UnkownMagic2+5, 99, true) -- Unkown Magic 2 #5
		WriteByte(UnkownMagic2+6, 99, true) -- Unkown Magic 2 #6
		WriteByte(UnkownMagic2+7, 99, true) -- Unkown Magic 2 #7
		WriteByte(UnkownMagic2+8, 99, true) -- Unkown Magic 2 #8
		WriteByte(UnkownMagic2+9, 99, true) -- Unkown Magic 2 #9
		
		WriteByte(Simba, 99, true)   -- Simba #0
		WriteByte(Simba+1, 99, true) -- Simba #1
		WriteByte(Simba+2, 99, true) -- Simba #2
		WriteByte(Simba+3, 99, true) -- Simba #3
		WriteByte(Simba+4, 99, true) -- Simba #4
		WriteByte(Simba+5, 99, true) -- Simba #5
		WriteByte(Simba+6, 99, true) -- Simba #6
		WriteByte(Simba+7, 99, true) -- Simba #7
		WriteByte(Simba+8, 99, true) -- Simba #8
		WriteByte(Simba+9, 99, true) -- Simba #9
		
		WriteByte(Genie, 99, true)   -- Genie #0
		WriteByte(Genie+1, 99, true) -- Genie #1
		WriteByte(Genie+2, 99, true) -- Genie #2
		WriteByte(Genie+3, 99, true) -- Genie #3
		WriteByte(Genie+4, 99, true) -- Genie #4
		WriteByte(Genie+5, 99, true) -- Genie #5
		WriteByte(Genie+6, 99, true) -- Genie #6
		WriteByte(Genie+7, 99, true) -- Genie #7
		WriteByte(Genie+8, 99, true) -- Genie #8
		WriteByte(Genie+9, 99, true) -- Genie #9
		
		WriteByte(Bambi, 99, true)   -- Bambi #0
		WriteByte(Bambi+1, 99, true) -- Bambi #1
		WriteByte(Bambi+2, 99, true) -- Bambi #2
		WriteByte(Bambi+3, 99, true) -- Bambi #3
		WriteByte(Bambi+4, 99, true) -- Bambi #4
		WriteByte(Bambi+5, 99, true) -- Bambi #5
		WriteByte(Bambi+6, 99, true) -- Bambi #6
		WriteByte(Bambi+7, 99, true) -- Bambi #7
		WriteByte(Bambi+8, 99, true) -- Bambi #8
		WriteByte(Bambi+9, 99, true) -- Bambi #9
		
		WriteByte(Dumbo, 99, true)   -- Dumbo #0
		WriteByte(Dumbo+1, 99, true) -- Dumbo #1
		WriteByte(Dumbo+2, 99, true) -- Dumbo #2
		WriteByte(Dumbo+3, 99, true) -- Dumbo #3
		WriteByte(Dumbo+4, 99, true) -- Dumbo #4
		WriteByte(Dumbo+5, 99, true) -- Dumbo #5
		WriteByte(Dumbo+6, 99, true) -- Dumbo #6
		WriteByte(Dumbo+7, 99, true) -- Dumbo #7
		WriteByte(Dumbo+8, 99, true) -- Dumbo #8
		WriteByte(Dumbo+9, 99, true) -- Dumbo #9
		
		WriteByte(TinkerBell, 99, true)   -- Tinker Bell #0
		WriteByte(TinkerBell+1, 99, true) -- Tinker Bell #1
		WriteByte(TinkerBell+2, 99, true) -- Tinker Bell #2
		WriteByte(TinkerBell+3, 99, true) -- Tinker Bell #3
		WriteByte(TinkerBell+4, 99, true) -- Tinker Bell #4
		WriteByte(TinkerBell+5, 99, true) -- Tinker Bell #5
		WriteByte(TinkerBell+6, 99, true) -- Tinker Bell #6
		WriteByte(TinkerBell+7, 99, true) -- Tinker Bell #7
		WriteByte(TinkerBell+8, 99, true) -- Tinker Bell #8
		WriteByte(TinkerBell+9, 99, true) -- Tinker Bell #9
		
		WriteByte(Mushu, 99, true)   -- Mushu #0
		WriteByte(Mushu+1, 99, true) -- Mushu #1
		WriteByte(Mushu+2, 99, true) -- Mushu #2
		WriteByte(Mushu+3, 99, true) -- Mushu #3
		WriteByte(Mushu+4, 99, true) -- Mushu #4
		WriteByte(Mushu+5, 99, true) -- Mushu #5
		WriteByte(Mushu+6, 99, true) -- Mushu #6
		WriteByte(Mushu+7, 99, true) -- Mushu #7
		WriteByte(Mushu+8, 99, true) -- Mushu #8
		WriteByte(Mushu+9, 99, true) -- Mushu #9
		
		WriteByte(Cloud, 99, true)   -- Cloud #0
		WriteByte(Cloud+1, 99, true) -- Cloud #1
		WriteByte(Cloud+2, 99, true) -- Cloud #2
		WriteByte(Cloud+3, 99, true) -- Cloud #3
		WriteByte(Cloud+4, 99, true) -- Cloud #4
		WriteByte(Cloud+5, 99, true) -- Cloud #5
		WriteByte(Cloud+6, 99, true) -- Cloud #6
		WriteByte(Cloud+7, 99, true) -- Cloud #7
		WriteByte(Cloud+8, 99, true) -- Cloud #8
		WriteByte(Cloud+9, 99, true) -- Cloud #9
		
		WriteByte(PremiumFire, 99, true)   -- Premium Fire #0
		WriteByte(PremiumFire+1, 99, true) -- Premium Fire #1
		WriteByte(PremiumFire+2, 99, true) -- Premium Fire #2
		WriteByte(PremiumFire+3, 99, true) -- Premium Fire #3
		WriteByte(PremiumFire+4, 99, true) -- Premium Fire #4
		WriteByte(PremiumFire+5, 99, true) -- Premium Fire #5
		WriteByte(PremiumFire+6, 99, true) -- Premium Fire #6
		WriteByte(PremiumFire+7, 99, true) -- Premium Fire #7
		WriteByte(PremiumFire+8, 99, true) -- Premium Fire #8
		WriteByte(PremiumFire+9, 99, true) -- Premium Fire #9
		
		WriteByte(PremiumBlizzard, 99, true)   -- Premium Blizzard #0
		WriteByte(PremiumBlizzard+1, 99, true) -- Premium Blizzard #1
		WriteByte(PremiumBlizzard+2, 99, true) -- Premium Blizzard #2
		WriteByte(PremiumBlizzard+3, 99, true) -- Premium Blizzard #3
		WriteByte(PremiumBlizzard+4, 99, true) -- Premium Blizzard #4
		WriteByte(PremiumBlizzard+5, 99, true) -- Premium Blizzard #5
		WriteByte(PremiumBlizzard+6, 99, true) -- Premium Blizzard #6
		WriteByte(PremiumBlizzard+7, 99, true) -- Premium Blizzard #7
		WriteByte(PremiumBlizzard+8, 99, true) -- Premium Blizzard #8
		WriteByte(PremiumBlizzard+9, 99, true) -- Premium Blizzard #9
		
		WriteByte(PremiumThunder, 99, true)   -- Premium Thunder #0
		WriteByte(PremiumThunder+1, 99, true) -- Premium Thunder #1
		WriteByte(PremiumThunder+2, 99, true) -- Premium Thunder #2
		WriteByte(PremiumThunder+3, 99, true) -- Premium Thunder #3
		WriteByte(PremiumThunder+4, 99, true) -- Premium Thunder #4
		WriteByte(PremiumThunder+5, 99, true) -- Premium Thunder #5
		WriteByte(PremiumThunder+6, 99, true) -- Premium Thunder #6
		WriteByte(PremiumThunder+7, 99, true) -- Premium Thunder #7
		WriteByte(PremiumThunder+8, 99, true) -- Premium Thunder #8
		WriteByte(PremiumThunder+9, 99, true) -- Premium Thunder #9
		
		WriteByte(PremiumCure, 99, true)   -- Premium Cure #0
		WriteByte(PremiumCure+1, 99, true) -- Premium Cure #1
		WriteByte(PremiumCure+2, 99, true) -- Premium Cure #2
		WriteByte(PremiumCure+3, 99, true) -- Premium Cure #3
		WriteByte(PremiumCure+4, 99, true) -- Premium Cure #4
		WriteByte(PremiumCure+5, 99, true) -- Premium Cure #5
		WriteByte(PremiumCure+6, 99, true) -- Premium Cure #6
		WriteByte(PremiumCure+7, 99, true) -- Premium Cure #7
		WriteByte(PremiumCure+8, 99, true) -- Premium Cure #8
		WriteByte(PremiumCure+9, 99, true) -- Premium Cure #9
		
		WriteByte(PremiumGravity, 99, true)   -- Premium Gravity #0
		WriteByte(PremiumGravity+1, 99, true) -- Premium Gravity #1
		WriteByte(PremiumGravity+2, 99, true) -- Premium Gravity #2
		WriteByte(PremiumGravity+3, 99, true) -- Premium Gravity #3
		WriteByte(PremiumGravity+4, 99, true) -- Premium Gravity #4
		WriteByte(PremiumGravity+5, 99, true) -- Premium Gravity #5
		WriteByte(PremiumGravity+6, 99, true) -- Premium Gravity #6
		WriteByte(PremiumGravity+7, 99, true) -- Premium Gravity #7
		WriteByte(PremiumGravity+8, 99, true) -- Premium Gravity #8
		WriteByte(PremiumGravity+9, 99, true) -- Premium Gravity #9
		
		WriteByte(PremiumStop, 99, true)   -- Premium Stop #0
		WriteByte(PremiumStop+1, 99, true) -- Premium Stop #1
		WriteByte(PremiumStop+2, 99, true) -- Premium Stop #2
		WriteByte(PremiumStop+3, 99, true) -- Premium Stop #3
		WriteByte(PremiumStop+4, 99, true) -- Premium Stop #4
		WriteByte(PremiumStop+5, 99, true) -- Premium Stop #5
		WriteByte(PremiumStop+6, 99, true) -- Premium Stop #6
		WriteByte(PremiumStop+7, 99, true) -- Premium Stop #7
		WriteByte(PremiumStop+8, 99, true) -- Premium Stop #8
		WriteByte(PremiumStop+9, 99, true) -- Premium Stop #9
		
		WriteByte(PremiumAero, 99, true)   -- Premium Aero #0
		WriteByte(PremiumAero+1, 99, true) -- Premium Aero #1
		WriteByte(PremiumAero+2, 99, true) -- Premium Aero #2
		WriteByte(PremiumAero+3, 99, true) -- Premium Aero #3
		WriteByte(PremiumAero+4, 99, true) -- Premium Aero #4
		WriteByte(PremiumAero+5, 99, true) -- Premium Aero #5
		WriteByte(PremiumAero+6, 99, true) -- Premium Aero #6
		WriteByte(PremiumAero+7, 99, true) -- Premium Aero #7
		WriteByte(PremiumAero+8, 99, true) -- Premium Aero #8
		WriteByte(PremiumAero+9, 99, true) -- Premium Aero #9
		
		WriteByte(PremiumUnkownMagic1, 99, true)   -- Premium Unkown Magic 1 #0
		WriteByte(PremiumUnkownMagic1+1, 99, true) -- Premium Unkown Magic 1 #1
		WriteByte(PremiumUnkownMagic1+2, 99, true) -- Premium Unkown Magic 1 #2
		WriteByte(PremiumUnkownMagic1+3, 99, true) -- Premium Unkown Magic 1 #3
		WriteByte(PremiumUnkownMagic1+4, 99, true) -- Premium Unkown Magic 1 #4
		WriteByte(PremiumUnkownMagic1+5, 99, true) -- Premium Unkown Magic 1 #5
		WriteByte(PremiumUnkownMagic1+6, 99, true) -- Premium Unkown Magic 1 #6
		WriteByte(PremiumUnkownMagic1+7, 99, true) -- Premium Unkown Magic 1 #7
		WriteByte(PremiumUnkownMagic1+8, 99, true) -- Premium Unkown Magic 1 #8
		WriteByte(PremiumUnkownMagic1+9, 99, true) -- Premium Unkown Magic 1 #9
		
		WriteByte(PremiumUnkownMagic2, 99, true)   -- Premium Unkown Magic 2 #0
		WriteByte(PremiumUnkownMagic2+1, 99, true) -- Premium Unkown Magic 2 #1
		WriteByte(PremiumUnkownMagic2+2, 99, true) -- Premium Unkown Magic 2 #2
		WriteByte(PremiumUnkownMagic2+3, 99, true) -- Premium Unkown Magic 2 #3
		WriteByte(PremiumUnkownMagic2+4, 99, true) -- Premium Unkown Magic 2 #4
		WriteByte(PremiumUnkownMagic2+5, 99, true) -- Premium Unkown Magic 2 #5
		WriteByte(PremiumUnkownMagic2+6, 99, true) -- Premium Unkown Magic 2 #6
		WriteByte(PremiumUnkownMagic2+7, 99, true) -- Premium Unkown Magic 2 #7
		WriteByte(PremiumUnkownMagic2+8, 99, true) -- Premium Unkown Magic 2 #8
		WriteByte(PremiumUnkownMagic2+9, 99, true) -- Premium Unkown Magic 2 #9
		
		WriteByte(PremiumSimba, 99, true)   -- Premium Simba #0
		WriteByte(PremiumSimba+1, 99, true) -- Premium Simba #1
		WriteByte(PremiumSimba+2, 99, true) -- Premium Simba #2
		WriteByte(PremiumSimba+3, 99, true) -- Premium Simba #3
		WriteByte(PremiumSimba+4, 99, true) -- Premium Simba #4
		WriteByte(PremiumSimba+5, 99, true) -- Premium Simba #5
		WriteByte(PremiumSimba+6, 99, true) -- Premium Simba #6
		WriteByte(PremiumSimba+7, 99, true) -- Premium Simba #7
		WriteByte(PremiumSimba+8, 99, true) -- Premium Simba #8
		WriteByte(PremiumSimba+9, 99, true) -- Premium Simba #9
		
		WriteByte(PremiumGenie, 99, true)   -- Premium Genie #0
		WriteByte(PremiumGenie+1, 99, true) -- Premium Genie #1
		WriteByte(PremiumGenie+2, 99, true) -- Premium Genie #2
		WriteByte(PremiumGenie+3, 99, true) -- Premium Genie #3
		WriteByte(PremiumGenie+4, 99, true) -- Premium Genie #4
		WriteByte(PremiumGenie+5, 99, true) -- Premium Genie #5
		WriteByte(PremiumGenie+6, 99, true) -- Premium Genie #6
		WriteByte(PremiumGenie+7, 99, true) -- Premium Genie #7
		WriteByte(PremiumGenie+8, 99, true) -- Premium Genie #8
		WriteByte(PremiumGenie+9, 99, true) -- Premium Genie #9
		
		WriteByte(PremiumBambi, 99, true)   -- Premium Bambi #0
		WriteByte(PremiumBambi+1, 99, true) -- Premium Bambi #1
		WriteByte(PremiumBambi+2, 99, true) -- Premium Bambi #2
		WriteByte(PremiumBambi+3, 99, true) -- Premium Bambi #3
		WriteByte(PremiumBambi+4, 99, true) -- Premium Bambi #4
		WriteByte(PremiumBambi+5, 99, true) -- Premium Bambi #5
		WriteByte(PremiumBambi+6, 99, true) -- Premium Bambi #6
		WriteByte(PremiumBambi+7, 99, true) -- Premium Bambi #7
		WriteByte(PremiumBambi+8, 99, true) -- Premium Bambi #8
		WriteByte(PremiumBambi+9, 99, true) -- Premium Bambi #9
		
		WriteByte(PremiumDumbo, 99, true)   -- Premium Dumbo #0
		WriteByte(PremiumDumbo+1, 99, true) -- Premium Dumbo #1
		WriteByte(PremiumDumbo+2, 99, true) -- Premium Dumbo #2
		WriteByte(PremiumDumbo+3, 99, true) -- Premium Dumbo #3
		WriteByte(PremiumDumbo+4, 99, true) -- Premium Dumbo #4
		WriteByte(PremiumDumbo+5, 99, true) -- Premium Dumbo #5
		WriteByte(PremiumDumbo+6, 99, true) -- Premium Dumbo #6
		WriteByte(PremiumDumbo+7, 99, true) -- Premium Dumbo #7
		WriteByte(PremiumDumbo+8, 99, true) -- Premium Dumbo #8
		WriteByte(PremiumDumbo+9, 99, true) -- Premium Dumbo #9
		
		WriteByte(PremiumTinkerBell, 99, true)   -- Premium Tinker Bell #0
		WriteByte(PremiumTinkerBell+1, 99, true) -- Premium Tinker Bell #1
		WriteByte(PremiumTinkerBell+2, 99, true) -- Premium Tinker Bell #2
		WriteByte(PremiumTinkerBell+3, 99, true) -- Premium Tinker Bell #3
		WriteByte(PremiumTinkerBell+4, 99, true) -- Premium Tinker Bell #4
		WriteByte(PremiumTinkerBell+5, 99, true) -- Premium Tinker Bell #5
		WriteByte(PremiumTinkerBell+6, 99, true) -- Premium Tinker Bell #6
		WriteByte(PremiumTinkerBell+7, 99, true) -- Premium Tinker Bell #7
		WriteByte(PremiumTinkerBell+8, 99, true) -- Premium Tinker Bell #8
		WriteByte(PremiumTinkerBell+9, 99, true) -- Premium Tinker Bell #9
		
		WriteByte(PremiumMushu, 99, true)   -- Premium Mushu #0
		WriteByte(PremiumMushu+1, 99, true) -- Premium Mushu #1
		WriteByte(PremiumMushu+2, 99, true) -- Premium Mushu #2
		WriteByte(PremiumMushu+3, 99, true) -- Premium Mushu #3
		WriteByte(PremiumMushu+4, 99, true) -- Premium Mushu #4
		WriteByte(PremiumMushu+5, 99, true) -- Premium Mushu #5
		WriteByte(PremiumMushu+6, 99, true) -- Premium Mushu #6
		WriteByte(PremiumMushu+7, 99, true) -- Premium Mushu #7
		WriteByte(PremiumMushu+8, 99, true) -- Premium Mushu #8
		WriteByte(PremiumMushu+9, 99, true) -- Premium Mushu #9
		
		WriteByte(PremiumCloud, 99, true)   -- Premium Cloud #0
		WriteByte(PremiumCloud+1, 99, true) -- Premium Cloud #1
		WriteByte(PremiumCloud+2, 99, true) -- Premium Cloud #2
		WriteByte(PremiumCloud+3, 99, true) -- Premium Cloud #3
		WriteByte(PremiumCloud+4, 99, true) -- Premium Cloud #4
		WriteByte(PremiumCloud+5, 99, true) -- Premium Cloud #5
		WriteByte(PremiumCloud+6, 99, true) -- Premium Cloud #6
		WriteByte(PremiumCloud+7, 99, true) -- Premium Cloud #7
		WriteByte(PremiumCloud+8, 99, true) -- Premium Cloud #8
		WriteByte(PremiumCloud+9, 99, true) -- Premium Cloud #9
		
		WriteByte(Potion, 99, true)   -- Potion #0
		WriteByte(Potion+1, 99, true) -- Potion #1
		WriteByte(Potion+2, 99, true) -- Potion #2
		WriteByte(Potion+3, 99, true) -- Potion #3
		WriteByte(Potion+4, 99, true) -- Potion #4
		WriteByte(Potion+5, 99, true) -- Potion #5
		WriteByte(Potion+6, 99, true) -- Potion #6
		WriteByte(Potion+7, 99, true) -- Potion #7
		WriteByte(Potion+8, 99, true) -- Potion #8
		WriteByte(Potion+9, 99, true) -- Potion #9
		
		WriteByte(HiPotion, 99, true)   -- Hi-Potion #0
		WriteByte(HiPotion+1, 99, true) -- Hi-Potion #1
		WriteByte(HiPotion+2, 99, true) -- Hi-Potion #2
		WriteByte(HiPotion+3, 99, true) -- Hi-Potion #3
		WriteByte(HiPotion+4, 99, true) -- Hi-Potion #4
		WriteByte(HiPotion+5, 99, true) -- Hi-Potion #5
		WriteByte(HiPotion+6, 99, true) -- Hi-Potion #6
		WriteByte(HiPotion+7, 99, true) -- Hi-Potion #7
		WriteByte(HiPotion+8, 99, true) -- Hi-Potion #8
		WriteByte(HiPotion+9, 99, true) -- Hi-Potion #9
		
		WriteByte(MegaPotion, 99, true)   -- Mega-Potion #0
		WriteByte(MegaPotion+1, 99, true) -- Mega-Potion #1
		WriteByte(MegaPotion+2, 99, true) -- Mega-Potion #2
		WriteByte(MegaPotion+3, 99, true) -- Mega-Potion #3
		WriteByte(MegaPotion+4, 99, true) -- Mega-Potion #4
		WriteByte(MegaPotion+5, 99, true) -- Mega-Potion #5
		WriteByte(MegaPotion+6, 99, true) -- Mega-Potion #6
		WriteByte(MegaPotion+7, 99, true) -- Mega-Potion #7
		WriteByte(MegaPotion+8, 99, true) -- Mega-Potion #8
		WriteByte(MegaPotion+9, 99, true) -- Mega-Potion #9
		
		WriteByte(Ether, 99, true)   -- Ether #0
		WriteByte(Ether+1, 99, true) -- Ether #1
		WriteByte(Ether+2, 99, true) -- Ether #2
		WriteByte(Ether+3, 99, true) -- Ether #3
		WriteByte(Ether+4, 99, true) -- Ether #4
		WriteByte(Ether+5, 99, true) -- Ether #5
		WriteByte(Ether+6, 99, true) -- Ether #6
		WriteByte(Ether+7, 99, true) -- Ether #7
		WriteByte(Ether+8, 99, true) -- Ether #8
		WriteByte(Ether+9, 99, true) -- Ether #9
		
		WriteByte(MegaEther, 99, true)   -- Mega-Ether #0
		WriteByte(MegaEther+1, 99, true) -- Mega-Ether #1
		WriteByte(MegaEther+2, 99, true) -- Mega-Ether #2
		WriteByte(MegaEther+3, 99, true) -- Mega-Ether #3
		WriteByte(MegaEther+4, 99, true) -- Mega-Ether #4
		WriteByte(MegaEther+5, 99, true) -- Mega-Ether #5
		WriteByte(MegaEther+6, 99, true) -- Mega-Ether #6
		WriteByte(MegaEther+7, 99, true) -- Mega-Ether #7
		WriteByte(MegaEther+8, 99, true) -- Mega-Ether #8
		WriteByte(MegaEther+9, 99, true) -- Mega-Ether #9
		
		WriteByte(Elixir, 99, true)   -- Elixir #0
		WriteByte(Elixir+1, 99, true) -- Elixir #1
		WriteByte(Elixir+2, 99, true) -- Elixir #2
		WriteByte(Elixir+3, 99, true) -- Elixir #3
		WriteByte(Elixir+4, 99, true) -- Elixir #4
		WriteByte(Elixir+5, 99, true) -- Elixir #5
		WriteByte(Elixir+6, 99, true) -- Elixir #6
		WriteByte(Elixir+7, 99, true) -- Elixir #7
		WriteByte(Elixir+8, 99, true) -- Elixir #8
		WriteByte(Elixir+9, 99, true) -- Elixir #9
		
		WriteByte(Megalixir, 99, true)   -- Megalixir #0
		WriteByte(Megalixir+1, 99, true) -- Megalixir #1
		WriteByte(Megalixir+2, 99, true) -- Megalixir #2
		WriteByte(Megalixir+3, 99, true) -- Megalixir #3
		WriteByte(Megalixir+4, 99, true) -- Megalixir #4
		WriteByte(Megalixir+5, 99, true) -- Megalixir #5
		WriteByte(Megalixir+6, 99, true) -- Megalixir #6
		WriteByte(Megalixir+7, 99, true) -- Megalixir #7
		WriteByte(Megalixir+8, 99, true) -- Megalixir #8
		WriteByte(Megalixir+9, 99, true) -- Megalixir #9
		
		WriteByte(EnemyCards, 99, true)      -- Shadow
		WriteByte(EnemyCards+1, 99, true)    -- Soldier
		WriteByte(EnemyCards+2, 99, true)    -- Large Body
		WriteByte(EnemyCards+3, 99, true)    -- Red Nocturne
		WriteByte(EnemyCards+4, 99, true)    -- Blue Rhapsody
		WriteByte(EnemyCards+5, 99, true)    -- Yellow Opera
		WriteByte(EnemyCards+6, 99, true)    -- Green Requiem
		WriteByte(EnemyCards+7, 99, true)    -- Powerwild
		WriteByte(EnemyCards+8, 99, true)    -- Bouncywild
		WriteByte(EnemyCards+9, 99, true)    -- Air Solider
		WriteByte(EnemyCards+10, 99, true)   -- Bandit
		WriteByte(EnemyCards+11, 99, true)   -- Fat Bandit
		WriteByte(EnemyCards+12, 99, true)    -- Barrel Spider
		WriteByte(EnemyCards+13, 99, true)    -- Search Ghost
		WriteByte(EnemyCards+14, 99, true)    -- Sea Neon
		WriteByte(EnemyCards+15, 99, true)    -- Screwdriver
		WriteByte(EnemyCards+16, 99, true)    -- Aquatank
		WriteByte(EnemyCards+17, 99, true)    -- Wight Knight
		WriteByte(EnemyCards+18, 99, true)    -- Gargoyle
		WriteByte(EnemyCards+19, 99, true)    -- Pirate
		WriteByte(EnemyCards+20, 99, true)    -- Air Pirate
		WriteByte(EnemyCards+21, 99, true)    -- Darkball 
		WriteByte(EnemyCards+22, 99, true)    -- Defender
		WriteByte(EnemyCards+23, 99, true)    -- Wyvern
		WriteByte(EnemyCards+24, 99, true)    -- Wizard
		WriteByte(EnemyCards+25, 99, true)    -- Neoshadow
		WriteByte(EnemyCards+26, 99, true)    -- White Mushroom
		WriteByte(EnemyCards+27, 99, true)    -- Black Fungus
		WriteByte(EnemyCards+28, 99, true)    -- Creeper Plant
		WriteByte(EnemyCards+29, 99, true)    -- Tornado Step 
		WriteByte(EnemyCards+30, 99, true)    -- Crescendo
		WriteByte(EnemyCards+31, 99, true)    -- Guard Armor
		WriteByte(EnemyCards+32, 99, true)    -- Parasite Cage
		WriteByte(EnemyCards+33, 99, true)    -- Trickmaster
		WriteByte(EnemyCards+34, 99, true)    -- Darkside
		WriteByte(EnemyCards+35, 99, true)    -- Card Soldier 
		WriteByte(EnemyCards+36, 99, true)    -- Hades
		WriteByte(EnemyCards+37, 99, true)    -- Jafar-Genie
		WriteByte(EnemyCards+38, 99, true)    -- Oogie Boogie
		WriteByte(EnemyCards+39, 99, true)    -- Ursula
		WriteByte(EnemyCards+40, 99, true)    -- Hook
		WriteByte(EnemyCards+41, 99, true)    -- Dragon Maleficent
		WriteByte(EnemyCards+42, 99, true)    -- Riku Replica
		WriteByte(EnemyCards+43, 99, true)    -- Axel
		WriteByte(EnemyCards+44, 99, true)    -- Larxene
		WriteByte(EnemyCards+45, 99, true)    -- Vexen
		WriteByte(EnemyCards+46, 99, true)    -- Marluxia
		WriteByte(EnemyCards+47, 99, true)    -- Lexaeus
		WriteByte(EnemyCards+48, 99, true)    -- Ansem
		WriteByte(EnemyCards+49, 99, true)    -- Zexion
		WriteByte(EnemyCards+50, 99, true)    -- Xemnas
		WriteByte(EnemyCards+51, 99, true)    -- Xigbar
		WriteByte(EnemyCards+52, 99, true)    -- Xaldin
		WriteByte(EnemyCards+53, 99, true)    -- Saix
		WriteByte(EnemyCards+54, 99, true)    -- Demyx
		WriteByte(EnemyCards+55, 99, true)    -- Luxord
		WriteByte(EnemyCards+56, 99, true)    -- Roxas
		WriteByte(EnemyCards+57, 99, true)    -- Gold Card
		WriteByte(EnemyCards+58, 99, true)    -- Platinum Card
		
		if ReadByte(JournalBattleCardFlags, true) <= 1 then   -- Kingdom Key Journal Flag
			WriteByte(JournalBattleCardFlags, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+1, true) <= 1 then -- Three Wishes Journal Flag
			WriteByte(JournalBattleCardFlags+1, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+2, true) <= 1 then -- Crabclaw Journal Flag
			WriteByte(JournalBattleCardFlags+2, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+3, true) <= 1 then -- Pumpkinhead Journal Flag
			WriteByte(JournalBattleCardFlags+3, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+4, true) <= 1 then -- Fairy Harp Journal Flag
			WriteByte(JournalBattleCardFlags+4, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+5, true) <= 1 then -- Wishing Star Journal Flag
			WriteByte(JournalBattleCardFlags+5, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+6, true) <= 1 then -- Spellbinder Journal Flag
			WriteByte(JournalBattleCardFlags+6, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+7, true) <= 1 then -- Metall Chocobo Journal Flag
			WriteByte(JournalBattleCardFlags+7, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+8, true) <= 1 then -- Olympia Journal Flag
			WriteByte(JournalBattleCardFlags+8, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+9, true) <= 1 then -- Lionheart Journal Flag
			WriteByte(JournalBattleCardFlags+9, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+10, true) <= 1 then -- Lady Luck Journal Flag
			WriteByte(JournalBattleCardFlags+10, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+11, true) <= 1 then -- Divine Rose Journal Flag
			WriteByte(JournalBattleCardFlags+11, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+12, true) <= 1 then -- Oathkeeper Journal Flag
			WriteByte(JournalBattleCardFlags+12, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+13, true) <= 1 then -- Oblivion Journal Flag
			WriteByte(JournalBattleCardFlags+13, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+14, true) <= 1 then -- Ultima Weapon Journal Flag
			WriteByte(JournalBattleCardFlags+14, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+15, true) <= 1 then -- Diamond Dust Journal Flag
			WriteByte(JournalBattleCardFlags+15, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+16, true) <= 1 then -- One Winged Angel Journal Flag
			WriteByte(JournalBattleCardFlags+16, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+17, true) <= 1 then -- Star Seeker Journal Flag
			WriteByte(JournalBattleCardFlags+17, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+18, true) <= 1 then -- Total Eclipse Journal Flag
			WriteByte(JournalBattleCardFlags+18, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+19, true) <= 1 then -- Midnight Roar Journal Flag
			WriteByte(JournalBattleCardFlags+19, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+20, true) <= 1 then -- Maverick Flare Journal Flag
			WriteByte(JournalBattleCardFlags+20, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+21, true) <= 1 then -- Two Become One Journal Flag
			WriteByte(JournalBattleCardFlags+21, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+22, true) <= 1 then -- Bond of Flame Journal Flag
			WriteByte(JournalBattleCardFlags+22, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+23, true) <= 1 then -- Fire Journal Flag
			WriteByte(JournalBattleCardFlags+23, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+24, true) <= 1 then -- Blizzard Journal Flag
			WriteByte(JournalBattleCardFlags+24, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+25, true) <= 1 then -- Thunder Journal Flag
			WriteByte(JournalBattleCardFlags+25, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+26, true) <= 1 then -- Cure Journal Flag
			WriteByte(JournalBattleCardFlags+26, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+27, true) <= 1 then -- Gravity Journal Flag
			WriteByte(JournalBattleCardFlags+27, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+28, true) <= 1 then -- Stop Journal Flag
			WriteByte(JournalBattleCardFlags+28, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+29, true) <= 1 then -- Aero Journal Flag
			WriteByte(JournalBattleCardFlags+29, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+30, true) <= 1 then -- Simba Journal Flag
			WriteByte(JournalBattleCardFlags+30, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+31, true) <= 1 then -- Genie Journal Flag
			WriteByte(JournalBattleCardFlags+31, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+32, true) <= 1 then -- Bambi Journal Flag
			WriteByte(JournalBattleCardFlags+32, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+33, true) <= 1 then -- Dumbo Journal Flag
			WriteByte(JournalBattleCardFlags+33, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+34, true) <= 1 then -- Tinker Bell Journal Flag
			WriteByte(JournalBattleCardFlags+34, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+35, true) <= 1 then -- Mushu Bell Journal Flag
			WriteByte(JournalBattleCardFlags+35, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+36, true) <= 1 then -- Cloud Journal Flag
			WriteByte(JournalBattleCardFlags+36, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+37, true) <= 1 then -- Potion Journal Flag
			WriteByte(JournalBattleCardFlags+37, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+38, true) <= 1 then -- Hi-Potion Journal Flag
			WriteByte(JournalBattleCardFlags+38, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+39, true) <= 1 then -- Mega-Potion Journal Flag
			WriteByte(JournalBattleCardFlags+39, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+40, true) <= 1 then -- Ether Journal Flag
			WriteByte(JournalBattleCardFlags+40, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+41, true) <= 1 then -- Mega-Ether Journal Flag
			WriteByte(JournalBattleCardFlags+41, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+42, true) <= 1 then -- Elixir Journal Flag
			WriteByte(JournalBattleCardFlags+42, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+43, true) <= 1 then -- Megalixir Journal Flag
			WriteByte(JournalBattleCardFlags+43, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+44, true) <= 1 then -- Donald Journal Flag
			WriteByte(JournalBattleCardFlags+44, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+45, true) <= 1 then -- Goofy Journal Flag
			WriteByte(JournalBattleCardFlags+45, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+46, true) <= 1 then -- Aladdin Journal Flag
			WriteByte(JournalBattleCardFlags+46, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+47, true) <= 1 then -- Ariel Journal Flag
			WriteByte(JournalBattleCardFlags+47, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+48, true) <= 1 then -- Jack Journal Flag
			WriteByte(JournalBattleCardFlags+48, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+49, true) <= 1 then -- Peter Pan Journal Flag
			WriteByte(JournalBattleCardFlags+49, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+50, true) <= 1 then -- Beast Journal Flag
			WriteByte(JournalBattleCardFlags+50, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+51, true) <= 1 then -- Pluto Journal Flag
			WriteByte(JournalBattleCardFlags+51, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+52, true) <= 1 then -- Shadow Journal Flag
			WriteByte(JournalBattleCardFlags+52, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+53, true) <= 1 then -- Soldier Journal Flag
			WriteByte(JournalBattleCardFlags+53, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+54, true) <= 1 then -- Powerwild Journal Flag
			WriteByte(JournalBattleCardFlags+54, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+55, true) <= 1 then -- Bouncywild Journal Flag
			WriteByte(JournalBattleCardFlags+55, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+56, true) <= 1 then -- Large Body Journal Flag
			WriteByte(JournalBattleCardFlags+56, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+57, true) <= 1 then -- Fat Bandit Journal Flag
			WriteByte(JournalBattleCardFlags+57, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+58, true) <= 1 then -- Sea Neon Journal Flag
			WriteByte(JournalBattleCardFlags+58, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+59, true) <= 1 then -- Bandit Journal Flag
			WriteByte(JournalBattleCardFlags+59, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+60, true) <= 1 then -- Pirate Journal Flag
			WriteByte(JournalBattleCardFlags+60, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+61, true) <= 1 then -- Red Nocturne Journal Flag
			WriteByte(JournalBattleCardFlags+61, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+62, true) <= 1 then -- Blue Rhapsody Journal Flag
			WriteByte(JournalBattleCardFlags+62, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+63, true) <= 1 then -- Yellow Opera Journal Flag
			WriteByte(JournalBattleCardFlags+63, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+64, true) <= 1 then -- Green Requiem Journal Flag
			WriteByte(JournalBattleCardFlags+64, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+65, true) <= 1 then -- Wizzard Journal Flag
			WriteByte(JournalBattleCardFlags+65, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+66, true) <= 1 then -- Air Soldier Journal Flag
			WriteByte(JournalBattleCardFlags+66, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+67, true) <= 1 then -- Barrel Spider Journal Flag
			WriteByte(JournalBattleCardFlags+67, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+68, true) <= 1 then -- Wight Knight Journal Flag
			WriteByte(JournalBattleCardFlags+68, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+69, true) <= 1 then -- Air Pirate Journal Flag
			WriteByte(JournalBattleCardFlags+69, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+70, true) <= 1 then -- Gargoyle Journal Flag
			WriteByte(JournalBattleCardFlags+70, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+71, true) <= 1 then -- Search Ghost Journal Flag
			WriteByte(JournalBattleCardFlags+71, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+72, true) <= 1 then -- Aquatank Journal Flag
			WriteByte(JournalBattleCardFlags+72, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+73, true) <= 1 then -- Screwdriver Journal Flag
			WriteByte(JournalBattleCardFlags+73, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+74, true) <= 1 then -- Wyvern Journal Flag
			WriteByte(JournalBattleCardFlags+74, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+75, true) <= 1 then -- Defender Journal Flag
			WriteByte(JournalBattleCardFlags+75, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+76, true) <= 1 then -- White Mushroom Journal Flag
			WriteByte(JournalBattleCardFlags+76, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+77, true) <= 1 then -- Black Fungus Journal Flag
			WriteByte(JournalBattleCardFlags+77, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+78, true) <= 1 then -- Creeper Plant Journal Flag
			WriteByte(JournalBattleCardFlags+78, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+79, true) <= 1 then -- Tornado Step Journal Flag
			WriteByte(JournalBattleCardFlags+79, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+80, true) <= 1 then -- Crescendo Journal Flag
			WriteByte(JournalBattleCardFlags+80, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+81, true) <= 1 then -- Neoshadow Journal Flag
			WriteByte(JournalBattleCardFlags+81, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+82, true) <= 1 then -- Guardarmor Journal Flag
			WriteByte(JournalBattleCardFlags+82, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+83, true) <= 1 then -- Hades Journal Flag
			WriteByte(JournalBattleCardFlags+83, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+84, true) <= 1 then -- Trickmaster Journal Flag
			WriteByte(JournalBattleCardFlags+84, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+85, true) <= 1 then -- Jafar-Genie Journal Flag
			WriteByte(JournalBattleCardFlags+85, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+86, true) <= 1 then -- Ursula Journal Flag
			WriteByte(JournalBattleCardFlags+86, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+87, true) <= 1 then -- Oogie Boogie Journal Flag
			WriteByte(JournalBattleCardFlags+87, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+88, true) <= 1 then -- Parasite Cage Journal Flag
			WriteByte(JournalBattleCardFlags+88, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+89, true) <= 1 then -- Hook Journal Flag
			WriteByte(JournalBattleCardFlags+89, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+90, true) <= 1 then -- Dragon Maleficent Journal Flag
			WriteByte(JournalBattleCardFlags+90, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+91, true) <= 1 then -- Dark Side Journal Flag
			WriteByte(JournalBattleCardFlags+91, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+92, true) <= 1 then -- Riku Replica Journal Flag
			WriteByte(JournalBattleCardFlags+92, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+93, true) <= 1 then -- Card Solider Journal Flag
			WriteByte(JournalBattleCardFlags+93, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+94, true) <= 1 then -- Ansem Journal Flag
			WriteByte(JournalBattleCardFlags+94, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+95, true) <= 1 then -- Xenmas Journal Flag
			WriteByte(JournalBattleCardFlags+95, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+96, true) <= 1 then -- Xigbar Journal Flag
			WriteByte(JournalBattleCardFlags+96, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+97, true) <= 1 then -- Xaldin Journal Flag
			WriteByte(JournalBattleCardFlags+97, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+98, true) <= 1 then -- Vexen Journal Flag
			WriteByte(JournalBattleCardFlags+98, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+99, true) <= 1 then -- Lexaeus Journal Flag
			WriteByte(JournalBattleCardFlags+99, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+100, true) <= 1 then -- Zexion Journal Flag
			WriteByte(JournalBattleCardFlags+100, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+101, true) <= 1 then -- Saix Journal Flag
			WriteByte(JournalBattleCardFlags+101, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+102, true) <= 1 then -- Axel Journal Flag
			WriteByte(JournalBattleCardFlags+102, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+103, true) <= 1 then -- Demyx Journal Flag
			WriteByte(JournalBattleCardFlags+103, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+104, true) <= 1 then -- Luxord Journal Flag
			WriteByte(JournalBattleCardFlags+104, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+105, true) <= 1 then -- Marluxia Journal Flag
			WriteByte(JournalBattleCardFlags+105, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+106, true) <= 1 then -- Larxene Journal Flag
			WriteByte(JournalBattleCardFlags+106, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+107, true) <= 1 then -- Roxas Journal Flag
			WriteByte(JournalBattleCardFlags+107, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+149, true) <= 1 then -- Mickey Journal Flag
			WriteByte(JournalBattleCardFlags+149, 4, true)
		end

		if ReadByte(JournalBattleCardFlags+150, true) <= 1 then -- Gold Card Journal Flag
			WriteByte(JournalBattleCardFlags+150, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+151, true) <= 1 then -- Platinum Card Journal Flag
			WriteByte(JournalBattleCardFlags+151, 4, true)
		end
end
end

---------- Steam JP Version
if stmjpgames == 1 then

IngameCheck = 0xAC4474
KingdomKey = ReadLong(0x87A7E8)+0x30, true
ThreeWishes = ReadLong(0x87A7E8)+0x3A , true
CrabClaw = ReadLong(0x87A7E8)+0x44, true
PumpkinHead = ReadLong(0x87A7E8)+0x4E, true
FairyHarp = ReadLong(0x87A7E8)+0x58, true
WishingStar = ReadLong(0x87A7E8)+0x62, true
Spellbinder = ReadLong(0x87A7E8)+0x6C, true
MetalChocobo = ReadLong(0x87A7E8)+0x76, true
Olympia = ReadLong(0x87A7E8)+0x80, true
LionHeart = ReadLong(0x87A7E8)+0x8A, true
LadyLuck = ReadLong(0x87A7E8)+0x94, true
DivineRose = ReadLong(0x87A7E8)+0x9E, true
OathKeeper = ReadLong(0x87A7E8)+0xA8, true
Oblivion = ReadLong(0x87A7E8)+0xB2, true
UltimaWeapon = ReadLong(0x87A7E8)+0xBC, true
DiamondDust = ReadLong(0x87A7E8)+0xC6, true
OneWingedAngel = ReadLong(0x87A7E8)+0xD0, true
SoulEater = ReadLong(0x87A7E8)+0xDA, true
StarSeeker = ReadLong(0x87A7E8)+0xE4, true
TotalEclipse = ReadLong(0x87A7E8)+0xEE, true
MidnightRoar = ReadLong(0x87A7E8)+0xF8, true
MaverickFlare = ReadLong(0x87A7E8)+0x102, true
TwoBecomeOne = ReadLong(0x87A7E8)+0x10C, true
BondofFlame = ReadLong(0x87A7E8)+0x116, true
PremiumKingdomKey = ReadLong(0x87A7E8)+0x120, true
PremiumThreeWishes = ReadLong(0x87A7E8)+0x12A , true
PremiumCrabClaw = ReadLong(0x87A7E8)+0x134, true
PremiumPumpkinHead = ReadLong(0x87A7E8)+0x13E, true
PremiumFairyHarp = ReadLong(0x87A7E8)+0x148, true
PremiumWishingStar = ReadLong(0x87A7E8)+0x152, true
PremiumSpellbinder = ReadLong(0x87A7E8)+0x15C, true
PremiumMetalChocobo = ReadLong(0x87A7E8)+0x166, true
PremiumOlympia = ReadLong(0x87A7E8)+0x170, true
PremiumLionHeart = ReadLong(0x87A7E8)+0x17A, true
PremiumLadyLuck = ReadLong(0x87A7E8)+0x184, true
PremiumDivineRose = ReadLong(0x87A7E8)+0x18E, true
PremiumOathKeeper = ReadLong(0x87A7E8)+0x198, true
PremiumOblivion = ReadLong(0x87A7E8)+0x1A2, true
PremiumUltimaWeapon = ReadLong(0x87A7E8)+0x1AC, true
PremiumDiamondDust = ReadLong(0x87A7E8)+0x1B6, true
PremiumOneWingedAngel = ReadLong(0x87A7E8)+0x1C0, true
PremiumSoulEater = ReadLong(0x87A7E8)+0x1CA, true
PremiumStarSeeker = ReadLong(0x87A7E8)+0x1D4, true
PremiumTotalEclipse = ReadLong(0x87A7E8)+0x1DE, true
PremiumMidnightRoar = ReadLong(0x87A7E8)+0x1E8, true
PremiumMaverickFlare = ReadLong(0x87A7E8)+0x1F2, true
PremiumTwoBecomeOne = ReadLong(0x87A7E8)+0x1FC, true
PremiumBondofFlame = ReadLong(0x87A7E8)+0x206, true
Fire = ReadLong(0x87A7E8)+0x210, true
Blizzard = ReadLong(0x87A7E8)+0x21A, true
Thunder = ReadLong(0x87A7E8)+0x224, true
Cure = ReadLong(0x87A7E8)+0x22E, true
Gravity = ReadLong(0x87A7E8)+0x238, true
Stop = ReadLong(0x87A7E8)+0x242, true
Aero = ReadLong(0x87A7E8)+0x24C, true
UnkownMagic1 = ReadLong(0x87A7E8)+0x256, true
UnkownMagic2 = ReadLong(0x87A7E8)+0x260, true
Simba = ReadLong(0x87A7E8)+0x26A, true
Genie = ReadLong(0x87A7E8)+0x274, true
Bambi = ReadLong(0x87A7E8)+0x27E, true
Dumbo = ReadLong(0x87A7E8)+0x288, true
TinkerBell = ReadLong(0x87A7E8)+0x292, true
Mushu = ReadLong(0x87A7E8)+0x29C, true
Cloud = ReadLong(0x87A7E8)+0x2A6, true
PremiumFire = ReadLong(0x87A7E8)+0x2B0, true
PremiumBlizzard = ReadLong(0x87A7E8)+0x2BA, true
PremiumThunder = ReadLong(0x87A7E8)+0x2C4, true
PremiumCure = ReadLong(0x87A7E8)+0x2CE, true
PremiumGravity = ReadLong(0x87A7E8)+0x2D8, true
PremiumStop = ReadLong(0x87A7E8)+0x2E2, true
PremiumAero = ReadLong(0x87A7E8)+0x2EC, true
PremiumUnkownMagic1 = ReadLong(0x87A7E8)+0x2F6, true
PremiumUnkownMagic2 = ReadLong(0x87A7E8)+0x300, true
PremiumSimba = ReadLong(0x87A7E8)+0x30A, true
PremiumGenie = ReadLong(0x87A7E8)+0x314, true
PremiumBambi = ReadLong(0x87A7E8)+0x31E, true
PremiumDumbo = ReadLong(0x87A7E8)+0x328, true
PremiumTinkerBell = ReadLong(0x87A7E8)+0x332, true
PremiumMushu = ReadLong(0x87A7E8)+0x33C, true
PremiumCloud = ReadLong(0x87A7E8)+0x346, true
Potion = ReadLong(0x87A7E8)+0x350, true
HiPotion = ReadLong(0x87A7E8)+0x35A, true
MegaPotion = ReadLong(0x87A7E8)+0x364, true
Ether = ReadLong(0x87A7E8)+0x36E, true
MegaEther = ReadLong(0x87A7E8)+0x378, true
Elixir = ReadLong(0x87A7E8)+0x382, true
Megalixir = ReadLong(0x87A7E8)+0x38C, true
EnemyCards = ReadLong(0x87A7E8)+0x490, true
JournalBattleCardFlags = ReadLong(0x87A7E8)+0xEE7, true

if ReadByte(IngameCheck) >= 1 then
		WriteByte(KingdomKey, 99, true)   -- Kingdom Key #0
		WriteByte(KingdomKey+1, 99, true) -- Kingdom Key #1
		WriteByte(KingdomKey+2, 99, true) -- Kingdom Key #2
		WriteByte(KingdomKey+3, 99, true) -- Kingdom Key #3
		WriteByte(KingdomKey+4, 99, true) -- Kingdom Key #4
		WriteByte(KingdomKey+5, 99, true) -- Kingdom Key #5
		WriteByte(KingdomKey+6, 99, true) -- Kingdom Key #6
		WriteByte(KingdomKey+7, 99, true) -- Kingdom Key #7
		WriteByte(KingdomKey+8, 99, true) -- Kingdom Key #8
		WriteByte(KingdomKey+9, 99, true) -- Kingdom Key #9
		
		WriteByte(ThreeWishes, 99, true)   -- Three Wishes #0
		WriteByte(ThreeWishes+1, 99, true) -- Three Wishes #1
		WriteByte(ThreeWishes+2, 99, true) -- Three Wishes #2
		WriteByte(ThreeWishes+3, 99, true) -- Three Wishes #3
		WriteByte(ThreeWishes+4, 99, true) -- Three Wishes #4
		WriteByte(ThreeWishes+5, 99, true) -- Three Wishes #5
		WriteByte(ThreeWishes+6, 99, true) -- Three Wishes #6
		WriteByte(ThreeWishes+7, 99, true) -- Three Wishes #7
		WriteByte(ThreeWishes+8, 99, true) -- Three Wishes #8
		WriteByte(ThreeWishes+9, 99, true) -- Three Wishes #9
		
		WriteByte(CrabClaw, 99, true)   -- Crab Claw #0
		WriteByte(CrabClaw+1, 99, true) -- Crab Claw #1
		WriteByte(CrabClaw+2, 99, true) -- Crab Claw #2
		WriteByte(CrabClaw+3, 99, true) -- Crab Claw #3
		WriteByte(CrabClaw+4, 99, true) -- Crab Claw #4
		WriteByte(CrabClaw+5, 99, true) -- Crab Claw #5
		WriteByte(CrabClaw+6, 99, true) -- Crab Claw #6
		WriteByte(CrabClaw+7, 99, true) -- Crab Claw #7
		WriteByte(CrabClaw+8, 99, true) -- Crab Claw #8
		WriteByte(CrabClaw+9, 99, true) -- Crab Claw #9
		
		WriteByte(PumpkinHead, 99, true)   -- Pumpkinhead #0
		WriteByte(PumpkinHead+1, 99, true) -- Pumpkinhead #1
		WriteByte(PumpkinHead+2, 99, true) -- Pumpkinhead #2
		WriteByte(PumpkinHead+3, 99, true) -- Pumpkinhead #3
		WriteByte(PumpkinHead+4, 99, true) -- Pumpkinhead #4
		WriteByte(PumpkinHead+5, 99, true) -- Pumpkinhead #5
		WriteByte(PumpkinHead+6, 99, true) -- Pumpkinhead #6
		WriteByte(PumpkinHead+7, 99, true) -- Pumpkinhead #7
		WriteByte(PumpkinHead+8, 99, true) -- Pumpkinhead #8
		WriteByte(PumpkinHead+9, 99, true) -- Pumpkinhead #9
		
		WriteByte(FairyHarp, 99, true)   -- Fairy Harp #0
		WriteByte(FairyHarp+1, 99, true) -- Fairy Harp #1
		WriteByte(FairyHarp+2, 99, true) -- Fairy Harp #2
		WriteByte(FairyHarp+3, 99, true) -- Fairy Harp #3
		WriteByte(FairyHarp+4, 99, true) -- Fairy Harp #4
		WriteByte(FairyHarp+5, 99, true) -- Fairy Harp #5
		WriteByte(FairyHarp+6, 99, true) -- Fairy Harp #6
		WriteByte(FairyHarp+7, 99, true) -- Fairy Harp #7
		WriteByte(FairyHarp+8, 99, true) -- Fairy Harp #8
		WriteByte(FairyHarp+9, 99, true) -- Fairy Harp #9
		
		WriteByte(WishingStar, 99, true)   -- Wishing Star #0
		WriteByte(WishingStar+1, 99, true) -- Wishing Star #1
		WriteByte(WishingStar+2, 99, true) -- Wishing Star #2
		WriteByte(WishingStar+3, 99, true) -- Wishing Star #3
		WriteByte(WishingStar+4, 99, true) -- Wishing Star #4
		WriteByte(WishingStar+5, 99, true) -- Wishing Star #5
		WriteByte(WishingStar+6, 99, true) -- Wishing Star #6
		WriteByte(WishingStar+7, 99, true) -- Wishing Star #7
		WriteByte(WishingStar+8, 99, true) -- Wishing Star #8
		WriteByte(WishingStar+9, 99, true) -- Wishing Star #9
		
		WriteByte(Spellbinder, 99, true)   -- Spellbinder #0
		WriteByte(Spellbinder+1, 99, true) -- Spellbinder #1
		WriteByte(Spellbinder+2, 99, true) -- Spellbinder #2
		WriteByte(Spellbinder+3, 99, true) -- Spellbinder #3
		WriteByte(Spellbinder+4, 99, true) -- Spellbinder #4
		WriteByte(Spellbinder+5, 99, true) -- Spellbinder #5
		WriteByte(Spellbinder+6, 99, true) -- Spellbinder #6
		WriteByte(Spellbinder+7, 99, true) -- Spellbinder #7
		WriteByte(Spellbinder+8, 99, true) -- Spellbinder #8
		WriteByte(Spellbinder+9, 99, true) -- Spellbinder #9
		
		WriteByte(MetalChocobo, 99, true)   -- Metal Chocobo #0
		WriteByte(MetalChocobo+1, 99, true) -- Metal Chocobo #1
		WriteByte(MetalChocobo+2, 99, true) -- Metal Chocobo #2
		WriteByte(MetalChocobo+3, 99, true) -- Metal Chocobo #3
		WriteByte(MetalChocobo+4, 99, true) -- Metal Chocobo #4
		WriteByte(MetalChocobo+5, 99, true) -- Metal Chocobo #5
		WriteByte(MetalChocobo+6, 99, true) -- Metal Chocobo #6
		WriteByte(MetalChocobo+7, 99, true) -- Metal Chocobo #7
		WriteByte(MetalChocobo+8, 99, true) -- Metal Chocobo #8
		WriteByte(MetalChocobo+9, 99, true) -- Metal Chocobo #9
		
		WriteByte(Olympia, 99, true)   -- Olympia #0
		WriteByte(Olympia+1, 99, true) -- Olympia #1
		WriteByte(Olympia+2, 99, true) -- Olympia #2
		WriteByte(Olympia+3, 99, true) -- Olympia #3
		WriteByte(Olympia+4, 99, true) -- Olympia #4
		WriteByte(Olympia+5, 99, true) -- Olympia #5
		WriteByte(Olympia+6, 99, true) -- Olympia #6
		WriteByte(Olympia+7, 99, true) -- Olympia #7
		WriteByte(Olympia+8, 99, true) -- Olympia #8
		WriteByte(Olympia+9, 99, true) -- Olympia #9
		
		WriteByte(LionHeart, 99, true)   -- Lionheart #0
		WriteByte(LionHeart+1, 99, true) -- Lionheart #1
		WriteByte(LionHeart+2, 99, true) -- Lionheart #2
		WriteByte(LionHeart+3, 99, true) -- Lionheart #3
		WriteByte(LionHeart+4, 99, true) -- Lionheart #4
		WriteByte(LionHeart+5, 99, true) -- Lionheart #5
		WriteByte(LionHeart+6, 99, true) -- Lionheart #6
		WriteByte(LionHeart+7, 99, true) -- Lionheart #7
		WriteByte(LionHeart+8, 99, true) -- Lionheart #8
		WriteByte(LionHeart+9, 99, true) -- Lionheart #9
		
		WriteByte(LadyLuck, 99, true)   -- Lady Luck #0
		WriteByte(LadyLuck+1, 99, true) -- Lady Luck #1
		WriteByte(LadyLuck+2, 99, true) -- Lady Luck #2
		WriteByte(LadyLuck+3, 99, true) -- Lady Luck #3
		WriteByte(LadyLuck+4, 99, true) -- Lady Luck #4
		WriteByte(LadyLuck+5, 99, true) -- Lady Luck #5
		WriteByte(LadyLuck+6, 99, true) -- Lady Luck #6
		WriteByte(LadyLuck+7, 99, true) -- Lady Luck #7
		WriteByte(LadyLuck+8, 99, true) -- Lady Luck #8
		WriteByte(LadyLuck+9, 99, true) -- Lady Luck #9
		
		WriteByte(DivineRose, 99, true)   -- Divine Rose #0
		WriteByte(DivineRose+1, 99, true) -- Divine Rose #1
		WriteByte(DivineRose+2, 99, true) -- Divine Rose #2
		WriteByte(DivineRose+3, 99, true) -- Divine Rose #3
		WriteByte(DivineRose+4, 99, true) -- Divine Rose #4
		WriteByte(DivineRose+5, 99, true) -- Divine Rose #5
		WriteByte(DivineRose+6, 99, true) -- Divine Rose #6
		WriteByte(DivineRose+7, 99, true) -- Divine Rose #7
		WriteByte(DivineRose+8, 99, true) -- Divine Rose #8
		WriteByte(DivineRose+9, 99, true) -- Divine Rose #9
		
		WriteByte(OathKeeper, 99, true)   -- Oathkeeper #0
		WriteByte(OathKeeper+1, 99, true) -- Oathkeeper #1
		WriteByte(OathKeeper+2, 99, true) -- Oathkeeper #2
		WriteByte(OathKeeper+3, 99, true) -- Oathkeeper #3
		WriteByte(OathKeeper+4, 99, true) -- Oathkeeper #4
		WriteByte(OathKeeper+5, 99, true) -- Oathkeeper #5
		WriteByte(OathKeeper+6, 99, true) -- Oathkeeper #6
		WriteByte(OathKeeper+7, 99, true) -- Oathkeeper #7
		WriteByte(OathKeeper+8, 99, true) -- Oathkeeper #8
		WriteByte(OathKeeper+9, 99, true) -- Oathkeeper #9
		
		WriteByte(Oblivion, 99, true)   -- Oblivion #0
		WriteByte(Oblivion+1, 99, true) -- Oblivion #1
		WriteByte(Oblivion+2, 99, true) -- Oblivion #2
		WriteByte(Oblivion+3, 99, true) -- Oblivion #3
		WriteByte(Oblivion+4, 99, true) -- Oblivion #4
		WriteByte(Oblivion+5, 99, true) -- Oblivion #5
		WriteByte(Oblivion+6, 99, true) -- Oblivion #6
		WriteByte(Oblivion+7, 99, true) -- Oblivion #7
		WriteByte(Oblivion+8, 99, true) -- Oblivion #8
		WriteByte(Oblivion+9, 99, true) -- Oblivion #9
		
		WriteByte(UltimaWeapon, 99, true)   -- Ultima Weapon #0
		WriteByte(UltimaWeapon+1, 99, true) -- Ultima Weapon #1
		WriteByte(UltimaWeapon+2, 99, true) -- Ultima Weapon #2
		WriteByte(UltimaWeapon+3, 99, true) -- Ultima Weapon #3
		WriteByte(UltimaWeapon+4, 99, true) -- Ultima Weapon #4
		WriteByte(UltimaWeapon+5, 99, true) -- Ultima Weapon #5
		WriteByte(UltimaWeapon+6, 99, true) -- Ultima Weapon #6
		WriteByte(UltimaWeapon+7, 99, true) -- Ultima Weapon #7
		WriteByte(UltimaWeapon+8, 99, true) -- Ultima Weapon #8
		WriteByte(UltimaWeapon+9, 99, true) -- Ultima Weapon #9
		
		WriteByte(DiamondDust, 99, true)   -- Diamond Dust #0
		WriteByte(DiamondDust+1, 99, true) -- Diamond Dust #1
		WriteByte(DiamondDust+2, 99, true) -- Diamond Dust #2
		WriteByte(DiamondDust+3, 99, true) -- Diamond Dust #3
		WriteByte(DiamondDust+4, 99, true) -- Diamond Dust #4
		WriteByte(DiamondDust+5, 99, true) -- Diamond Dust #5
		WriteByte(DiamondDust+6, 99, true) -- Diamond Dust #6
		WriteByte(DiamondDust+7, 99, true) -- Diamond Dust #7
		WriteByte(DiamondDust+8, 99, true) -- Diamond Dust #8
		WriteByte(DiamondDust+9, 99, true) -- Diamond Dust #9
		
		WriteByte(OneWingedAngel, 99, true)   -- One-Winged Angel #0
		WriteByte(OneWingedAngel+1, 99, true) -- One-Winged Angel #1
		WriteByte(OneWingedAngel+2, 99, true) -- One-Winged Angel #2
		WriteByte(OneWingedAngel+3, 99, true) -- One-Winged Angel #3
		WriteByte(OneWingedAngel+4, 99, true) -- One-Winged Angel #4
		WriteByte(OneWingedAngel+5, 99, true) -- One-Winged Angel #5
		WriteByte(OneWingedAngel+6, 99, true) -- One-Winged Angel #6
		WriteByte(OneWingedAngel+7, 99, true) -- One-Winged Angel #7
		WriteByte(OneWingedAngel+8, 99, true) -- One-Winged Angel #8
		WriteByte(OneWingedAngel+9, 99, true) -- One-Winged Angel #9
		
		WriteByte(SoulEater, 99, true)   -- Soul Eater #0
		WriteByte(SoulEater+1, 99, true) -- Soul Eater #1
		WriteByte(SoulEater+2, 99, true) -- Soul Eater #2
		WriteByte(SoulEater+3, 99, true) -- Soul Eater #3
		WriteByte(SoulEater+4, 99, true) -- Soul Eater #4
		WriteByte(SoulEater+5, 99, true) -- Soul Eater #5
		WriteByte(SoulEater+6, 99, true) -- Soul Eater #6
		WriteByte(SoulEater+7, 99, true) -- Soul Eater #7
		WriteByte(SoulEater+8, 99, true) -- Soul Eater #8
		WriteByte(SoulEater+9, 99, true) -- Soul Eater #9
		
		WriteByte(StarSeeker, 99, true)   -- Star Seeker #0
		WriteByte(StarSeeker+1, 99, true) -- Star Seeker #1
		WriteByte(StarSeeker+2, 99, true) -- Star Seeker #2
		WriteByte(StarSeeker+3, 99, true) -- Star Seeker #3
		WriteByte(StarSeeker+4, 99, true) -- Star Seeker #4
		WriteByte(StarSeeker+5, 99, true) -- Star Seeker #5
		WriteByte(StarSeeker+6, 99, true) -- Star Seeker #6
		WriteByte(StarSeeker+7, 99, true) -- Star Seeker #7
		WriteByte(StarSeeker+8, 99, true) -- Star Seeker #8
		WriteByte(StarSeeker+9, 99, true) -- Star Seeker #9
		
		WriteByte(TotalEclipse, 99, true)   -- Total Eclipse #0
		WriteByte(TotalEclipse+1, 99, true) -- Total Eclipse #1
		WriteByte(TotalEclipse+2, 99, true) -- Total Eclipse #2
		WriteByte(TotalEclipse+3, 99, true) -- Total Eclipse #3
		WriteByte(TotalEclipse+4, 99, true) -- Total Eclipse #4
		WriteByte(TotalEclipse+5, 99, true) -- Total Eclipse #5
		WriteByte(TotalEclipse+6, 99, true) -- Total Eclipse #6
		WriteByte(TotalEclipse+7, 99, true) -- Total Eclipse #7
		WriteByte(TotalEclipse+8, 99, true) -- Total Eclipse #8
		WriteByte(TotalEclipse+9, 99, true) -- Total Eclipse #9
		
		WriteByte(MidnightRoar, 99, true)   -- Midnight Roar #0
		WriteByte(MidnightRoar+1, 99, true) -- Midnight Roar #1
		WriteByte(MidnightRoar+2, 99, true) -- Midnight Roar #2
		WriteByte(MidnightRoar+3, 99, true) -- Midnight Roar #3
		WriteByte(MidnightRoar+4, 99, true) -- Midnight Roar #4
		WriteByte(MidnightRoar+5, 99, true) -- Midnight Roar #5
		WriteByte(MidnightRoar+6, 99, true) -- Midnight Roar #6
		WriteByte(MidnightRoar+7, 99, true) -- Midnight Roar #7
		WriteByte(MidnightRoar+8, 99, true) -- Midnight Roar #8
		WriteByte(MidnightRoar+9, 99, true) -- Midnight Roar #9
		
		WriteByte(MaverickFlare, 99, true)   -- Maverick Flare #0
		WriteByte(MaverickFlare+1, 99, true) -- Maverick Flare #1
		WriteByte(MaverickFlare+2, 99, true) -- Maverick Flare #2
		WriteByte(MaverickFlare+3, 99, true) -- Maverick Flare #3
		WriteByte(MaverickFlare+4, 99, true) -- Maverick Flare #4
		WriteByte(MaverickFlare+5, 99, true) -- Maverick Flare #5
		WriteByte(MaverickFlare+6, 99, true) -- Maverick Flare #6
		WriteByte(MaverickFlare+7, 99, true) -- Maverick Flare #7
		WriteByte(MaverickFlare+8, 99, true) -- Maverick Flare #8
		WriteByte(MaverickFlare+9, 99, true) -- Maverick Flare #9
		
		WriteByte(TwoBecomeOne, 99, true)   -- Two Become One #0
		WriteByte(TwoBecomeOne+1, 99, true) -- Two Become One #1
		WriteByte(TwoBecomeOne+2, 99, true) -- Two Become One #2
		WriteByte(TwoBecomeOne+3, 99, true) -- Two Become One #3
		WriteByte(TwoBecomeOne+4, 99, true) -- Two Become One #4
		WriteByte(TwoBecomeOne+5, 99, true) -- Two Become One #5
		WriteByte(TwoBecomeOne+6, 99, true) -- Two Become One #6
		WriteByte(TwoBecomeOne+7, 99, true) -- Two Become One #7
		WriteByte(TwoBecomeOne+8, 99, true) -- Two Become One #8
		WriteByte(TwoBecomeOne+9, 99, true) -- Two Become One #9
		
		WriteByte(BondofFlame, 99, true)   -- Bond of Flame #0
		WriteByte(BondofFlame+1, 99, true) -- Bond of Flame #1
		WriteByte(BondofFlame+2, 99, true) -- Bond of Flame #2
		WriteByte(BondofFlame+3, 99, true) -- Bond of Flame #3
		WriteByte(BondofFlame+4, 99, true) -- Bond of Flame #4
		WriteByte(BondofFlame+5, 99, true) -- Bond of Flame #5
		WriteByte(BondofFlame+6, 99, true) -- Bond of Flame #6
		WriteByte(BondofFlame+7, 99, true) -- Bond of Flame #7
		WriteByte(BondofFlame+8, 99, true) -- Bond of Flame #8
		WriteByte(BondofFlame+9, 99, true) -- Bond of Flame #9
		
		WriteByte(PremiumKingdomKey, 99, true)   -- Premium Kingdom Key #0
		WriteByte(PremiumKingdomKey+1, 99, true) -- Premium Kingdom Key #1
		WriteByte(PremiumKingdomKey+2, 99, true) -- Premium Kingdom Key #2
		WriteByte(PremiumKingdomKey+3, 99, true) -- Premium Kingdom Key #3
		WriteByte(PremiumKingdomKey+4, 99, true) -- Premium Kingdom Key #4
		WriteByte(PremiumKingdomKey+5, 99, true) -- Premium Kingdom Key #5
		WriteByte(PremiumKingdomKey+6, 99, true) -- Premium Kingdom Key #6
		WriteByte(PremiumKingdomKey+7, 99, true) -- Premium Kingdom Key #7
		WriteByte(PremiumKingdomKey+8, 99, true) -- Premium Kingdom Key #8
		WriteByte(PremiumKingdomKey+9, 99, true) -- Premium Kingdom Key #9
		
		WriteByte(PremiumThreeWishes, 99, true)   -- Premium Three Wishes #0
		WriteByte(PremiumThreeWishes+1, 99, true) -- Premium Three Wishes #1
		WriteByte(PremiumThreeWishes+2, 99, true) -- Premium Three Wishes #2
		WriteByte(PremiumThreeWishes+3, 99, true) -- Premium Three Wishes #3
		WriteByte(PremiumThreeWishes+4, 99, true) -- Premium Three Wishes #4
		WriteByte(PremiumThreeWishes+5, 99, true) -- Premium Three Wishes #5
		WriteByte(PremiumThreeWishes+6, 99, true) -- Premium Three Wishes #6
		WriteByte(PremiumThreeWishes+7, 99, true) -- Premium Three Wishes #7
		WriteByte(PremiumThreeWishes+8, 99, true) -- Premium Three Wishes #8
		WriteByte(PremiumThreeWishes+9, 99, true) -- Premium Three Wishes #9
		
		WriteByte(PremiumCrabClaw, 99, true)   -- Premium Crab Claw #0
		WriteByte(PremiumCrabClaw+1, 99, true) -- Premium Crab Claw #1
		WriteByte(PremiumCrabClaw+2, 99, true) -- Premium Crab Claw #2
		WriteByte(PremiumCrabClaw+3, 99, true) -- Premium Crab Claw #3
		WriteByte(PremiumCrabClaw+4, 99, true) -- Premium Crab Claw #4
		WriteByte(PremiumCrabClaw+5, 99, true) -- Premium Crab Claw #5
		WriteByte(PremiumCrabClaw+6, 99, true) -- Premium Crab Claw #6
		WriteByte(PremiumCrabClaw+7, 99, true) -- Premium Crab Claw #7
		WriteByte(PremiumCrabClaw+8, 99, true) -- Premium Crab Claw #8
		WriteByte(PremiumCrabClaw+9, 99, true) -- Premium Crab Claw #9
		
		WriteByte(PremiumPumpkinHead, 99, true)   -- Premium Pumpkinhead #0
		WriteByte(PremiumPumpkinHead+1, 99, true) -- Premium Pumpkinhead #1
		WriteByte(PremiumPumpkinHead+2, 99, true) -- Premium Pumpkinhead #2
		WriteByte(PremiumPumpkinHead+3, 99, true) -- Premium Pumpkinhead #3
		WriteByte(PremiumPumpkinHead+4, 99, true) -- Premium Pumpkinhead #4
		WriteByte(PremiumPumpkinHead+5, 99, true) -- Premium Pumpkinhead #5
		WriteByte(PremiumPumpkinHead+6, 99, true) -- Premium Pumpkinhead #6
		WriteByte(PremiumPumpkinHead+7, 99, true) -- Premium Pumpkinhead #7
		WriteByte(PremiumPumpkinHead+8, 99, true) -- Premium Pumpkinhead #8
		WriteByte(PremiumPumpkinHead+9, 99, true) -- Premium Pumpkinhead #9
		
		WriteByte(PremiumFairyHarp, 99, true)   -- Premium Fairy Harp #0
		WriteByte(PremiumFairyHarp+1, 99, true) -- Premium Fairy Harp #1
		WriteByte(PremiumFairyHarp+2, 99, true) -- Premium Fairy Harp #2
		WriteByte(PremiumFairyHarp+3, 99, true) -- Premium Fairy Harp #3
		WriteByte(PremiumFairyHarp+4, 99, true) -- Premium Fairy Harp #4
		WriteByte(PremiumFairyHarp+5, 99, true) -- Premium Fairy Harp #5
		WriteByte(PremiumFairyHarp+6, 99, true) -- Premium Fairy Harp #6
		WriteByte(PremiumFairyHarp+7, 99, true) -- Premium Fairy Harp #7
		WriteByte(PremiumFairyHarp+8, 99, true) -- Premium Fairy Harp #8
		WriteByte(PremiumFairyHarp+9, 99, true) -- Premium Fairy Harp #9
		
		WriteByte(PremiumWishingStar, 99, true)   -- Premium Wishing Star #0
		WriteByte(PremiumWishingStar+1, 99, true) -- Premium Wishing Star #1
		WriteByte(PremiumWishingStar+2, 99, true) -- Premium Wishing Star #2
		WriteByte(PremiumWishingStar+3, 99, true) -- Premium Wishing Star #3
		WriteByte(PremiumWishingStar+4, 99, true) -- Premium Wishing Star #4
		WriteByte(PremiumWishingStar+5, 99, true) -- Premium Wishing Star #5
		WriteByte(PremiumWishingStar+6, 99, true) -- Premium Wishing Star #6
		WriteByte(PremiumWishingStar+7, 99, true) -- Premium Wishing Star #7
		WriteByte(PremiumWishingStar+8, 99, true) -- Premium Wishing Star #8
		WriteByte(PremiumWishingStar+9, 99, true) -- Premium Wishing Star #9
		
		WriteByte(PremiumSpellbinder, 99, true)   -- Premium Spellbinder #0
		WriteByte(PremiumSpellbinder+1, 99, true) -- Premium Spellbinder #1
		WriteByte(PremiumSpellbinder+2, 99, true) -- Premium Spellbinder #2
		WriteByte(PremiumSpellbinder+3, 99, true) -- Premium Spellbinder #3
		WriteByte(PremiumSpellbinder+4, 99, true) -- Premium Spellbinder #4
		WriteByte(PremiumSpellbinder+5, 99, true) -- Premium Spellbinder #5
		WriteByte(PremiumSpellbinder+6, 99, true) -- Premium Spellbinder #6
		WriteByte(PremiumSpellbinder+7, 99, true) -- Premium Spellbinder #7
		WriteByte(PremiumSpellbinder+8, 99, true) -- Premium Spellbinder #8
		WriteByte(PremiumSpellbinder+9, 99, true) -- Premium Spellbinder #9
		
		WriteByte(PremiumMetalChocobo, 99, true)   -- Premium Metal Chocobo #0
		WriteByte(PremiumMetalChocobo+1, 99, true) -- Premium Metal Chocobo #1
		WriteByte(PremiumMetalChocobo+2, 99, true) -- Premium Metal Chocobo #2
		WriteByte(PremiumMetalChocobo+3, 99, true) -- Premium Metal Chocobo #3
		WriteByte(PremiumMetalChocobo+4, 99, true) -- Premium Metal Chocobo #4
		WriteByte(PremiumMetalChocobo+5, 99, true) -- Premium Metal Chocobo #5
		WriteByte(PremiumMetalChocobo+6, 99, true) -- Premium Metal Chocobo #6
		WriteByte(PremiumMetalChocobo+7, 99, true) -- Premium Metal Chocobo #7
		WriteByte(PremiumMetalChocobo+8, 99, true) -- Premium Metal Chocobo #8
		WriteByte(PremiumMetalChocobo+9, 99, true) -- Premium Metal Chocobo #9
		
		WriteByte(PremiumOlympia, 99, true)   -- Premium Olympia #0
		WriteByte(PremiumOlympia+1, 99, true) -- Premium Olympia #1
		WriteByte(PremiumOlympia+2, 99, true) -- Premium Olympia #2
		WriteByte(PremiumOlympia+3, 99, true) -- Premium Olympia #3
		WriteByte(PremiumOlympia+4, 99, true) -- Premium Olympia #4
		WriteByte(PremiumOlympia+5, 99, true) -- Premium Olympia #5
		WriteByte(PremiumOlympia+6, 99, true) -- Premium Olympia #6
		WriteByte(PremiumOlympia+7, 99, true) -- Premium Olympia #7
		WriteByte(PremiumOlympia+8, 99, true) -- Premium Olympia #8
		WriteByte(PremiumOlympia+9, 99, true) -- Premium Olympia #9
		
		WriteByte(PremiumLionHeart, 99, true)   -- Premium Lionheart #0
		WriteByte(PremiumLionHeart+1, 99, true) -- Premium Lionheart #1
		WriteByte(PremiumLionHeart+2, 99, true) -- Premium Lionheart #2
		WriteByte(PremiumLionHeart+3, 99, true) -- Premium Lionheart #3
		WriteByte(PremiumLionHeart+4, 99, true) -- Premium Lionheart #4
		WriteByte(PremiumLionHeart+5, 99, true) -- Premium Lionheart #5
		WriteByte(PremiumLionHeart+6, 99, true) -- Premium Lionheart #6
		WriteByte(PremiumLionHeart+7, 99, true) -- Premium Lionheart #7
		WriteByte(PremiumLionHeart+8, 99, true) -- Premium Lionheart #8
		WriteByte(PremiumLionHeart+9, 99, true) -- Premium Lionheart #9
		
		WriteByte(PremiumLadyLuck, 99, true)   -- Premium Lady Luck #0
		WriteByte(PremiumLadyLuck+1, 99, true) -- Premium Lady Luck #1
		WriteByte(PremiumLadyLuck+2, 99, true) -- Premium Lady Luck #2
		WriteByte(PremiumLadyLuck+3, 99, true) -- Premium Lady Luck #3
		WriteByte(PremiumLadyLuck+4, 99, true) -- Premium Lady Luck #4
		WriteByte(PremiumLadyLuck+5, 99, true) -- Premium Lady Luck #5
		WriteByte(PremiumLadyLuck+6, 99, true) -- Premium Lady Luck #6
		WriteByte(PremiumLadyLuck+7, 99, true) -- Premium Lady Luck #7
		WriteByte(PremiumLadyLuck+8, 99, true) -- Premium Lady Luck #8
		WriteByte(PremiumLadyLuck+9, 99, true) -- Premium Lady Luck #9
		
		WriteByte(PremiumDivineRose, 99, true)   -- Premium Divine Rose #0
		WriteByte(PremiumDivineRose+1, 99, true) -- Premium Divine Rose #1
		WriteByte(PremiumDivineRose+2, 99, true) -- Premium Divine Rose #2
		WriteByte(PremiumDivineRose+3, 99, true) -- Premium Divine Rose #3
		WriteByte(PremiumDivineRose+4, 99, true) -- Premium Divine Rose #4
		WriteByte(PremiumDivineRose+5, 99, true) -- Premium Divine Rose #5
		WriteByte(PremiumDivineRose+6, 99, true) -- Premium Divine Rose #6
		WriteByte(PremiumDivineRose+7, 99, true) -- Premium Divine Rose #7
		WriteByte(PremiumDivineRose+8, 99, true) -- Premium Divine Rose #8
		WriteByte(PremiumDivineRose+9, 99, true) -- Premium Divine Rose #9
		
		WriteByte(PremiumOathKeeper, 99, true)   -- Premium Oathkeeper #0
		WriteByte(PremiumOathKeeper+1, 99, true) -- Premium Oathkeeper #1
		WriteByte(PremiumOathKeeper+2, 99, true) -- Premium Oathkeeper #2
		WriteByte(PremiumOathKeeper+3, 99, true) -- Premium Oathkeeper #3
		WriteByte(PremiumOathKeeper+4, 99, true) -- Premium Oathkeeper #4
		WriteByte(PremiumOathKeeper+5, 99, true) -- Premium Oathkeeper #5
		WriteByte(PremiumOathKeeper+6, 99, true) -- Premium Oathkeeper #6
		WriteByte(PremiumOathKeeper+7, 99, true) -- Premium Oathkeeper #7
		WriteByte(PremiumOathKeeper+8, 99, true) -- Premium Oathkeeper #8
		WriteByte(PremiumOathKeeper+9, 99, true) -- Premium Oathkeeper #9
		
		WriteByte(PremiumOblivion, 99, true)   -- Premium Oblivion #0
		WriteByte(PremiumOblivion+1, 99, true) -- Premium Oblivion #1
		WriteByte(PremiumOblivion+2, 99, true) -- Premium Oblivion #2
		WriteByte(PremiumOblivion+3, 99, true) -- Premium Oblivion #3
		WriteByte(PremiumOblivion+4, 99, true) -- Premium Oblivion #4
		WriteByte(PremiumOblivion+5, 99, true) -- Premium Oblivion #5
		WriteByte(PremiumOblivion+6, 99, true) -- Premium Oblivion #6
		WriteByte(PremiumOblivion+7, 99, true) -- Premium Oblivion #7
		WriteByte(PremiumOblivion+8, 99, true) -- Premium Oblivion #8
		WriteByte(PremiumOblivion+9, 99, true) -- Premium Oblivion #9
		
		WriteByte(PremiumUltimaWeapon, 99, true)   -- Premium Ultima Weapon #0
		WriteByte(PremiumUltimaWeapon+1, 99, true) -- Premium Ultima Weapon #1
		WriteByte(PremiumUltimaWeapon+2, 99, true) -- Premium Ultima Weapon #2
		WriteByte(PremiumUltimaWeapon+3, 99, true) -- Premium Ultima Weapon #3
		WriteByte(PremiumUltimaWeapon+4, 99, true) -- Premium Ultima Weapon #4
		WriteByte(PremiumUltimaWeapon+5, 99, true) -- Premium Ultima Weapon #5
		WriteByte(PremiumUltimaWeapon+6, 99, true) -- Premium Ultima Weapon #6
		WriteByte(PremiumUltimaWeapon+7, 99, true) -- Premium Ultima Weapon #7
		WriteByte(PremiumUltimaWeapon+8, 99, true) -- Premium Ultima Weapon #8
		WriteByte(PremiumUltimaWeapon+9, 99, true) -- Premium Ultima Weapon #9
		
		WriteByte(PremiumDiamondDust, 99, true)   -- Premium Diamond Dust #0
		WriteByte(PremiumDiamondDust+1, 99, true) -- Premium Diamond Dust #1
		WriteByte(PremiumDiamondDust+2, 99, true) -- Premium Diamond Dust #2
		WriteByte(PremiumDiamondDust+3, 99, true) -- Premium Diamond Dust #3
		WriteByte(PremiumDiamondDust+4, 99, true) -- Premium Diamond Dust #4
		WriteByte(PremiumDiamondDust+5, 99, true) -- Premium Diamond Dust #5
		WriteByte(PremiumDiamondDust+6, 99, true) -- Premium Diamond Dust #6
		WriteByte(PremiumDiamondDust+7, 99, true) -- Premium Diamond Dust #7
		WriteByte(PremiumDiamondDust+8, 99, true) -- Premium Diamond Dust #8
		WriteByte(PremiumDiamondDust+9, 99, true) -- Premium Diamond Dust #9
		
		WriteByte(PremiumOneWingedAngel, 99, true)   -- Premium One-Winged Angel #0
		WriteByte(PremiumOneWingedAngel+1, 99, true) -- Premium One-Winged Angel #1
		WriteByte(PremiumOneWingedAngel+2, 99, true) -- Premium One-Winged Angel #2
		WriteByte(PremiumOneWingedAngel+3, 99, true) -- Premium One-Winged Angel #3
		WriteByte(PremiumOneWingedAngel+4, 99, true) -- Premium One-Winged Angel #4
		WriteByte(PremiumOneWingedAngel+5, 99, true) -- Premium One-Winged Angel #5
		WriteByte(PremiumOneWingedAngel+6, 99, true) -- Premium One-Winged Angel #6
		WriteByte(PremiumOneWingedAngel+7, 99, true) -- Premium One-Winged Angel #7
		WriteByte(PremiumOneWingedAngel+8, 99, true) -- Premium One-Winged Angel #8
		WriteByte(PremiumOneWingedAngel+9, 99, true) -- Premium One-Winged Angel #9
		
		WriteByte(PremiumSoulEater, 99, true)   -- Premium Soul Eater #0
		WriteByte(PremiumSoulEater+1, 99, true) -- Premium Soul Eater #1
		WriteByte(PremiumSoulEater+2, 99, true) -- Premium Soul Eater #2
		WriteByte(PremiumSoulEater+3, 99, true) -- Premium Soul Eater #3
		WriteByte(PremiumSoulEater+4, 99, true) -- Premium Soul Eater #4
		WriteByte(PremiumSoulEater+5, 99, true) -- Premium Soul Eater #5
		WriteByte(PremiumSoulEater+6, 99, true) -- Premium Soul Eater #6
		WriteByte(PremiumSoulEater+7, 99, true) -- Premium Soul Eater #7
		WriteByte(PremiumSoulEater+8, 99, true) -- Premium Soul Eater #8
		WriteByte(PremiumSoulEater+9, 99, true) -- Premium Soul Eater #9
		
		WriteByte(PremiumStarSeeker, 99, true)   -- Premium Star Seeker #0
		WriteByte(PremiumStarSeeker+1, 99, true) -- Premium Star Seeker #1
		WriteByte(PremiumStarSeeker+2, 99, true) -- Premium Star Seeker #2
		WriteByte(PremiumStarSeeker+3, 99, true) -- Premium Star Seeker #3
		WriteByte(PremiumStarSeeker+4, 99, true) -- Premium Star Seeker #4
		WriteByte(PremiumStarSeeker+5, 99, true) -- Premium Star Seeker #5
		WriteByte(PremiumStarSeeker+6, 99, true) -- Premium Star Seeker #6
		WriteByte(PremiumStarSeeker+7, 99, true) -- Premium Star Seeker #7
		WriteByte(PremiumStarSeeker+8, 99, true) -- Premium Star Seeker #8
		WriteByte(PremiumStarSeeker+9, 99, true) -- Premium Star Seeker #9
		
		WriteByte(PremiumTotalEclipse, 99, true)   -- Premium Total Eclipse #0
		WriteByte(PremiumTotalEclipse+1, 99, true) -- Premium Total Eclipse #1
		WriteByte(PremiumTotalEclipse+2, 99, true) -- Premium Total Eclipse #2
		WriteByte(PremiumTotalEclipse+3, 99, true) -- Premium Total Eclipse #3
		WriteByte(PremiumTotalEclipse+4, 99, true) -- Premium Total Eclipse #4
		WriteByte(PremiumTotalEclipse+5, 99, true) -- Premium Total Eclipse #5
		WriteByte(PremiumTotalEclipse+6, 99, true) -- Premium Total Eclipse #6
		WriteByte(PremiumTotalEclipse+7, 99, true) -- Premium Total Eclipse #7
		WriteByte(PremiumTotalEclipse+8, 99, true) -- Premium Total Eclipse #8
		WriteByte(PremiumTotalEclipse+9, 99, true) -- Premium Total Eclipse #9
		
		WriteByte(PremiumMidnightRoar, 99, true)   -- Premium Midnight Roar #0
		WriteByte(PremiumMidnightRoar+1, 99, true) -- Premium Midnight Roar #1
		WriteByte(PremiumMidnightRoar+2, 99, true) -- Premium Midnight Roar #2
		WriteByte(PremiumMidnightRoar+3, 99, true) -- Premium Midnight Roar #3
		WriteByte(PremiumMidnightRoar+4, 99, true) -- Premium Midnight Roar #4
		WriteByte(PremiumMidnightRoar+5, 99, true) -- Premium Midnight Roar #5
		WriteByte(PremiumMidnightRoar+6, 99, true) -- Premium Midnight Roar #6
		WriteByte(PremiumMidnightRoar+7, 99, true) -- Premium Midnight Roar #7
		WriteByte(PremiumMidnightRoar+8, 99, true) -- Premium Midnight Roar #8
		WriteByte(PremiumMidnightRoar+9, 99, true) -- Premium Midnight Roar #9
		
		WriteByte(PremiumMaverickFlare, 99, true)   -- Premium Maverick Flare #0
		WriteByte(PremiumMaverickFlare+1, 99, true) -- Premium Maverick Flare #1
		WriteByte(PremiumMaverickFlare+2, 99, true) -- Premium Maverick Flare #2
		WriteByte(PremiumMaverickFlare+3, 99, true) -- Premium Maverick Flare #3
		WriteByte(PremiumMaverickFlare+4, 99, true) -- Premium Maverick Flare #4
		WriteByte(PremiumMaverickFlare+5, 99, true) -- Premium Maverick Flare #5
		WriteByte(PremiumMaverickFlare+6, 99, true) -- Premium Maverick Flare #6
		WriteByte(PremiumMaverickFlare+7, 99, true) -- Premium Maverick Flare #7
		WriteByte(PremiumMaverickFlare+8, 99, true) -- Premium Maverick Flare #8
		WriteByte(PremiumMaverickFlare+9, 99, true) -- Premium Maverick Flare #9
		
		WriteByte(PremiumTwoBecomeOne, 99, true)   -- Premium Two Become One #0
		WriteByte(PremiumTwoBecomeOne+1, 99, true) -- Premium Two Become One #1
		WriteByte(PremiumTwoBecomeOne+2, 99, true) -- Premium Two Become One #2
		WriteByte(PremiumTwoBecomeOne+3, 99, true) -- Premium Two Become One #3
		WriteByte(PremiumTwoBecomeOne+4, 99, true) -- Premium Two Become One #4
		WriteByte(PremiumTwoBecomeOne+5, 99, true) -- Premium Two Become One #5
		WriteByte(PremiumTwoBecomeOne+6, 99, true) -- Premium Two Become One #6
		WriteByte(PremiumTwoBecomeOne+7, 99, true) -- Premium Two Become One #7
		WriteByte(PremiumTwoBecomeOne+8, 99, true) -- Premium Two Become One #8
		WriteByte(PremiumTwoBecomeOne+9, 99, true) -- Premium Two Become One #9
		
		WriteByte(PremiumBondofFlame, 99, true)   -- Premium Bond of Flame #0
		WriteByte(PremiumBondofFlame+1, 99, true) -- Premium Bond of Flame #1
		WriteByte(PremiumBondofFlame+2, 99, true) -- Premium Bond of Flame #2
		WriteByte(PremiumBondofFlame+3, 99, true) -- Premium Bond of Flame #3
		WriteByte(PremiumBondofFlame+4, 99, true) -- Premium Bond of Flame #4
		WriteByte(PremiumBondofFlame+5, 99, true) -- Premium Bond of Flame #5
		WriteByte(PremiumBondofFlame+6, 99, true) -- Premium Bond of Flame #6
		WriteByte(PremiumBondofFlame+7, 99, true) -- Premium Bond of Flame #7
		WriteByte(PremiumBondofFlame+8, 99, true) -- Premium Bond of Flame #8
		WriteByte(PremiumBondofFlame+9, 99, true) -- Premium Bond of Flame #9
		
		WriteByte(Fire, 99, true)   -- Fire #0
		WriteByte(Fire+1, 99, true) -- Fire #1
		WriteByte(Fire+2, 99, true) -- Fire #2
		WriteByte(Fire+3, 99, true) -- Fire #3
		WriteByte(Fire+4, 99, true) -- Fire #4
		WriteByte(Fire+5, 99, true) -- Fire #5
		WriteByte(Fire+6, 99, true) -- Fire #6
		WriteByte(Fire+7, 99, true) -- Fire #7
		WriteByte(Fire+8, 99, true) -- Fire #8
		WriteByte(Fire+9, 99, true) -- Fire #9
		
		WriteByte(Blizzard, 99, true)   -- Blizzard #0
		WriteByte(Blizzard+1, 99, true) -- Blizzard #1
		WriteByte(Blizzard+2, 99, true) -- Blizzard #2
		WriteByte(Blizzard+3, 99, true) -- Blizzard #3
		WriteByte(Blizzard+4, 99, true) -- Blizzard #4
		WriteByte(Blizzard+5, 99, true) -- Blizzard #5
		WriteByte(Blizzard+6, 99, true) -- Blizzard #6
		WriteByte(Blizzard+7, 99, true) -- Blizzard #7
		WriteByte(Blizzard+8, 99, true) -- Blizzard #8
		WriteByte(Blizzard+9, 99, true) -- Blizzard #9
		
		WriteByte(Thunder, 99, true)   -- Thunder #0
		WriteByte(Thunder+1, 99, true) -- Thunder #1
		WriteByte(Thunder+2, 99, true) -- Thunder #2
		WriteByte(Thunder+3, 99, true) -- Thunder #3
		WriteByte(Thunder+4, 99, true) -- Thunder #4
		WriteByte(Thunder+5, 99, true) -- Thunder #5
		WriteByte(Thunder+6, 99, true) -- Thunder #6
		WriteByte(Thunder+7, 99, true) -- Thunder #7
		WriteByte(Thunder+8, 99, true) -- Thunder #8
		WriteByte(Thunder+9, 99, true) -- Thunder #9
		
		WriteByte(Cure, 99, true)   -- Cure #0
		WriteByte(Cure+1, 99, true) -- Cure #1
		WriteByte(Cure+2, 99, true) -- Cure #2
		WriteByte(Cure+3, 99, true) -- Cure #3
		WriteByte(Cure+4, 99, true) -- Cure #4
		WriteByte(Cure+5, 99, true) -- Cure #5
		WriteByte(Cure+6, 99, true) -- Cure #6
		WriteByte(Cure+7, 99, true) -- Cure #7
		WriteByte(Cure+8, 99, true) -- Cure #8
		WriteByte(Cure+9, 99, true) -- Cure #9
		
		WriteByte(Gravity, 99, true)   -- Gravity #0
		WriteByte(Gravity+1, 99, true) -- Gravity #1
		WriteByte(Gravity+2, 99, true) -- Gravity #2
		WriteByte(Gravity+3, 99, true) -- Gravity #3
		WriteByte(Gravity+4, 99, true) -- Gravity #4
		WriteByte(Gravity+5, 99, true) -- Gravity #5
		WriteByte(Gravity+6, 99, true) -- Gravity #6
		WriteByte(Gravity+7, 99, true) -- Gravity #7
		WriteByte(Gravity+8, 99, true) -- Gravity #8
		WriteByte(Gravity+9, 99, true) -- Gravity #9
		
		WriteByte(Stop, 99, true)   -- Stop #0
		WriteByte(Stop+1, 99, true) -- Stop #1
		WriteByte(Stop+2, 99, true) -- Stop #2
		WriteByte(Stop+3, 99, true) -- Stop #3
		WriteByte(Stop+4, 99, true) -- Stop #4
		WriteByte(Stop+5, 99, true) -- Stop #5
		WriteByte(Stop+6, 99, true) -- Stop #6
		WriteByte(Stop+7, 99, true) -- Stop #7
		WriteByte(Stop+8, 99, true) -- Stop #8
		WriteByte(Stop+9, 99, true) -- Stop #9
		
		WriteByte(Aero, 99, true)   -- Aero #0
		WriteByte(Aero+1, 99, true) -- Aero #1
		WriteByte(Aero+2, 99, true) -- Aero #2
		WriteByte(Aero+3, 99, true) -- Aero #3
		WriteByte(Aero+4, 99, true) -- Aero #4
		WriteByte(Aero+5, 99, true) -- Aero #5
		WriteByte(Aero+6, 99, true) -- Aero #6
		WriteByte(Aero+7, 99, true) -- Aero #7
		WriteByte(Aero+8, 99, true) -- Aero #8
		WriteByte(Aero+9, 99, true) -- Aero #9
		
		WriteByte(UnkownMagic1, 99, true)   -- Unkown Magic 1 #0
		WriteByte(UnkownMagic1+1, 99, true) -- Unkown Magic 1 #1
		WriteByte(UnkownMagic1+2, 99, true) -- Unkown Magic 1 #2
		WriteByte(UnkownMagic1+3, 99, true) -- Unkown Magic 1 #3
		WriteByte(UnkownMagic1+4, 99, true) -- Unkown Magic 1 #4
		WriteByte(UnkownMagic1+5, 99, true) -- Unkown Magic 1 #5
		WriteByte(UnkownMagic1+6, 99, true) -- Unkown Magic 1 #6
		WriteByte(UnkownMagic1+7, 99, true) -- Unkown Magic 1 #7
		WriteByte(UnkownMagic1+8, 99, true) -- Unkown Magic 1 #8
		WriteByte(UnkownMagic1+9, 99, true) -- Unkown Magic 1 #9
		
		WriteByte(UnkownMagic2, 99, true)   -- Unkown Magic 2 #0
		WriteByte(UnkownMagic2+1, 99, true) -- Unkown Magic 2 #1
		WriteByte(UnkownMagic2+2, 99, true) -- Unkown Magic 2 #2
		WriteByte(UnkownMagic2+3, 99, true) -- Unkown Magic 2 #3
		WriteByte(UnkownMagic2+4, 99, true) -- Unkown Magic 2 #4
		WriteByte(UnkownMagic2+5, 99, true) -- Unkown Magic 2 #5
		WriteByte(UnkownMagic2+6, 99, true) -- Unkown Magic 2 #6
		WriteByte(UnkownMagic2+7, 99, true) -- Unkown Magic 2 #7
		WriteByte(UnkownMagic2+8, 99, true) -- Unkown Magic 2 #8
		WriteByte(UnkownMagic2+9, 99, true) -- Unkown Magic 2 #9
		
		WriteByte(Simba, 99, true)   -- Simba #0
		WriteByte(Simba+1, 99, true) -- Simba #1
		WriteByte(Simba+2, 99, true) -- Simba #2
		WriteByte(Simba+3, 99, true) -- Simba #3
		WriteByte(Simba+4, 99, true) -- Simba #4
		WriteByte(Simba+5, 99, true) -- Simba #5
		WriteByte(Simba+6, 99, true) -- Simba #6
		WriteByte(Simba+7, 99, true) -- Simba #7
		WriteByte(Simba+8, 99, true) -- Simba #8
		WriteByte(Simba+9, 99, true) -- Simba #9
		
		WriteByte(Genie, 99, true)   -- Genie #0
		WriteByte(Genie+1, 99, true) -- Genie #1
		WriteByte(Genie+2, 99, true) -- Genie #2
		WriteByte(Genie+3, 99, true) -- Genie #3
		WriteByte(Genie+4, 99, true) -- Genie #4
		WriteByte(Genie+5, 99, true) -- Genie #5
		WriteByte(Genie+6, 99, true) -- Genie #6
		WriteByte(Genie+7, 99, true) -- Genie #7
		WriteByte(Genie+8, 99, true) -- Genie #8
		WriteByte(Genie+9, 99, true) -- Genie #9
		
		WriteByte(Bambi, 99, true)   -- Bambi #0
		WriteByte(Bambi+1, 99, true) -- Bambi #1
		WriteByte(Bambi+2, 99, true) -- Bambi #2
		WriteByte(Bambi+3, 99, true) -- Bambi #3
		WriteByte(Bambi+4, 99, true) -- Bambi #4
		WriteByte(Bambi+5, 99, true) -- Bambi #5
		WriteByte(Bambi+6, 99, true) -- Bambi #6
		WriteByte(Bambi+7, 99, true) -- Bambi #7
		WriteByte(Bambi+8, 99, true) -- Bambi #8
		WriteByte(Bambi+9, 99, true) -- Bambi #9
		
		WriteByte(Dumbo, 99, true)   -- Dumbo #0
		WriteByte(Dumbo+1, 99, true) -- Dumbo #1
		WriteByte(Dumbo+2, 99, true) -- Dumbo #2
		WriteByte(Dumbo+3, 99, true) -- Dumbo #3
		WriteByte(Dumbo+4, 99, true) -- Dumbo #4
		WriteByte(Dumbo+5, 99, true) -- Dumbo #5
		WriteByte(Dumbo+6, 99, true) -- Dumbo #6
		WriteByte(Dumbo+7, 99, true) -- Dumbo #7
		WriteByte(Dumbo+8, 99, true) -- Dumbo #8
		WriteByte(Dumbo+9, 99, true) -- Dumbo #9
		
		WriteByte(TinkerBell, 99, true)   -- Tinker Bell #0
		WriteByte(TinkerBell+1, 99, true) -- Tinker Bell #1
		WriteByte(TinkerBell+2, 99, true) -- Tinker Bell #2
		WriteByte(TinkerBell+3, 99, true) -- Tinker Bell #3
		WriteByte(TinkerBell+4, 99, true) -- Tinker Bell #4
		WriteByte(TinkerBell+5, 99, true) -- Tinker Bell #5
		WriteByte(TinkerBell+6, 99, true) -- Tinker Bell #6
		WriteByte(TinkerBell+7, 99, true) -- Tinker Bell #7
		WriteByte(TinkerBell+8, 99, true) -- Tinker Bell #8
		WriteByte(TinkerBell+9, 99, true) -- Tinker Bell #9
		
		WriteByte(Mushu, 99, true)   -- Mushu #0
		WriteByte(Mushu+1, 99, true) -- Mushu #1
		WriteByte(Mushu+2, 99, true) -- Mushu #2
		WriteByte(Mushu+3, 99, true) -- Mushu #3
		WriteByte(Mushu+4, 99, true) -- Mushu #4
		WriteByte(Mushu+5, 99, true) -- Mushu #5
		WriteByte(Mushu+6, 99, true) -- Mushu #6
		WriteByte(Mushu+7, 99, true) -- Mushu #7
		WriteByte(Mushu+8, 99, true) -- Mushu #8
		WriteByte(Mushu+9, 99, true) -- Mushu #9
		
		WriteByte(Cloud, 99, true)   -- Cloud #0
		WriteByte(Cloud+1, 99, true) -- Cloud #1
		WriteByte(Cloud+2, 99, true) -- Cloud #2
		WriteByte(Cloud+3, 99, true) -- Cloud #3
		WriteByte(Cloud+4, 99, true) -- Cloud #4
		WriteByte(Cloud+5, 99, true) -- Cloud #5
		WriteByte(Cloud+6, 99, true) -- Cloud #6
		WriteByte(Cloud+7, 99, true) -- Cloud #7
		WriteByte(Cloud+8, 99, true) -- Cloud #8
		WriteByte(Cloud+9, 99, true) -- Cloud #9
		
		WriteByte(PremiumFire, 99, true)   -- Premium Fire #0
		WriteByte(PremiumFire+1, 99, true) -- Premium Fire #1
		WriteByte(PremiumFire+2, 99, true) -- Premium Fire #2
		WriteByte(PremiumFire+3, 99, true) -- Premium Fire #3
		WriteByte(PremiumFire+4, 99, true) -- Premium Fire #4
		WriteByte(PremiumFire+5, 99, true) -- Premium Fire #5
		WriteByte(PremiumFire+6, 99, true) -- Premium Fire #6
		WriteByte(PremiumFire+7, 99, true) -- Premium Fire #7
		WriteByte(PremiumFire+8, 99, true) -- Premium Fire #8
		WriteByte(PremiumFire+9, 99, true) -- Premium Fire #9
		
		WriteByte(PremiumBlizzard, 99, true)   -- Premium Blizzard #0
		WriteByte(PremiumBlizzard+1, 99, true) -- Premium Blizzard #1
		WriteByte(PremiumBlizzard+2, 99, true) -- Premium Blizzard #2
		WriteByte(PremiumBlizzard+3, 99, true) -- Premium Blizzard #3
		WriteByte(PremiumBlizzard+4, 99, true) -- Premium Blizzard #4
		WriteByte(PremiumBlizzard+5, 99, true) -- Premium Blizzard #5
		WriteByte(PremiumBlizzard+6, 99, true) -- Premium Blizzard #6
		WriteByte(PremiumBlizzard+7, 99, true) -- Premium Blizzard #7
		WriteByte(PremiumBlizzard+8, 99, true) -- Premium Blizzard #8
		WriteByte(PremiumBlizzard+9, 99, true) -- Premium Blizzard #9
		
		WriteByte(PremiumThunder, 99, true)   -- Premium Thunder #0
		WriteByte(PremiumThunder+1, 99, true) -- Premium Thunder #1
		WriteByte(PremiumThunder+2, 99, true) -- Premium Thunder #2
		WriteByte(PremiumThunder+3, 99, true) -- Premium Thunder #3
		WriteByte(PremiumThunder+4, 99, true) -- Premium Thunder #4
		WriteByte(PremiumThunder+5, 99, true) -- Premium Thunder #5
		WriteByte(PremiumThunder+6, 99, true) -- Premium Thunder #6
		WriteByte(PremiumThunder+7, 99, true) -- Premium Thunder #7
		WriteByte(PremiumThunder+8, 99, true) -- Premium Thunder #8
		WriteByte(PremiumThunder+9, 99, true) -- Premium Thunder #9
		
		WriteByte(PremiumCure, 99, true)   -- Premium Cure #0
		WriteByte(PremiumCure+1, 99, true) -- Premium Cure #1
		WriteByte(PremiumCure+2, 99, true) -- Premium Cure #2
		WriteByte(PremiumCure+3, 99, true) -- Premium Cure #3
		WriteByte(PremiumCure+4, 99, true) -- Premium Cure #4
		WriteByte(PremiumCure+5, 99, true) -- Premium Cure #5
		WriteByte(PremiumCure+6, 99, true) -- Premium Cure #6
		WriteByte(PremiumCure+7, 99, true) -- Premium Cure #7
		WriteByte(PremiumCure+8, 99, true) -- Premium Cure #8
		WriteByte(PremiumCure+9, 99, true) -- Premium Cure #9
		
		WriteByte(PremiumGravity, 99, true)   -- Premium Gravity #0
		WriteByte(PremiumGravity+1, 99, true) -- Premium Gravity #1
		WriteByte(PremiumGravity+2, 99, true) -- Premium Gravity #2
		WriteByte(PremiumGravity+3, 99, true) -- Premium Gravity #3
		WriteByte(PremiumGravity+4, 99, true) -- Premium Gravity #4
		WriteByte(PremiumGravity+5, 99, true) -- Premium Gravity #5
		WriteByte(PremiumGravity+6, 99, true) -- Premium Gravity #6
		WriteByte(PremiumGravity+7, 99, true) -- Premium Gravity #7
		WriteByte(PremiumGravity+8, 99, true) -- Premium Gravity #8
		WriteByte(PremiumGravity+9, 99, true) -- Premium Gravity #9
		
		WriteByte(PremiumStop, 99, true)   -- Premium Stop #0
		WriteByte(PremiumStop+1, 99, true) -- Premium Stop #1
		WriteByte(PremiumStop+2, 99, true) -- Premium Stop #2
		WriteByte(PremiumStop+3, 99, true) -- Premium Stop #3
		WriteByte(PremiumStop+4, 99, true) -- Premium Stop #4
		WriteByte(PremiumStop+5, 99, true) -- Premium Stop #5
		WriteByte(PremiumStop+6, 99, true) -- Premium Stop #6
		WriteByte(PremiumStop+7, 99, true) -- Premium Stop #7
		WriteByte(PremiumStop+8, 99, true) -- Premium Stop #8
		WriteByte(PremiumStop+9, 99, true) -- Premium Stop #9
		
		WriteByte(PremiumAero, 99, true)   -- Premium Aero #0
		WriteByte(PremiumAero+1, 99, true) -- Premium Aero #1
		WriteByte(PremiumAero+2, 99, true) -- Premium Aero #2
		WriteByte(PremiumAero+3, 99, true) -- Premium Aero #3
		WriteByte(PremiumAero+4, 99, true) -- Premium Aero #4
		WriteByte(PremiumAero+5, 99, true) -- Premium Aero #5
		WriteByte(PremiumAero+6, 99, true) -- Premium Aero #6
		WriteByte(PremiumAero+7, 99, true) -- Premium Aero #7
		WriteByte(PremiumAero+8, 99, true) -- Premium Aero #8
		WriteByte(PremiumAero+9, 99, true) -- Premium Aero #9
		
		WriteByte(PremiumUnkownMagic1, 99, true)   -- Premium Unkown Magic 1 #0
		WriteByte(PremiumUnkownMagic1+1, 99, true) -- Premium Unkown Magic 1 #1
		WriteByte(PremiumUnkownMagic1+2, 99, true) -- Premium Unkown Magic 1 #2
		WriteByte(PremiumUnkownMagic1+3, 99, true) -- Premium Unkown Magic 1 #3
		WriteByte(PremiumUnkownMagic1+4, 99, true) -- Premium Unkown Magic 1 #4
		WriteByte(PremiumUnkownMagic1+5, 99, true) -- Premium Unkown Magic 1 #5
		WriteByte(PremiumUnkownMagic1+6, 99, true) -- Premium Unkown Magic 1 #6
		WriteByte(PremiumUnkownMagic1+7, 99, true) -- Premium Unkown Magic 1 #7
		WriteByte(PremiumUnkownMagic1+8, 99, true) -- Premium Unkown Magic 1 #8
		WriteByte(PremiumUnkownMagic1+9, 99, true) -- Premium Unkown Magic 1 #9
		
		WriteByte(PremiumUnkownMagic2, 99, true)   -- Premium Unkown Magic 2 #0
		WriteByte(PremiumUnkownMagic2+1, 99, true) -- Premium Unkown Magic 2 #1
		WriteByte(PremiumUnkownMagic2+2, 99, true) -- Premium Unkown Magic 2 #2
		WriteByte(PremiumUnkownMagic2+3, 99, true) -- Premium Unkown Magic 2 #3
		WriteByte(PremiumUnkownMagic2+4, 99, true) -- Premium Unkown Magic 2 #4
		WriteByte(PremiumUnkownMagic2+5, 99, true) -- Premium Unkown Magic 2 #5
		WriteByte(PremiumUnkownMagic2+6, 99, true) -- Premium Unkown Magic 2 #6
		WriteByte(PremiumUnkownMagic2+7, 99, true) -- Premium Unkown Magic 2 #7
		WriteByte(PremiumUnkownMagic2+8, 99, true) -- Premium Unkown Magic 2 #8
		WriteByte(PremiumUnkownMagic2+9, 99, true) -- Premium Unkown Magic 2 #9
		
		WriteByte(PremiumSimba, 99, true)   -- Premium Simba #0
		WriteByte(PremiumSimba+1, 99, true) -- Premium Simba #1
		WriteByte(PremiumSimba+2, 99, true) -- Premium Simba #2
		WriteByte(PremiumSimba+3, 99, true) -- Premium Simba #3
		WriteByte(PremiumSimba+4, 99, true) -- Premium Simba #4
		WriteByte(PremiumSimba+5, 99, true) -- Premium Simba #5
		WriteByte(PremiumSimba+6, 99, true) -- Premium Simba #6
		WriteByte(PremiumSimba+7, 99, true) -- Premium Simba #7
		WriteByte(PremiumSimba+8, 99, true) -- Premium Simba #8
		WriteByte(PremiumSimba+9, 99, true) -- Premium Simba #9
		
		WriteByte(PremiumGenie, 99, true)   -- Premium Genie #0
		WriteByte(PremiumGenie+1, 99, true) -- Premium Genie #1
		WriteByte(PremiumGenie+2, 99, true) -- Premium Genie #2
		WriteByte(PremiumGenie+3, 99, true) -- Premium Genie #3
		WriteByte(PremiumGenie+4, 99, true) -- Premium Genie #4
		WriteByte(PremiumGenie+5, 99, true) -- Premium Genie #5
		WriteByte(PremiumGenie+6, 99, true) -- Premium Genie #6
		WriteByte(PremiumGenie+7, 99, true) -- Premium Genie #7
		WriteByte(PremiumGenie+8, 99, true) -- Premium Genie #8
		WriteByte(PremiumGenie+9, 99, true) -- Premium Genie #9
		
		WriteByte(PremiumBambi, 99, true)   -- Premium Bambi #0
		WriteByte(PremiumBambi+1, 99, true) -- Premium Bambi #1
		WriteByte(PremiumBambi+2, 99, true) -- Premium Bambi #2
		WriteByte(PremiumBambi+3, 99, true) -- Premium Bambi #3
		WriteByte(PremiumBambi+4, 99, true) -- Premium Bambi #4
		WriteByte(PremiumBambi+5, 99, true) -- Premium Bambi #5
		WriteByte(PremiumBambi+6, 99, true) -- Premium Bambi #6
		WriteByte(PremiumBambi+7, 99, true) -- Premium Bambi #7
		WriteByte(PremiumBambi+8, 99, true) -- Premium Bambi #8
		WriteByte(PremiumBambi+9, 99, true) -- Premium Bambi #9
		
		WriteByte(PremiumDumbo, 99, true)   -- Premium Dumbo #0
		WriteByte(PremiumDumbo+1, 99, true) -- Premium Dumbo #1
		WriteByte(PremiumDumbo+2, 99, true) -- Premium Dumbo #2
		WriteByte(PremiumDumbo+3, 99, true) -- Premium Dumbo #3
		WriteByte(PremiumDumbo+4, 99, true) -- Premium Dumbo #4
		WriteByte(PremiumDumbo+5, 99, true) -- Premium Dumbo #5
		WriteByte(PremiumDumbo+6, 99, true) -- Premium Dumbo #6
		WriteByte(PremiumDumbo+7, 99, true) -- Premium Dumbo #7
		WriteByte(PremiumDumbo+8, 99, true) -- Premium Dumbo #8
		WriteByte(PremiumDumbo+9, 99, true) -- Premium Dumbo #9
		
		WriteByte(PremiumTinkerBell, 99, true)   -- Premium Tinker Bell #0
		WriteByte(PremiumTinkerBell+1, 99, true) -- Premium Tinker Bell #1
		WriteByte(PremiumTinkerBell+2, 99, true) -- Premium Tinker Bell #2
		WriteByte(PremiumTinkerBell+3, 99, true) -- Premium Tinker Bell #3
		WriteByte(PremiumTinkerBell+4, 99, true) -- Premium Tinker Bell #4
		WriteByte(PremiumTinkerBell+5, 99, true) -- Premium Tinker Bell #5
		WriteByte(PremiumTinkerBell+6, 99, true) -- Premium Tinker Bell #6
		WriteByte(PremiumTinkerBell+7, 99, true) -- Premium Tinker Bell #7
		WriteByte(PremiumTinkerBell+8, 99, true) -- Premium Tinker Bell #8
		WriteByte(PremiumTinkerBell+9, 99, true) -- Premium Tinker Bell #9
		
		WriteByte(PremiumMushu, 99, true)   -- Premium Mushu #0
		WriteByte(PremiumMushu+1, 99, true) -- Premium Mushu #1
		WriteByte(PremiumMushu+2, 99, true) -- Premium Mushu #2
		WriteByte(PremiumMushu+3, 99, true) -- Premium Mushu #3
		WriteByte(PremiumMushu+4, 99, true) -- Premium Mushu #4
		WriteByte(PremiumMushu+5, 99, true) -- Premium Mushu #5
		WriteByte(PremiumMushu+6, 99, true) -- Premium Mushu #6
		WriteByte(PremiumMushu+7, 99, true) -- Premium Mushu #7
		WriteByte(PremiumMushu+8, 99, true) -- Premium Mushu #8
		WriteByte(PremiumMushu+9, 99, true) -- Premium Mushu #9
		
		WriteByte(PremiumCloud, 99, true)   -- Premium Cloud #0
		WriteByte(PremiumCloud+1, 99, true) -- Premium Cloud #1
		WriteByte(PremiumCloud+2, 99, true) -- Premium Cloud #2
		WriteByte(PremiumCloud+3, 99, true) -- Premium Cloud #3
		WriteByte(PremiumCloud+4, 99, true) -- Premium Cloud #4
		WriteByte(PremiumCloud+5, 99, true) -- Premium Cloud #5
		WriteByte(PremiumCloud+6, 99, true) -- Premium Cloud #6
		WriteByte(PremiumCloud+7, 99, true) -- Premium Cloud #7
		WriteByte(PremiumCloud+8, 99, true) -- Premium Cloud #8
		WriteByte(PremiumCloud+9, 99, true) -- Premium Cloud #9
		
		WriteByte(Potion, 99, true)   -- Potion #0
		WriteByte(Potion+1, 99, true) -- Potion #1
		WriteByte(Potion+2, 99, true) -- Potion #2
		WriteByte(Potion+3, 99, true) -- Potion #3
		WriteByte(Potion+4, 99, true) -- Potion #4
		WriteByte(Potion+5, 99, true) -- Potion #5
		WriteByte(Potion+6, 99, true) -- Potion #6
		WriteByte(Potion+7, 99, true) -- Potion #7
		WriteByte(Potion+8, 99, true) -- Potion #8
		WriteByte(Potion+9, 99, true) -- Potion #9
		
		WriteByte(HiPotion, 99, true)   -- Hi-Potion #0
		WriteByte(HiPotion+1, 99, true) -- Hi-Potion #1
		WriteByte(HiPotion+2, 99, true) -- Hi-Potion #2
		WriteByte(HiPotion+3, 99, true) -- Hi-Potion #3
		WriteByte(HiPotion+4, 99, true) -- Hi-Potion #4
		WriteByte(HiPotion+5, 99, true) -- Hi-Potion #5
		WriteByte(HiPotion+6, 99, true) -- Hi-Potion #6
		WriteByte(HiPotion+7, 99, true) -- Hi-Potion #7
		WriteByte(HiPotion+8, 99, true) -- Hi-Potion #8
		WriteByte(HiPotion+9, 99, true) -- Hi-Potion #9
		
		WriteByte(MegaPotion, 99, true)   -- Mega-Potion #0
		WriteByte(MegaPotion+1, 99, true) -- Mega-Potion #1
		WriteByte(MegaPotion+2, 99, true) -- Mega-Potion #2
		WriteByte(MegaPotion+3, 99, true) -- Mega-Potion #3
		WriteByte(MegaPotion+4, 99, true) -- Mega-Potion #4
		WriteByte(MegaPotion+5, 99, true) -- Mega-Potion #5
		WriteByte(MegaPotion+6, 99, true) -- Mega-Potion #6
		WriteByte(MegaPotion+7, 99, true) -- Mega-Potion #7
		WriteByte(MegaPotion+8, 99, true) -- Mega-Potion #8
		WriteByte(MegaPotion+9, 99, true) -- Mega-Potion #9
		
		WriteByte(Ether, 99, true)   -- Ether #0
		WriteByte(Ether+1, 99, true) -- Ether #1
		WriteByte(Ether+2, 99, true) -- Ether #2
		WriteByte(Ether+3, 99, true) -- Ether #3
		WriteByte(Ether+4, 99, true) -- Ether #4
		WriteByte(Ether+5, 99, true) -- Ether #5
		WriteByte(Ether+6, 99, true) -- Ether #6
		WriteByte(Ether+7, 99, true) -- Ether #7
		WriteByte(Ether+8, 99, true) -- Ether #8
		WriteByte(Ether+9, 99, true) -- Ether #9
		
		WriteByte(MegaEther, 99, true)   -- Mega-Ether #0
		WriteByte(MegaEther+1, 99, true) -- Mega-Ether #1
		WriteByte(MegaEther+2, 99, true) -- Mega-Ether #2
		WriteByte(MegaEther+3, 99, true) -- Mega-Ether #3
		WriteByte(MegaEther+4, 99, true) -- Mega-Ether #4
		WriteByte(MegaEther+5, 99, true) -- Mega-Ether #5
		WriteByte(MegaEther+6, 99, true) -- Mega-Ether #6
		WriteByte(MegaEther+7, 99, true) -- Mega-Ether #7
		WriteByte(MegaEther+8, 99, true) -- Mega-Ether #8
		WriteByte(MegaEther+9, 99, true) -- Mega-Ether #9
		
		WriteByte(Elixir, 99, true)   -- Elixir #0
		WriteByte(Elixir+1, 99, true) -- Elixir #1
		WriteByte(Elixir+2, 99, true) -- Elixir #2
		WriteByte(Elixir+3, 99, true) -- Elixir #3
		WriteByte(Elixir+4, 99, true) -- Elixir #4
		WriteByte(Elixir+5, 99, true) -- Elixir #5
		WriteByte(Elixir+6, 99, true) -- Elixir #6
		WriteByte(Elixir+7, 99, true) -- Elixir #7
		WriteByte(Elixir+8, 99, true) -- Elixir #8
		WriteByte(Elixir+9, 99, true) -- Elixir #9
		
		WriteByte(Megalixir, 99, true)   -- Megalixir #0
		WriteByte(Megalixir+1, 99, true) -- Megalixir #1
		WriteByte(Megalixir+2, 99, true) -- Megalixir #2
		WriteByte(Megalixir+3, 99, true) -- Megalixir #3
		WriteByte(Megalixir+4, 99, true) -- Megalixir #4
		WriteByte(Megalixir+5, 99, true) -- Megalixir #5
		WriteByte(Megalixir+6, 99, true) -- Megalixir #6
		WriteByte(Megalixir+7, 99, true) -- Megalixir #7
		WriteByte(Megalixir+8, 99, true) -- Megalixir #8
		WriteByte(Megalixir+9, 99, true) -- Megalixir #9
		
		WriteByte(EnemyCards, 99, true)      -- Shadow
		WriteByte(EnemyCards+1, 99, true)    -- Soldier
		WriteByte(EnemyCards+2, 99, true)    -- Large Body
		WriteByte(EnemyCards+3, 99, true)    -- Red Nocturne
		WriteByte(EnemyCards+4, 99, true)    -- Blue Rhapsody
		WriteByte(EnemyCards+5, 99, true)    -- Yellow Opera
		WriteByte(EnemyCards+6, 99, true)    -- Green Requiem
		WriteByte(EnemyCards+7, 99, true)    -- Powerwild
		WriteByte(EnemyCards+8, 99, true)    -- Bouncywild
		WriteByte(EnemyCards+9, 99, true)    -- Air Solider
		WriteByte(EnemyCards+10, 99, true)   -- Bandit
		WriteByte(EnemyCards+11, 99, true)   -- Fat Bandit
		WriteByte(EnemyCards+12, 99, true)    -- Barrel Spider
		WriteByte(EnemyCards+13, 99, true)    -- Search Ghost
		WriteByte(EnemyCards+14, 99, true)    -- Sea Neon
		WriteByte(EnemyCards+15, 99, true)    -- Screwdriver
		WriteByte(EnemyCards+16, 99, true)    -- Aquatank
		WriteByte(EnemyCards+17, 99, true)    -- Wight Knight
		WriteByte(EnemyCards+18, 99, true)    -- Gargoyle
		WriteByte(EnemyCards+19, 99, true)    -- Pirate
		WriteByte(EnemyCards+20, 99, true)    -- Air Pirate
		WriteByte(EnemyCards+21, 99, true)    -- Darkball 
		WriteByte(EnemyCards+22, 99, true)    -- Defender
		WriteByte(EnemyCards+23, 99, true)    -- Wyvern
		WriteByte(EnemyCards+24, 99, true)    -- Wizard
		WriteByte(EnemyCards+25, 99, true)    -- Neoshadow
		WriteByte(EnemyCards+26, 99, true)    -- White Mushroom
		WriteByte(EnemyCards+27, 99, true)    -- Black Fungus
		WriteByte(EnemyCards+28, 99, true)    -- Creeper Plant
		WriteByte(EnemyCards+29, 99, true)    -- Tornado Step 
		WriteByte(EnemyCards+30, 99, true)    -- Crescendo
		WriteByte(EnemyCards+31, 99, true)    -- Guard Armor
		WriteByte(EnemyCards+32, 99, true)    -- Parasite Cage
		WriteByte(EnemyCards+33, 99, true)    -- Trickmaster
		WriteByte(EnemyCards+34, 99, true)    -- Darkside
		WriteByte(EnemyCards+35, 99, true)    -- Card Soldier 
		WriteByte(EnemyCards+36, 99, true)    -- Hades
		WriteByte(EnemyCards+37, 99, true)    -- Jafar-Genie
		WriteByte(EnemyCards+38, 99, true)    -- Oogie Boogie
		WriteByte(EnemyCards+39, 99, true)    -- Ursula
		WriteByte(EnemyCards+40, 99, true)    -- Hook
		WriteByte(EnemyCards+41, 99, true)    -- Dragon Maleficent
		WriteByte(EnemyCards+42, 99, true)    -- Riku Replica
		WriteByte(EnemyCards+43, 99, true)    -- Axel
		WriteByte(EnemyCards+44, 99, true)    -- Larxene
		WriteByte(EnemyCards+45, 99, true)    -- Vexen
		WriteByte(EnemyCards+46, 99, true)    -- Marluxia
		WriteByte(EnemyCards+47, 99, true)    -- Lexaeus
		WriteByte(EnemyCards+48, 99, true)    -- Ansem
		WriteByte(EnemyCards+49, 99, true)    -- Zexion
		WriteByte(EnemyCards+50, 99, true)    -- Xemnas
		WriteByte(EnemyCards+51, 99, true)    -- Xigbar
		WriteByte(EnemyCards+52, 99, true)    -- Xaldin
		WriteByte(EnemyCards+53, 99, true)    -- Saix
		WriteByte(EnemyCards+54, 99, true)    -- Demyx
		WriteByte(EnemyCards+55, 99, true)    -- Luxord
		WriteByte(EnemyCards+56, 99, true)    -- Roxas
		WriteByte(EnemyCards+57, 99, true)    -- Gold Card
		WriteByte(EnemyCards+58, 99, true)    -- Platinum Card
		
		if ReadByte(JournalBattleCardFlags, true) <= 1 then   -- Kingdom Key Journal Flag
			WriteByte(JournalBattleCardFlags, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+1, true) <= 1 then -- Three Wishes Journal Flag
			WriteByte(JournalBattleCardFlags+1, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+2, true) <= 1 then -- Crabclaw Journal Flag
			WriteByte(JournalBattleCardFlags+2, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+3, true) <= 1 then -- Pumpkinhead Journal Flag
			WriteByte(JournalBattleCardFlags+3, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+4, true) <= 1 then -- Fairy Harp Journal Flag
			WriteByte(JournalBattleCardFlags+4, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+5, true) <= 1 then -- Wishing Star Journal Flag
			WriteByte(JournalBattleCardFlags+5, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+6, true) <= 1 then -- Spellbinder Journal Flag
			WriteByte(JournalBattleCardFlags+6, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+7, true) <= 1 then -- Metall Chocobo Journal Flag
			WriteByte(JournalBattleCardFlags+7, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+8, true) <= 1 then -- Olympia Journal Flag
			WriteByte(JournalBattleCardFlags+8, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+9, true) <= 1 then -- Lionheart Journal Flag
			WriteByte(JournalBattleCardFlags+9, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+10, true) <= 1 then -- Lady Luck Journal Flag
			WriteByte(JournalBattleCardFlags+10, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+11, true) <= 1 then -- Divine Rose Journal Flag
			WriteByte(JournalBattleCardFlags+11, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+12, true) <= 1 then -- Oathkeeper Journal Flag
			WriteByte(JournalBattleCardFlags+12, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+13, true) <= 1 then -- Oblivion Journal Flag
			WriteByte(JournalBattleCardFlags+13, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+14, true) <= 1 then -- Ultima Weapon Journal Flag
			WriteByte(JournalBattleCardFlags+14, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+15, true) <= 1 then -- Diamond Dust Journal Flag
			WriteByte(JournalBattleCardFlags+15, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+16, true) <= 1 then -- One Winged Angel Journal Flag
			WriteByte(JournalBattleCardFlags+16, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+17, true) <= 1 then -- Star Seeker Journal Flag
			WriteByte(JournalBattleCardFlags+17, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+18, true) <= 1 then -- Total Eclipse Journal Flag
			WriteByte(JournalBattleCardFlags+18, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+19, true) <= 1 then -- Midnight Roar Journal Flag
			WriteByte(JournalBattleCardFlags+19, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+20, true) <= 1 then -- Maverick Flare Journal Flag
			WriteByte(JournalBattleCardFlags+20, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+21, true) <= 1 then -- Two Become One Journal Flag
			WriteByte(JournalBattleCardFlags+21, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+22, true) <= 1 then -- Bond of Flame Journal Flag
			WriteByte(JournalBattleCardFlags+22, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+23, true) <= 1 then -- Fire Journal Flag
			WriteByte(JournalBattleCardFlags+23, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+24, true) <= 1 then -- Blizzard Journal Flag
			WriteByte(JournalBattleCardFlags+24, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+25, true) <= 1 then -- Thunder Journal Flag
			WriteByte(JournalBattleCardFlags+25, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+26, true) <= 1 then -- Cure Journal Flag
			WriteByte(JournalBattleCardFlags+26, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+27, true) <= 1 then -- Gravity Journal Flag
			WriteByte(JournalBattleCardFlags+27, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+28, true) <= 1 then -- Stop Journal Flag
			WriteByte(JournalBattleCardFlags+28, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+29, true) <= 1 then -- Aero Journal Flag
			WriteByte(JournalBattleCardFlags+29, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+30, true) <= 1 then -- Simba Journal Flag
			WriteByte(JournalBattleCardFlags+30, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+31, true) <= 1 then -- Genie Journal Flag
			WriteByte(JournalBattleCardFlags+31, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+32, true) <= 1 then -- Bambi Journal Flag
			WriteByte(JournalBattleCardFlags+32, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+33, true) <= 1 then -- Dumbo Journal Flag
			WriteByte(JournalBattleCardFlags+33, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+34, true) <= 1 then -- Tinker Bell Journal Flag
			WriteByte(JournalBattleCardFlags+34, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+35, true) <= 1 then -- Mushu Bell Journal Flag
			WriteByte(JournalBattleCardFlags+35, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+36, true) <= 1 then -- Cloud Journal Flag
			WriteByte(JournalBattleCardFlags+36, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+37, true) <= 1 then -- Potion Journal Flag
			WriteByte(JournalBattleCardFlags+37, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+38, true) <= 1 then -- Hi-Potion Journal Flag
			WriteByte(JournalBattleCardFlags+38, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+39, true) <= 1 then -- Mega-Potion Journal Flag
			WriteByte(JournalBattleCardFlags+39, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+40, true) <= 1 then -- Ether Journal Flag
			WriteByte(JournalBattleCardFlags+40, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+41, true) <= 1 then -- Mega-Ether Journal Flag
			WriteByte(JournalBattleCardFlags+41, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+42, true) <= 1 then -- Elixir Journal Flag
			WriteByte(JournalBattleCardFlags+42, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+43, true) <= 1 then -- Megalixir Journal Flag
			WriteByte(JournalBattleCardFlags+43, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+44, true) <= 1 then -- Donald Journal Flag
			WriteByte(JournalBattleCardFlags+44, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+45, true) <= 1 then -- Goofy Journal Flag
			WriteByte(JournalBattleCardFlags+45, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+46, true) <= 1 then -- Aladdin Journal Flag
			WriteByte(JournalBattleCardFlags+46, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+47, true) <= 1 then -- Ariel Journal Flag
			WriteByte(JournalBattleCardFlags+47, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+48, true) <= 1 then -- Jack Journal Flag
			WriteByte(JournalBattleCardFlags+48, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+49, true) <= 1 then -- Peter Pan Journal Flag
			WriteByte(JournalBattleCardFlags+49, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+50, true) <= 1 then -- Beast Journal Flag
			WriteByte(JournalBattleCardFlags+50, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+51, true) <= 1 then -- Pluto Journal Flag
			WriteByte(JournalBattleCardFlags+51, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+52, true) <= 1 then -- Shadow Journal Flag
			WriteByte(JournalBattleCardFlags+52, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+53, true) <= 1 then -- Soldier Journal Flag
			WriteByte(JournalBattleCardFlags+53, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+54, true) <= 1 then -- Powerwild Journal Flag
			WriteByte(JournalBattleCardFlags+54, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+55, true) <= 1 then -- Bouncywild Journal Flag
			WriteByte(JournalBattleCardFlags+55, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+56, true) <= 1 then -- Large Body Journal Flag
			WriteByte(JournalBattleCardFlags+56, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+57, true) <= 1 then -- Fat Bandit Journal Flag
			WriteByte(JournalBattleCardFlags+57, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+58, true) <= 1 then -- Sea Neon Journal Flag
			WriteByte(JournalBattleCardFlags+58, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+59, true) <= 1 then -- Bandit Journal Flag
			WriteByte(JournalBattleCardFlags+59, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+60, true) <= 1 then -- Pirate Journal Flag
			WriteByte(JournalBattleCardFlags+60, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+61, true) <= 1 then -- Red Nocturne Journal Flag
			WriteByte(JournalBattleCardFlags+61, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+62, true) <= 1 then -- Blue Rhapsody Journal Flag
			WriteByte(JournalBattleCardFlags+62, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+63, true) <= 1 then -- Yellow Opera Journal Flag
			WriteByte(JournalBattleCardFlags+63, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+64, true) <= 1 then -- Green Requiem Journal Flag
			WriteByte(JournalBattleCardFlags+64, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+65, true) <= 1 then -- Wizzard Journal Flag
			WriteByte(JournalBattleCardFlags+65, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+66, true) <= 1 then -- Air Soldier Journal Flag
			WriteByte(JournalBattleCardFlags+66, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+67, true) <= 1 then -- Barrel Spider Journal Flag
			WriteByte(JournalBattleCardFlags+67, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+68, true) <= 1 then -- Wight Knight Journal Flag
			WriteByte(JournalBattleCardFlags+68, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+69, true) <= 1 then -- Air Pirate Journal Flag
			WriteByte(JournalBattleCardFlags+69, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+70, true) <= 1 then -- Gargoyle Journal Flag
			WriteByte(JournalBattleCardFlags+70, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+71, true) <= 1 then -- Search Ghost Journal Flag
			WriteByte(JournalBattleCardFlags+71, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+72, true) <= 1 then -- Aquatank Journal Flag
			WriteByte(JournalBattleCardFlags+72, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+73, true) <= 1 then -- Screwdriver Journal Flag
			WriteByte(JournalBattleCardFlags+73, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+74, true) <= 1 then -- Wyvern Journal Flag
			WriteByte(JournalBattleCardFlags+74, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+75, true) <= 1 then -- Defender Journal Flag
			WriteByte(JournalBattleCardFlags+75, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+76, true) <= 1 then -- White Mushroom Journal Flag
			WriteByte(JournalBattleCardFlags+76, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+77, true) <= 1 then -- Black Fungus Journal Flag
			WriteByte(JournalBattleCardFlags+77, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+78, true) <= 1 then -- Creeper Plant Journal Flag
			WriteByte(JournalBattleCardFlags+78, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+79, true) <= 1 then -- Tornado Step Journal Flag
			WriteByte(JournalBattleCardFlags+79, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+80, true) <= 1 then -- Crescendo Journal Flag
			WriteByte(JournalBattleCardFlags+80, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+81, true) <= 1 then -- Neoshadow Journal Flag
			WriteByte(JournalBattleCardFlags+81, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+82, true) <= 1 then -- Guardarmor Journal Flag
			WriteByte(JournalBattleCardFlags+82, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+83, true) <= 1 then -- Hades Journal Flag
			WriteByte(JournalBattleCardFlags+83, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+84, true) <= 1 then -- Trickmaster Journal Flag
			WriteByte(JournalBattleCardFlags+84, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+85, true) <= 1 then -- Jafar-Genie Journal Flag
			WriteByte(JournalBattleCardFlags+85, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+86, true) <= 1 then -- Ursula Journal Flag
			WriteByte(JournalBattleCardFlags+86, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+87, true) <= 1 then -- Oogie Boogie Journal Flag
			WriteByte(JournalBattleCardFlags+87, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+88, true) <= 1 then -- Parasite Cage Journal Flag
			WriteByte(JournalBattleCardFlags+88, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+89, true) <= 1 then -- Hook Journal Flag
			WriteByte(JournalBattleCardFlags+89, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+90, true) <= 1 then -- Dragon Maleficent Journal Flag
			WriteByte(JournalBattleCardFlags+90, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+91, true) <= 1 then -- Dark Side Journal Flag
			WriteByte(JournalBattleCardFlags+91, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+92, true) <= 1 then -- Riku Replica Journal Flag
			WriteByte(JournalBattleCardFlags+92, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+93, true) <= 1 then -- Card Solider Journal Flag
			WriteByte(JournalBattleCardFlags+93, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+94, true) <= 1 then -- Ansem Journal Flag
			WriteByte(JournalBattleCardFlags+94, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+95, true) <= 1 then -- Xenmas Journal Flag
			WriteByte(JournalBattleCardFlags+95, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+96, true) <= 1 then -- Xigbar Journal Flag
			WriteByte(JournalBattleCardFlags+96, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+97, true) <= 1 then -- Xaldin Journal Flag
			WriteByte(JournalBattleCardFlags+97, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+98, true) <= 1 then -- Vexen Journal Flag
			WriteByte(JournalBattleCardFlags+98, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+99, true) <= 1 then -- Lexaeus Journal Flag
			WriteByte(JournalBattleCardFlags+99, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+100, true) <= 1 then -- Zexion Journal Flag
			WriteByte(JournalBattleCardFlags+100, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+101, true) <= 1 then -- Saix Journal Flag
			WriteByte(JournalBattleCardFlags+101, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+102, true) <= 1 then -- Axel Journal Flag
			WriteByte(JournalBattleCardFlags+102, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+103, true) <= 1 then -- Demyx Journal Flag
			WriteByte(JournalBattleCardFlags+103, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+104, true) <= 1 then -- Luxord Journal Flag
			WriteByte(JournalBattleCardFlags+104, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+105, true) <= 1 then -- Marluxia Journal Flag
			WriteByte(JournalBattleCardFlags+105, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+106, true) <= 1 then -- Larxene Journal Flag
			WriteByte(JournalBattleCardFlags+106, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+107, true) <= 1 then -- Roxas Journal Flag
			WriteByte(JournalBattleCardFlags+107, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+149, true) <= 1 then -- Mickey Journal Flag
			WriteByte(JournalBattleCardFlags+149, 4, true)
		end

		if ReadByte(JournalBattleCardFlags+150, true) <= 1 then -- Gold Card Journal Flag
			WriteByte(JournalBattleCardFlags+150, 4, true)
		end
		
		if ReadByte(JournalBattleCardFlags+151, true) <= 1 then -- Platinum Card Journal Flag
			WriteByte(JournalBattleCardFlags+151, 4, true)
		end

end
end

end