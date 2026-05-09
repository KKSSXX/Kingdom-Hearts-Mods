LUAGUI_NAME = "All Synthesis Materials"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "All Synthesis Materials"

epiccheck = 0x585B61
stmcheck = epiccheck+0x2F8
stmjpcheck = epiccheck+0x2A8

function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
	IsEpicGame = 0
	IsSteamGame = 0
	IsSteamJPGame = 0
	end
	
			if ReadLong(epiccheck) == 0x7265737563697065 and IsEpicGame == 0 then
				IsEpicGame = 1
				ConsolePrint("All Synthesis Materials (EPIC GL) - installed")
			end
			
			if ReadLong(stmcheck) == 0x7265737563697065 and IsSteamGame == 0 then
				IsSteamGame = 1
				ConsolePrint("All Synthesis Materials (Steam GL) - installed")
			end
			
			if ReadLong(stmjpcheck) == 0x7265737563697065 and IsSteamJPGame == 0 then
				IsSteamJPGame = 1
				ConsolePrint("All Synthesis Materials (Steam JP) - installed")
			end
end

function _OnFrame()	
			if IsEpicGame == 1 then
			BlazingShard = 0x9AC93F
			BlazingStone = BlazingShard+0x1
			BlazingGem = BlazingShard+0x2
			BlazingCrystal = BlazingShard+0x3
			FrostShard = BlazingShard+0x3D
			FrostStone = BlazingShard+0x3E
			FrostGem = BlazingShard+0x3F
			FrostCrystal = BlazingShard+0x40
			LightningShard = BlazingShard+0x8
			LightningStone = BlazingShard+0x9
			LightningGem = BlazingShard+0xA
			LightningCrystal = BlazingShard+0xB
			LucidShard = BlazingShard+0x10
			LucidStone = BlazingShard+0x11
			LucidGem = BlazingShard+0x12
			LucidCrystal = BlazingShard+0x13
			PowerShard = BlazingShard+0xC
			PowerStone = BlazingShard+0xD
			PowerGem = BlazingShard+0xE
			PowerCrystal = BlazingShard+0xF
			DarkShard = BlazingShard+0x5B
			DarkStone = BlazingShard+0x5C
			DarkGem = BlazingShard+0x5D
			DarkCrystal = BlazingShard+0x5E
			DenseShard = BlazingShard+0x14
			DenseStone = BlazingShard+0x15
			DenseGem = BlazingShard+0x16
			DenseCrystal = BlazingShard+0x17
			TwilightShard = BlazingShard+0x18
			TwilightStone = BlazingShard+0x19
			TwilightGem = BlazingShard+0x1A
			TwilightCrystal = BlazingShard+0x1B
			MythrilShard = BlazingShard+0x1C
			MythrilStone = BlazingShard+0x1D
			MythrilGem = BlazingShard+0x1E
			MythrilCrystal = BlazingShard+0x1F
			RemembranceShard = BlazingShard+0x99
			RemembranceStone = BlazingShard+0x9A
			RemembranceGem = BlazingShard+0x9B
			RemembranceCrystal = BlazingShard+0x9C
			TranquilityShard = BlazingShard+0x9D
			TranquilityStone = BlazingShard+0x9E
			TranquilityGem = BlazingShard+0x9F
			TranquilityCrystal = BlazingShard+0xA0
			BrightShard = BlazingShard+0x20
			BrightStone = BlazingShard+0x21
			BrightGem = BlazingShard+0x22
			BrightCrystal = BlazingShard+0x23
			EnergyShard = BlazingShard+0x24
			EnergyStone = BlazingShard+0x25
			EnergyGem = BlazingShard+0x26
			EnergyCrystal = BlazingShard+0x27
			SerenityShard = BlazingShard+0x28
			SerenityStone = BlazingShard+0x29
			SerenityGem = BlazingShard+0x2A
			SerenityCrystal = BlazingShard+0x2B
			Orichalcum = BlazingShard+0x3C
			OrichalcumPlus = BlazingShard+0x2C
			ManifestIlusion = BlazingShard+0xA1
			LostIlusion = BlazingShard+0xA2
			SynthMats()
			end
			
			if IsSteamGame == 1 then
			BlazingShard = 0x9ACEBF
			BlazingStone = BlazingShard+0x1
			BlazingGem = BlazingShard+0x2
			BlazingCrystal = BlazingShard+0x3
			FrostShard = BlazingShard+0x3D
			FrostStone = BlazingShard+0x3E
			FrostGem = BlazingShard+0x3F
			FrostCrystal = BlazingShard+0x40
			LightningShard = BlazingShard+0x8
			LightningStone = BlazingShard+0x9
			LightningGem = BlazingShard+0xA
			LightningCrystal = BlazingShard+0xB
			LucidShard = BlazingShard+0x10
			LucidStone = BlazingShard+0x11
			LucidGem = BlazingShard+0x12
			LucidCrystal = BlazingShard+0x13
			PowerShard = BlazingShard+0xC
			PowerStone = BlazingShard+0xD
			PowerGem = BlazingShard+0xE
			PowerCrystal = BlazingShard+0xF
			DarkShard = BlazingShard+0x5B
			DarkStone = BlazingShard+0x5C
			DarkGem = BlazingShard+0x5D
			DarkCrystal = BlazingShard+0x5E
			DenseShard = BlazingShard+0x14
			DenseStone = BlazingShard+0x15
			DenseGem = BlazingShard+0x16
			DenseCrystal = BlazingShard+0x17
			TwilightShard = BlazingShard+0x18
			TwilightStone = BlazingShard+0x19
			TwilightGem = BlazingShard+0x1A
			TwilightCrystal = BlazingShard+0x1B
			MythrilShard = BlazingShard+0x1C
			MythrilStone = BlazingShard+0x1D
			MythrilGem = BlazingShard+0x1E
			MythrilCrystal = BlazingShard+0x1F
			RemembranceShard = BlazingShard+0x99
			RemembranceStone = BlazingShard+0x9A
			RemembranceGem = BlazingShard+0x9B
			RemembranceCrystal = BlazingShard+0x9C
			TranquilityShard = BlazingShard+0x9D
			TranquilityStone = BlazingShard+0x9E
			TranquilityGem = BlazingShard+0x9F
			TranquilityCrystal = BlazingShard+0xA0
			BrightShard = BlazingShard+0x20
			BrightStone = BlazingShard+0x21
			BrightGem = BlazingShard+0x22
			BrightCrystal = BlazingShard+0x23
			EnergyShard = BlazingShard+0x24
			EnergyStone = BlazingShard+0x25
			EnergyGem = BlazingShard+0x26
			EnergyCrystal = BlazingShard+0x27
			SerenityShard = BlazingShard+0x28
			SerenityStone = BlazingShard+0x29
			SerenityGem = BlazingShard+0x2A
			SerenityCrystal = BlazingShard+0x2B
			Orichalcum = BlazingShard+0x3C
			OrichalcumPlus = BlazingShard+0x2C
			ManifestIlusion = BlazingShard+0xA1
			LostIlusion = BlazingShard+0xA2
			SynthMats()
			end
	
			if IsSteamJPGame == 1 then
			BlazingShard = 0x9ACEBF
			BlazingStone = BlazingShard+0x1
			BlazingGem = BlazingShard+0x2
			BlazingCrystal = BlazingShard+0x3
			FrostShard = BlazingShard+0x3D
			FrostStone = BlazingShard+0x3E
			FrostGem = BlazingShard+0x3F
			FrostCrystal = BlazingShard+0x40
			LightningShard = BlazingShard+0x8
			LightningStone = BlazingShard+0x9
			LightningGem = BlazingShard+0xA
			LightningCrystal = BlazingShard+0xB
			LucidShard = BlazingShard+0x10
			LucidStone = BlazingShard+0x11
			LucidGem = BlazingShard+0x12
			LucidCrystal = BlazingShard+0x13
			PowerShard = BlazingShard+0xC
			PowerStone = BlazingShard+0xD
			PowerGem = BlazingShard+0xE
			PowerCrystal = BlazingShard+0xF
			DarkShard = BlazingShard+0x5B
			DarkStone = BlazingShard+0x5C
			DarkGem = BlazingShard+0x5D
			DarkCrystal = BlazingShard+0x5E
			DenseShard = BlazingShard+0x14
			DenseStone = BlazingShard+0x15
			DenseGem = BlazingShard+0x16
			DenseCrystal = BlazingShard+0x17
			TwilightShard = BlazingShard+0x18
			TwilightStone = BlazingShard+0x19
			TwilightGem = BlazingShard+0x1A
			TwilightCrystal = BlazingShard+0x1B
			MythrilShard = BlazingShard+0x1C
			MythrilStone = BlazingShard+0x1D
			MythrilGem = BlazingShard+0x1E
			MythrilCrystal = BlazingShard+0x1F
			RemembranceShard = BlazingShard+0x99
			RemembranceStone = BlazingShard+0x9A
			RemembranceGem = BlazingShard+0x9B
			RemembranceCrystal = BlazingShard+0x9C
			TranquilityShard = BlazingShard+0x9D
			TranquilityStone = BlazingShard+0x9E
			TranquilityGem = BlazingShard+0x9F
			TranquilityCrystal = BlazingShard+0xA0
			BrightShard = BlazingShard+0x20
			BrightStone = BlazingShard+0x21
			BrightGem = BlazingShard+0x22
			BrightCrystal = BlazingShard+0x23
			EnergyShard = BlazingShard+0x24
			EnergyStone = BlazingShard+0x25
			EnergyGem = BlazingShard+0x26
			EnergyCrystal = BlazingShard+0x27
			SerenityShard = BlazingShard+0x28
			SerenityStone = BlazingShard+0x29
			SerenityGem = BlazingShard+0x2A
			SerenityCrystal = BlazingShard+0x2B
			Orichalcum = BlazingShard+0x3C
			OrichalcumPlus = BlazingShard+0x2C
			ManifestIlusion = BlazingShard+0xA1
			LostIlusion = BlazingShard+0xA2
			SynthMats()
			end
end

function SynthMats()
			WriteByte(BlazingShard, 255)
			WriteByte(BlazingStone, 255)
			WriteByte(BlazingGem, 255)
			WriteByte(BlazingCrystal, 255)
			WriteByte(FrostShard, 255)
			WriteByte(FrostStone, 255)
			WriteByte(FrostGem, 255)
			WriteByte(FrostCrystal, 255)
			WriteByte(LightningShard, 255)
			WriteByte(LightningStone, 255)
			WriteByte(LightningGem, 255)
			WriteByte(LightningCrystal, 255)
			WriteByte(LucidShard, 255)
			WriteByte(LucidStone, 255)
			WriteByte(LucidGem, 255)
			WriteByte(LucidCrystal, 255)
			WriteByte(PowerShard, 255)
			WriteByte(PowerStone, 255)
			WriteByte(PowerGem, 255)
			WriteByte(PowerCrystal, 255)
			WriteByte(DarkShard, 255)
			WriteByte(DarkStone, 255)
			WriteByte(DarkGem, 255)
			WriteByte(DarkCrystal, 255)
			WriteByte(DenseShard, 255)
			WriteByte(DenseStone, 255)
			WriteByte(DenseGem, 255)
			WriteByte(DenseCrystal, 255)
			WriteByte(TwilightShard, 255)
			WriteByte(TwilightStone, 255)
			WriteByte(TwilightGem, 255)
			WriteByte(TwilightCrystal, 255)
			WriteByte(MythrilShard, 255)
			WriteByte(MythrilStone, 255)
			WriteByte(MythrilGem, 255)
			WriteByte(MythrilCrystal, 255)
			WriteByte(RemembranceShard, 255)
			WriteByte(RemembranceStone, 255)
			WriteByte(RemembranceGem, 255)
			WriteByte(RemembranceCrystal, 255)
			WriteByte(TranquilityShard, 255)
			WriteByte(TranquilityStone, 255)
			WriteByte(TranquilityGem, 255)
			WriteByte(TranquilityCrystal, 255)
			WriteByte(BrightShard, 255)
			WriteByte(BrightStone, 255)
			WriteByte(BrightGem, 255)
			WriteByte(BrightCrystal, 255)
			WriteByte(EnergyShard, 255)
			WriteByte(EnergyStone, 255)
			WriteByte(EnergyGem, 255)
			WriteByte(EnergyCrystal, 255)
			WriteByte(SerenityShard, 255)
			WriteByte(SerenityStone, 255)
			WriteByte(SerenityGem, 255)
			WriteByte(SerenityCrystal, 255)
			WriteByte(Orichalcum, 255)
			WriteByte(OrichalcumPlus, 255)
			WriteByte(ManifestIlusion, 255)
			WriteByte(LostIlusion, 255)
end