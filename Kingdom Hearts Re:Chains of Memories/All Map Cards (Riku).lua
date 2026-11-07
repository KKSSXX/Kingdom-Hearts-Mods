LUAGUI_NAME = "All Map Cards (Riku)"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "All Map Cards (Riku)"

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
		ConsolePrint("All Map Cards (Riku) (EPIC GL) - installed")
	end
	
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("All Map Cards (Riku) (Steam GL) - installed")
	end
	
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("All Map Cards (Riku) (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then

IngameCheck = 0xAC3F00
MapCards = ReadLong(0x87A1E8)+0x396, true
Key = ReadLong(0x87A1E8+0x8)+0x2, true
DReportMapCardFlags = ReadLong(0x87C608)+0x1CE, true

if ReadByte(IngameCheck) >= 1 then
WriteByte(MapCards, 99, true)   -- Tranquil Darkness #0
WriteByte(MapCards+1, 99, true) -- Tranquil Darkness #1
WriteByte(MapCards+2, 99, true) -- Tranquil Darkness #2
WriteByte(MapCards+3, 99, true) -- Tranquil Darkness #3
WriteByte(MapCards+4, 99, true) -- Tranquil Darkness #4
WriteByte(MapCards+5, 99, true) -- Tranquil Darkness #5
WriteByte(MapCards+6, 99, true) -- Tranquil Darkness #6
WriteByte(MapCards+7, 99, true) -- Tranquil Darkness #7
WriteByte(MapCards+8, 99, true) -- Tranquil Darkness #8
WriteByte(MapCards+9, 99, true) -- Tranquil Darkness #9

WriteByte(MapCards+10, 99, true) -- Teeming Darkness #0
WriteByte(MapCards+11, 99, true) -- Teeming Darkness #1
WriteByte(MapCards+12, 99, true) -- Teeming Darkness #2
WriteByte(MapCards+13, 99, true) -- Teeming Darkness #3
WriteByte(MapCards+14, 99, true) -- Teeming Darkness #4
WriteByte(MapCards+15, 99, true) -- Teeming Darkness #5
WriteByte(MapCards+16, 99, true) -- Teeming Darkness #6
WriteByte(MapCards+17, 99, true) -- Teeming Darkness #7
WriteByte(MapCards+18, 99, true) -- Teeming Darkness #8
WriteByte(MapCards+19, 99, true) -- Teeming Darkness #9

WriteByte(MapCards+20, 99, true) -- Feeble Darkness #0
WriteByte(MapCards+21, 99, true) -- Feeble Darkness #1
WriteByte(MapCards+22, 99, true) -- Feeble Darkness #2
WriteByte(MapCards+23, 99, true) -- Feeble Darkness #3
WriteByte(MapCards+24, 99, true) -- Feeble Darkness #4
WriteByte(MapCards+25, 99, true) -- Feeble Darkness #5
WriteByte(MapCards+26, 99, true) -- Feeble Darkness #6
WriteByte(MapCards+27, 99, true) -- Feeble Darkness #7
WriteByte(MapCards+28, 99, true) -- Feeble Darkness #8
WriteByte(MapCards+29, 99, true) -- Feeble Darkness #9

WriteByte(MapCards+30, 99, true) -- Almighty Darkness #0
WriteByte(MapCards+31, 99, true) -- Almighty Darkness #1
WriteByte(MapCards+32, 99, true) -- Almighty Darkness #2
WriteByte(MapCards+33, 99, true) -- Almighty Darkness #3
WriteByte(MapCards+34, 99, true) -- Almighty Darkness #4
WriteByte(MapCards+35, 99, true) -- Almighty Darkness #5
WriteByte(MapCards+36, 99, true) -- Almighty Darkness #6
WriteByte(MapCards+37, 99, true) -- Almighty Darkness #7
WriteByte(MapCards+38, 99, true) -- Almighty Darkness #8
WriteByte(MapCards+39, 99, true) -- Almighty Darkness #9

WriteByte(MapCards+40, 99, true) -- Sleeping Darkness #0
WriteByte(MapCards+41, 99, true) -- Sleeping Darkness #1
WriteByte(MapCards+42, 99, true) -- Sleeping Darkness #2
WriteByte(MapCards+43, 99, true) -- Sleeping Darkness #3
WriteByte(MapCards+44, 99, true) -- Sleeping Darkness #4
WriteByte(MapCards+45, 99, true) -- Sleeping Darkness #5
WriteByte(MapCards+46, 99, true) -- Sleeping Darkness #6
WriteByte(MapCards+47, 99, true) -- Sleeping Darkness #7
WriteByte(MapCards+48, 99, true) -- Sleeping Darkness #8
WriteByte(MapCards+49, 99, true) -- Sleeping Darkness #9

WriteByte(MapCards+50, 99, true) -- Looming Darkness #0
WriteByte(MapCards+51, 99, true) -- Looming Darkness #1
WriteByte(MapCards+52, 99, true) -- Looming Darkness #2
WriteByte(MapCards+53, 99, true) -- Looming Darkness #3
WriteByte(MapCards+54, 99, true) -- Looming Darkness #4
WriteByte(MapCards+55, 99, true) -- Looming Darkness #5
WriteByte(MapCards+56, 99, true) -- Looming Darkness #6
WriteByte(MapCards+57, 99, true) -- Looming Darkness #7
WriteByte(MapCards+58, 99, true) -- Looming Darkness #8
WriteByte(MapCards+59, 99, true) -- Looming Darkness #9

WriteByte(MapCards+60, 99, true) -- Premium Room #0
WriteByte(MapCards+61, 99, true) -- Premium Room #1
WriteByte(MapCards+62, 99, true) -- Premium Room #2
WriteByte(MapCards+63, 99, true) -- Premium Room #3
WriteByte(MapCards+64, 99, true) -- Premium Room #4
WriteByte(MapCards+65, 99, true) -- Premium Room #5
WriteByte(MapCards+66, 99, true) -- Premium Room #6
WriteByte(MapCards+67, 99, true) -- Premium Room #7
WriteByte(MapCards+68, 99, true) -- Premium Room #8
WriteByte(MapCards+69, 99, true) -- Premium Room #9

WriteByte(MapCards+70, 99, true) -- White Room #0
WriteByte(MapCards+71, 99, true) -- White Room #1
WriteByte(MapCards+72, 99, true) -- White Room #2
WriteByte(MapCards+73, 99, true) -- White Room #3
WriteByte(MapCards+74, 99, true) -- White Room #4
WriteByte(MapCards+75, 99, true) -- White Room #5
WriteByte(MapCards+76, 99, true) -- White Room #6
WriteByte(MapCards+77, 99, true) -- White Room #7
WriteByte(MapCards+78, 99, true) -- White Room #8
WriteByte(MapCards+79, 99, true) -- White Room #9

WriteByte(MapCards+80, 99, true) -- Black Room #0
WriteByte(MapCards+81, 99, true) -- Black Room #1
WriteByte(MapCards+82, 99, true) -- Black Room #2
WriteByte(MapCards+83, 99, true) -- Black Room #3
WriteByte(MapCards+84, 99, true) -- Black Room #4
WriteByte(MapCards+85, 99, true) -- Black Room #5
WriteByte(MapCards+86, 99, true) -- Black Room #6
WriteByte(MapCards+87, 99, true) -- Black Room #7
WriteByte(MapCards+88, 99, true) -- Black Room #8
WriteByte(MapCards+89, 99, true) -- Black Room #9

WriteByte(MapCards+90, 99, true) -- Bottomless Darkness #0
WriteByte(MapCards+91, 99, true) -- Bottomless Darkness #1
WriteByte(MapCards+92, 99, true) -- Bottomless Darkness #2
WriteByte(MapCards+93, 99, true) -- Bottomless Darkness #3
WriteByte(MapCards+94, 99, true) -- Bottomless Darkness #4
WriteByte(MapCards+95, 99, true) -- Bottomless Darkness #5
WriteByte(MapCards+96, 99, true) -- Bottomless Darkness #6
WriteByte(MapCards+97, 99, true) -- Bottomless Darkness #7
WriteByte(MapCards+98, 99, true) -- Bottomless Darkness #8
WriteByte(MapCards+99, 99, true) -- Bottomless Darkness #9

WriteByte(MapCards+100, 99, true) -- Roulette Room #0
WriteByte(MapCards+101, 99, true) -- Roulette Room #1
WriteByte(MapCards+102, 99, true) -- Roulette Room #2
WriteByte(MapCards+103, 99, true) -- Roulette Room #3
WriteByte(MapCards+104, 99, true) -- Roulette Room #4
WriteByte(MapCards+105, 99, true) -- Roulette Room #5
WriteByte(MapCards+106, 99, true) -- Roulette Room #6
WriteByte(MapCards+107, 99, true) -- Roulette Room #7
WriteByte(MapCards+108, 99, true) -- Roulette Room #8
WriteByte(MapCards+109, 99, true) -- Roulette Room #9

WriteByte(MapCards+110, 99, true) -- Material Waking #0
WriteByte(MapCards+111, 99, true) -- Material Waking #1
WriteByte(MapCards+112, 99, true) -- Material Waking #2
WriteByte(MapCards+113, 99, true) -- Material Waking #3
WriteByte(MapCards+114, 99, true) -- Material Waking #4
WriteByte(MapCards+115, 99, true) -- Material Waking #5
WriteByte(MapCards+116, 99, true) -- Material Waking #6
WriteByte(MapCards+117, 99, true) -- Material Waking #7
WriteByte(MapCards+118, 99, true) -- Material Waking #8
WriteByte(MapCards+119, 99, true) -- Material Waking #9

WriteByte(MapCards+120, 99, true) -- Sorcerous Waking #0
WriteByte(MapCards+121, 99, true) -- Sorcerous Waking #1
WriteByte(MapCards+122, 99, true) -- Sorcerous Waking #2
WriteByte(MapCards+123, 99, true) -- Sorcerous Waking #3
WriteByte(MapCards+124, 99, true) -- Sorcerous Waking #4
WriteByte(MapCards+125, 99, true) -- Sorcerous Waking #5
WriteByte(MapCards+126, 99, true) -- Sorcerous Waking #6
WriteByte(MapCards+127, 99, true) -- Sorcerous Waking #7
WriteByte(MapCards+128, 99, true) -- Sorcerous Waking #8
WriteByte(MapCards+129, 99, true) -- Sorcerous Waking #9

WriteByte(MapCards+130, 99, true) -- Alchemic Waking #0
WriteByte(MapCards+131, 99, true) -- Alchemic Waking #1
WriteByte(MapCards+132, 99, true) -- Alchemic Waking #2
WriteByte(MapCards+133, 99, true) -- Alchemic Waking #3
WriteByte(MapCards+134, 99, true) -- Alchemic Waking #4
WriteByte(MapCards+135, 99, true) -- Alchemic Waking #5
WriteByte(MapCards+136, 99, true) -- Alchemic Waking #6
WriteByte(MapCards+137, 99, true) -- Alchemic Waking #7
WriteByte(MapCards+138, 99, true) -- Alchemic Waking #8
WriteByte(MapCards+139, 99, true) -- Alchemic Waking #9

WriteByte(MapCards+140, 99, true) -- Meeting Ground #0
WriteByte(MapCards+141, 99, true) -- Meeting Ground #1
WriteByte(MapCards+142, 99, true) -- Meeting Ground #2
WriteByte(MapCards+143, 99, true) -- Meeting Ground #3
WriteByte(MapCards+144, 99, true) -- Meeting Ground #4
WriteByte(MapCards+145, 99, true) -- Meeting Ground #5
WriteByte(MapCards+146, 99, true) -- Meeting Ground #6
WriteByte(MapCards+147, 99, true) -- Meeting Ground #7
WriteByte(MapCards+148, 99, true) -- Meeting Ground #8
WriteByte(MapCards+149, 99, true) -- Meeting Ground #9

WriteByte(MapCards+150, 99, true) -- Stagnant Space #0
WriteByte(MapCards+151, 99, true) -- Stagnant Space #1
WriteByte(MapCards+152, 99, true) -- Stagnant Space #2
WriteByte(MapCards+153, 99, true) -- Stagnant Space #3
WriteByte(MapCards+154, 99, true) -- Stagnant Space #4
WriteByte(MapCards+155, 99, true) -- Stagnant Space #5
WriteByte(MapCards+156, 99, true) -- Stagnant Space #6
WriteByte(MapCards+157, 99, true) -- Stagnant Space #7
WriteByte(MapCards+158, 99, true) -- Stagnant Space #8
WriteByte(MapCards+159, 99, true) -- Stagnant Space #9

WriteByte(MapCards+160, 99, true) -- Strong Initiative #0
WriteByte(MapCards+161, 99, true) -- Strong Initiative #1
WriteByte(MapCards+162, 99, true) -- Strong Initiative #2
WriteByte(MapCards+163, 99, true) -- Strong Initiative #3
WriteByte(MapCards+164, 99, true) -- Strong Initiative #4
WriteByte(MapCards+165, 99, true) -- Strong Initiative #5
WriteByte(MapCards+166, 99, true) -- Strong Initiative #6
WriteByte(MapCards+167, 99, true) -- Strong Initiative #7
WriteByte(MapCards+168, 99, true) -- Strong Initiative #8
WriteByte(MapCards+169, 99, true) -- Strong Initiative #9

WriteByte(MapCards+170, 99, true) -- Lasting Daze #0
WriteByte(MapCards+171, 99, true) -- Lasting Daze #1
WriteByte(MapCards+172, 99, true) -- Lasting Daze #2
WriteByte(MapCards+173, 99, true) -- Lasting Daze #3
WriteByte(MapCards+174, 99, true) -- Lasting Daze #4
WriteByte(MapCards+175, 99, true) -- Lasting Daze #5
WriteByte(MapCards+176, 99, true) -- Lasting Daze #6
WriteByte(MapCards+177, 99, true) -- Lasting Daze #7
WriteByte(MapCards+178, 99, true) -- Lasting Daze #8
WriteByte(MapCards+179, 99, true) -- Lasting Daze #9

WriteByte(MapCards+180, 99, true) -- Calm Bounty #0
WriteByte(MapCards+181, 99, true) -- Calm Bounty #1
WriteByte(MapCards+182, 99, true) -- Calm Bounty #2
WriteByte(MapCards+183, 99, true) -- Calm Bounty #3
WriteByte(MapCards+184, 99, true) -- Calm Bounty #4
WriteByte(MapCards+185, 99, true) -- Calm Bounty #5
WriteByte(MapCards+186, 99, true) -- Calm Bounty #6
WriteByte(MapCards+187, 99, true) -- Calm Bounty #7
WriteByte(MapCards+188, 99, true) -- Calm Bounty #8
WriteByte(MapCards+189, 99, true) -- Calm Bounty #9

WriteByte(MapCards+190, 99, true) -- Guarded Trove #0
WriteByte(MapCards+191, 99, true) -- Guarded Trove #1
WriteByte(MapCards+192, 99, true) -- Guarded Trove #2
WriteByte(MapCards+193, 99, true) -- Guarded Trove #3
WriteByte(MapCards+194, 99, true) -- Guarded Trove #4
WriteByte(MapCards+195, 99, true) -- Guarded Trove #5
WriteByte(MapCards+196, 99, true) -- Guarded Trove #6
WriteByte(MapCards+197, 99, true) -- Guarded Trove #7
WriteByte(MapCards+198, 99, true) -- Guarded Trove #8
WriteByte(MapCards+199, 99, true) -- Guarded Trove #9

WriteByte(MapCards+200, 99, true) -- False Bounty #0
WriteByte(MapCards+201, 99, true) -- False Bounty #1
WriteByte(MapCards+202, 99, true) -- False Bounty #2
WriteByte(MapCards+203, 99, true) -- False Bounty #3
WriteByte(MapCards+204, 99, true) -- False Bounty #4
WriteByte(MapCards+205, 99, true) -- False Bounty #5
WriteByte(MapCards+206, 99, true) -- False Bounty #6
WriteByte(MapCards+207, 99, true) -- False Bounty #7
WriteByte(MapCards+208, 99, true) -- False Bounty #8
WriteByte(MapCards+209, 99, true) -- False Bounty #9

WriteByte(MapCards+210, 99, true) -- Moment´s Reprieve #0
WriteByte(MapCards+211, 99, true) -- Moment´s Reprieve #1
WriteByte(MapCards+212, 99, true) -- Moment´s Reprieve #2
WriteByte(MapCards+213, 99, true) -- Moment´s Reprieve #3
WriteByte(MapCards+214, 99, true) -- Moment´s Reprieve #4
WriteByte(MapCards+215, 99, true) -- Moment´s Reprieve #5
WriteByte(MapCards+216, 99, true) -- Moment´s Reprieve #6
WriteByte(MapCards+217, 99, true) -- Moment´s Reprieve #7
WriteByte(MapCards+218, 99, true) -- Moment´s Reprieve #8
WriteByte(MapCards+219, 99, true) -- Moment´s Reprieve #9

WriteByte(MapCards+220, 99, true) -- Mingling Worlds #0
WriteByte(MapCards+221, 99, true) -- Mingling Worlds #1
WriteByte(MapCards+222, 99, true) -- Mingling Worlds #2
WriteByte(MapCards+223, 99, true) -- Mingling Worlds #3
WriteByte(MapCards+224, 99, true) -- Mingling Worlds #4
WriteByte(MapCards+225, 99, true) -- Mingling Worlds #5
WriteByte(MapCards+226, 99, true) -- Mingling Worlds #6
WriteByte(MapCards+227, 99, true) -- Mingling Worlds #7
WriteByte(MapCards+228, 99, true) -- Mingling Worlds #8
WriteByte(MapCards+229, 99, true) -- Mingling Worlds #9

WriteByte(MapCards+230, 99, true) -- Moogle Room #0
WriteByte(MapCards+231, 99, true) -- Moogle Room #1
WriteByte(MapCards+232, 99, true) -- Moogle Room #2
WriteByte(MapCards+233, 99, true) -- Moogle Room #3
WriteByte(MapCards+234, 99, true) -- Moogle Room #4
WriteByte(MapCards+235, 99, true) -- Moogle Room #5
WriteByte(MapCards+236, 99, true) -- Moogle Room #6
WriteByte(MapCards+237, 99, true) -- Moogle Room #7
WriteByte(MapCards+238, 99, true) -- Moogle Room #8
WriteByte(MapCards+239, 99, true) -- Moogle Room #9

WriteByte(MapCards+240, 99, true) -- Random Joker #0
WriteByte(MapCards+241, 99, true) -- Random Joker #1
WriteByte(MapCards+242, 99, true) -- Random Joker #2
WriteByte(MapCards+243, 99, true) -- Random Joker #3
WriteByte(MapCards+244, 99, true) -- Random Joker #4
WriteByte(MapCards+245, 99, true) -- Random Joker #5
WriteByte(MapCards+246, 99, true) -- Random Joker #6
WriteByte(MapCards+247, 99, true) -- Random Joker #7
WriteByte(MapCards+248, 99, true) -- Random Joker #8
WriteByte(MapCards+249, 99, true) -- Random Joker #9

WriteByte(Key, 99, true)   -- Key of Beginnings
WriteByte(Key+1, 99, true) -- Key of Guidance
WriteByte(Key+2, 99, true) -- Key to Truth
WriteByte(Key+3, 99, true) -- Key to Rewards

if ReadByte(DReportMapCardFlags, true) <= 1 then   -- Tranquil Darkness
	WriteByte(DReportMapCardFlags, 4, true)
end
if ReadByte(DReportMapCardFlags+1, true) <= 1 then -- Teeming Darkness
	WriteByte(DReportMapCardFlags+1, 4, true)
end
if ReadByte(DReportMapCardFlags+2, true) <= 1 then -- Feeble Darkness
	WriteByte(DReportMapCardFlags+2, 4, true)
end
if ReadByte(DReportMapCardFlags+3, true) <= 1 then -- Almighty Darkness
	WriteByte(DReportMapCardFlags+3, 4, true)
end
if ReadByte(DReportMapCardFlags+4, true) <= 1 then -- Sleeping Darkness
	WriteByte(DReportMapCardFlags+4, 4, true)
end
if ReadByte(DReportMapCardFlags+5, true) <= 1 then -- Looming Darkness
	WriteByte(DReportMapCardFlags+5, 4, true)
end
if ReadByte(DReportMapCardFlags+6, true) <= 1 then -- Black Room
	WriteByte(DReportMapCardFlags+6, 4, true)
end
if ReadByte(DReportMapCardFlags+7, true) <= 1 then -- Bottomless Darkness
	WriteByte(DReportMapCardFlags+7, 4, true)
end
if ReadByte(DReportMapCardFlags+8, true) <= 1 then -- Martial Waking
	WriteByte(DReportMapCardFlags+8, 4, true)
end
if ReadByte(DReportMapCardFlags+9, true) <= 1 then -- Meeting Ground
	WriteByte(DReportMapCardFlags+9, 4, true)
end
if ReadByte(DReportMapCardFlags+10, true) <= 1 then -- Stagnant Space
	WriteByte(DReportMapCardFlags+10, 4, true)
end
if ReadByte(DReportMapCardFlags+11, true) <= 1 then -- Strong Initiative
	WriteByte(DReportMapCardFlags+11, 4, true)
end
if ReadByte(DReportMapCardFlags+12, true) <= 1 then -- Lasting Daze
	WriteByte(DReportMapCardFlags+12, 4, true)
end
if ReadByte(DReportMapCardFlags+13, true) <= 1 then -- Moment´s Reprieve
	WriteByte(DReportMapCardFlags+13, 4, true)
end
if ReadByte(DReportMapCardFlags+14, true) <= 1 then -- Mingling Worlds
	WriteByte(DReportMapCardFlags+14, 4, true)
end
if ReadByte(DReportMapCardFlags+15, true) <= 1 then -- Key of Beginnings
	WriteByte(DReportMapCardFlags+15, 4, true)
end
if ReadByte(DReportMapCardFlags+16, true) <= 1 then -- Key of Guidance
	WriteByte(DReportMapCardFlags+16, 4, true)
end
if ReadByte(DReportMapCardFlags+17, true) <= 1 then -- Key to Truth
	WriteByte(DReportMapCardFlags+17, 4, true)
end
if ReadByte(DReportMapCardFlags+18, true) <= 1 then -- Random Joker
	WriteByte(DReportMapCardFlags+18, 4, true)
end
if ReadByte(DReportMapCardFlags+19, true) <= 1 then -- Random Joker
	WriteByte(DReportMapCardFlags+19, 4, true)
end

end
end

---------- Steam Version
if stmgames == 1 then
IngameCheck = 0xAC4474
MapCards = ReadLong(0x87A7E8)+0x396, true
Key = ReadLong(0x87A7E8+0x8)+0x2, true
DReportMapCardFlags = ReadLong(0x87CC08)+0x1CE, true

if ReadByte(IngameCheck) >= 1 then
WriteByte(MapCards, 99, true)   -- Tranquil Darkness #0
WriteByte(MapCards+1, 99, true) -- Tranquil Darkness #1
WriteByte(MapCards+2, 99, true) -- Tranquil Darkness #2
WriteByte(MapCards+3, 99, true) -- Tranquil Darkness #3
WriteByte(MapCards+4, 99, true) -- Tranquil Darkness #4
WriteByte(MapCards+5, 99, true) -- Tranquil Darkness #5
WriteByte(MapCards+6, 99, true) -- Tranquil Darkness #6
WriteByte(MapCards+7, 99, true) -- Tranquil Darkness #7
WriteByte(MapCards+8, 99, true) -- Tranquil Darkness #8
WriteByte(MapCards+9, 99, true) -- Tranquil Darkness #9

WriteByte(MapCards+10, 99, true) -- Teeming Darkness #0
WriteByte(MapCards+11, 99, true) -- Teeming Darkness #1
WriteByte(MapCards+12, 99, true) -- Teeming Darkness #2
WriteByte(MapCards+13, 99, true) -- Teeming Darkness #3
WriteByte(MapCards+14, 99, true) -- Teeming Darkness #4
WriteByte(MapCards+15, 99, true) -- Teeming Darkness #5
WriteByte(MapCards+16, 99, true) -- Teeming Darkness #6
WriteByte(MapCards+17, 99, true) -- Teeming Darkness #7
WriteByte(MapCards+18, 99, true) -- Teeming Darkness #8
WriteByte(MapCards+19, 99, true) -- Teeming Darkness #9

WriteByte(MapCards+20, 99, true) -- Feeble Darkness #0
WriteByte(MapCards+21, 99, true) -- Feeble Darkness #1
WriteByte(MapCards+22, 99, true) -- Feeble Darkness #2
WriteByte(MapCards+23, 99, true) -- Feeble Darkness #3
WriteByte(MapCards+24, 99, true) -- Feeble Darkness #4
WriteByte(MapCards+25, 99, true) -- Feeble Darkness #5
WriteByte(MapCards+26, 99, true) -- Feeble Darkness #6
WriteByte(MapCards+27, 99, true) -- Feeble Darkness #7
WriteByte(MapCards+28, 99, true) -- Feeble Darkness #8
WriteByte(MapCards+29, 99, true) -- Feeble Darkness #9

WriteByte(MapCards+30, 99, true) -- Almighty Darkness #0
WriteByte(MapCards+31, 99, true) -- Almighty Darkness #1
WriteByte(MapCards+32, 99, true) -- Almighty Darkness #2
WriteByte(MapCards+33, 99, true) -- Almighty Darkness #3
WriteByte(MapCards+34, 99, true) -- Almighty Darkness #4
WriteByte(MapCards+35, 99, true) -- Almighty Darkness #5
WriteByte(MapCards+36, 99, true) -- Almighty Darkness #6
WriteByte(MapCards+37, 99, true) -- Almighty Darkness #7
WriteByte(MapCards+38, 99, true) -- Almighty Darkness #8
WriteByte(MapCards+39, 99, true) -- Almighty Darkness #9

WriteByte(MapCards+40, 99, true) -- Sleeping Darkness #0
WriteByte(MapCards+41, 99, true) -- Sleeping Darkness #1
WriteByte(MapCards+42, 99, true) -- Sleeping Darkness #2
WriteByte(MapCards+43, 99, true) -- Sleeping Darkness #3
WriteByte(MapCards+44, 99, true) -- Sleeping Darkness #4
WriteByte(MapCards+45, 99, true) -- Sleeping Darkness #5
WriteByte(MapCards+46, 99, true) -- Sleeping Darkness #6
WriteByte(MapCards+47, 99, true) -- Sleeping Darkness #7
WriteByte(MapCards+48, 99, true) -- Sleeping Darkness #8
WriteByte(MapCards+49, 99, true) -- Sleeping Darkness #9

WriteByte(MapCards+50, 99, true) -- Looming Darkness #0
WriteByte(MapCards+51, 99, true) -- Looming Darkness #1
WriteByte(MapCards+52, 99, true) -- Looming Darkness #2
WriteByte(MapCards+53, 99, true) -- Looming Darkness #3
WriteByte(MapCards+54, 99, true) -- Looming Darkness #4
WriteByte(MapCards+55, 99, true) -- Looming Darkness #5
WriteByte(MapCards+56, 99, true) -- Looming Darkness #6
WriteByte(MapCards+57, 99, true) -- Looming Darkness #7
WriteByte(MapCards+58, 99, true) -- Looming Darkness #8
WriteByte(MapCards+59, 99, true) -- Looming Darkness #9

WriteByte(MapCards+60, 99, true) -- Premium Room #0
WriteByte(MapCards+61, 99, true) -- Premium Room #1
WriteByte(MapCards+62, 99, true) -- Premium Room #2
WriteByte(MapCards+63, 99, true) -- Premium Room #3
WriteByte(MapCards+64, 99, true) -- Premium Room #4
WriteByte(MapCards+65, 99, true) -- Premium Room #5
WriteByte(MapCards+66, 99, true) -- Premium Room #6
WriteByte(MapCards+67, 99, true) -- Premium Room #7
WriteByte(MapCards+68, 99, true) -- Premium Room #8
WriteByte(MapCards+69, 99, true) -- Premium Room #9

WriteByte(MapCards+70, 99, true) -- White Room #0
WriteByte(MapCards+71, 99, true) -- White Room #1
WriteByte(MapCards+72, 99, true) -- White Room #2
WriteByte(MapCards+73, 99, true) -- White Room #3
WriteByte(MapCards+74, 99, true) -- White Room #4
WriteByte(MapCards+75, 99, true) -- White Room #5
WriteByte(MapCards+76, 99, true) -- White Room #6
WriteByte(MapCards+77, 99, true) -- White Room #7
WriteByte(MapCards+78, 99, true) -- White Room #8
WriteByte(MapCards+79, 99, true) -- White Room #9

WriteByte(MapCards+80, 99, true) -- Black Room #0
WriteByte(MapCards+81, 99, true) -- Black Room #1
WriteByte(MapCards+82, 99, true) -- Black Room #2
WriteByte(MapCards+83, 99, true) -- Black Room #3
WriteByte(MapCards+84, 99, true) -- Black Room #4
WriteByte(MapCards+85, 99, true) -- Black Room #5
WriteByte(MapCards+86, 99, true) -- Black Room #6
WriteByte(MapCards+87, 99, true) -- Black Room #7
WriteByte(MapCards+88, 99, true) -- Black Room #8
WriteByte(MapCards+89, 99, true) -- Black Room #9

WriteByte(MapCards+90, 99, true) -- Bottomless Darkness #0
WriteByte(MapCards+91, 99, true) -- Bottomless Darkness #1
WriteByte(MapCards+92, 99, true) -- Bottomless Darkness #2
WriteByte(MapCards+93, 99, true) -- Bottomless Darkness #3
WriteByte(MapCards+94, 99, true) -- Bottomless Darkness #4
WriteByte(MapCards+95, 99, true) -- Bottomless Darkness #5
WriteByte(MapCards+96, 99, true) -- Bottomless Darkness #6
WriteByte(MapCards+97, 99, true) -- Bottomless Darkness #7
WriteByte(MapCards+98, 99, true) -- Bottomless Darkness #8
WriteByte(MapCards+99, 99, true) -- Bottomless Darkness #9

WriteByte(MapCards+100, 99, true) -- Roulette Room #0
WriteByte(MapCards+101, 99, true) -- Roulette Room #1
WriteByte(MapCards+102, 99, true) -- Roulette Room #2
WriteByte(MapCards+103, 99, true) -- Roulette Room #3
WriteByte(MapCards+104, 99, true) -- Roulette Room #4
WriteByte(MapCards+105, 99, true) -- Roulette Room #5
WriteByte(MapCards+106, 99, true) -- Roulette Room #6
WriteByte(MapCards+107, 99, true) -- Roulette Room #7
WriteByte(MapCards+108, 99, true) -- Roulette Room #8
WriteByte(MapCards+109, 99, true) -- Roulette Room #9

WriteByte(MapCards+110, 99, true) -- Material Waking #0
WriteByte(MapCards+111, 99, true) -- Material Waking #1
WriteByte(MapCards+112, 99, true) -- Material Waking #2
WriteByte(MapCards+113, 99, true) -- Material Waking #3
WriteByte(MapCards+114, 99, true) -- Material Waking #4
WriteByte(MapCards+115, 99, true) -- Material Waking #5
WriteByte(MapCards+116, 99, true) -- Material Waking #6
WriteByte(MapCards+117, 99, true) -- Material Waking #7
WriteByte(MapCards+118, 99, true) -- Material Waking #8
WriteByte(MapCards+119, 99, true) -- Material Waking #9

WriteByte(MapCards+120, 99, true) -- Sorcerous Waking #0
WriteByte(MapCards+121, 99, true) -- Sorcerous Waking #1
WriteByte(MapCards+122, 99, true) -- Sorcerous Waking #2
WriteByte(MapCards+123, 99, true) -- Sorcerous Waking #3
WriteByte(MapCards+124, 99, true) -- Sorcerous Waking #4
WriteByte(MapCards+125, 99, true) -- Sorcerous Waking #5
WriteByte(MapCards+126, 99, true) -- Sorcerous Waking #6
WriteByte(MapCards+127, 99, true) -- Sorcerous Waking #7
WriteByte(MapCards+128, 99, true) -- Sorcerous Waking #8
WriteByte(MapCards+129, 99, true) -- Sorcerous Waking #9

WriteByte(MapCards+130, 99, true) -- Alchemic Waking #0
WriteByte(MapCards+131, 99, true) -- Alchemic Waking #1
WriteByte(MapCards+132, 99, true) -- Alchemic Waking #2
WriteByte(MapCards+133, 99, true) -- Alchemic Waking #3
WriteByte(MapCards+134, 99, true) -- Alchemic Waking #4
WriteByte(MapCards+135, 99, true) -- Alchemic Waking #5
WriteByte(MapCards+136, 99, true) -- Alchemic Waking #6
WriteByte(MapCards+137, 99, true) -- Alchemic Waking #7
WriteByte(MapCards+138, 99, true) -- Alchemic Waking #8
WriteByte(MapCards+139, 99, true) -- Alchemic Waking #9

WriteByte(MapCards+140, 99, true) -- Meeting Ground #0
WriteByte(MapCards+141, 99, true) -- Meeting Ground #1
WriteByte(MapCards+142, 99, true) -- Meeting Ground #2
WriteByte(MapCards+143, 99, true) -- Meeting Ground #3
WriteByte(MapCards+144, 99, true) -- Meeting Ground #4
WriteByte(MapCards+145, 99, true) -- Meeting Ground #5
WriteByte(MapCards+146, 99, true) -- Meeting Ground #6
WriteByte(MapCards+147, 99, true) -- Meeting Ground #7
WriteByte(MapCards+148, 99, true) -- Meeting Ground #8
WriteByte(MapCards+149, 99, true) -- Meeting Ground #9

WriteByte(MapCards+150, 99, true) -- Stagnant Space #0
WriteByte(MapCards+151, 99, true) -- Stagnant Space #1
WriteByte(MapCards+152, 99, true) -- Stagnant Space #2
WriteByte(MapCards+153, 99, true) -- Stagnant Space #3
WriteByte(MapCards+154, 99, true) -- Stagnant Space #4
WriteByte(MapCards+155, 99, true) -- Stagnant Space #5
WriteByte(MapCards+156, 99, true) -- Stagnant Space #6
WriteByte(MapCards+157, 99, true) -- Stagnant Space #7
WriteByte(MapCards+158, 99, true) -- Stagnant Space #8
WriteByte(MapCards+159, 99, true) -- Stagnant Space #9

WriteByte(MapCards+160, 99, true) -- Strong Initiative #0
WriteByte(MapCards+161, 99, true) -- Strong Initiative #1
WriteByte(MapCards+162, 99, true) -- Strong Initiative #2
WriteByte(MapCards+163, 99, true) -- Strong Initiative #3
WriteByte(MapCards+164, 99, true) -- Strong Initiative #4
WriteByte(MapCards+165, 99, true) -- Strong Initiative #5
WriteByte(MapCards+166, 99, true) -- Strong Initiative #6
WriteByte(MapCards+167, 99, true) -- Strong Initiative #7
WriteByte(MapCards+168, 99, true) -- Strong Initiative #8
WriteByte(MapCards+169, 99, true) -- Strong Initiative #9

WriteByte(MapCards+170, 99, true) -- Lasting Daze #0
WriteByte(MapCards+171, 99, true) -- Lasting Daze #1
WriteByte(MapCards+172, 99, true) -- Lasting Daze #2
WriteByte(MapCards+173, 99, true) -- Lasting Daze #3
WriteByte(MapCards+174, 99, true) -- Lasting Daze #4
WriteByte(MapCards+175, 99, true) -- Lasting Daze #5
WriteByte(MapCards+176, 99, true) -- Lasting Daze #6
WriteByte(MapCards+177, 99, true) -- Lasting Daze #7
WriteByte(MapCards+178, 99, true) -- Lasting Daze #8
WriteByte(MapCards+179, 99, true) -- Lasting Daze #9

WriteByte(MapCards+180, 99, true) -- Calm Bounty #0
WriteByte(MapCards+181, 99, true) -- Calm Bounty #1
WriteByte(MapCards+182, 99, true) -- Calm Bounty #2
WriteByte(MapCards+183, 99, true) -- Calm Bounty #3
WriteByte(MapCards+184, 99, true) -- Calm Bounty #4
WriteByte(MapCards+185, 99, true) -- Calm Bounty #5
WriteByte(MapCards+186, 99, true) -- Calm Bounty #6
WriteByte(MapCards+187, 99, true) -- Calm Bounty #7
WriteByte(MapCards+188, 99, true) -- Calm Bounty #8
WriteByte(MapCards+189, 99, true) -- Calm Bounty #9

WriteByte(MapCards+190, 99, true) -- Guarded Trove #0
WriteByte(MapCards+191, 99, true) -- Guarded Trove #1
WriteByte(MapCards+192, 99, true) -- Guarded Trove #2
WriteByte(MapCards+193, 99, true) -- Guarded Trove #3
WriteByte(MapCards+194, 99, true) -- Guarded Trove #4
WriteByte(MapCards+195, 99, true) -- Guarded Trove #5
WriteByte(MapCards+196, 99, true) -- Guarded Trove #6
WriteByte(MapCards+197, 99, true) -- Guarded Trove #7
WriteByte(MapCards+198, 99, true) -- Guarded Trove #8
WriteByte(MapCards+199, 99, true) -- Guarded Trove #9

WriteByte(MapCards+200, 99, true) -- False Bounty #0
WriteByte(MapCards+201, 99, true) -- False Bounty #1
WriteByte(MapCards+202, 99, true) -- False Bounty #2
WriteByte(MapCards+203, 99, true) -- False Bounty #3
WriteByte(MapCards+204, 99, true) -- False Bounty #4
WriteByte(MapCards+205, 99, true) -- False Bounty #5
WriteByte(MapCards+206, 99, true) -- False Bounty #6
WriteByte(MapCards+207, 99, true) -- False Bounty #7
WriteByte(MapCards+208, 99, true) -- False Bounty #8
WriteByte(MapCards+209, 99, true) -- False Bounty #9

WriteByte(MapCards+210, 99, true) -- Moment´s Reprieve #0
WriteByte(MapCards+211, 99, true) -- Moment´s Reprieve #1
WriteByte(MapCards+212, 99, true) -- Moment´s Reprieve #2
WriteByte(MapCards+213, 99, true) -- Moment´s Reprieve #3
WriteByte(MapCards+214, 99, true) -- Moment´s Reprieve #4
WriteByte(MapCards+215, 99, true) -- Moment´s Reprieve #5
WriteByte(MapCards+216, 99, true) -- Moment´s Reprieve #6
WriteByte(MapCards+217, 99, true) -- Moment´s Reprieve #7
WriteByte(MapCards+218, 99, true) -- Moment´s Reprieve #8
WriteByte(MapCards+219, 99, true) -- Moment´s Reprieve #9

WriteByte(MapCards+220, 99, true) -- Mingling Worlds #0
WriteByte(MapCards+221, 99, true) -- Mingling Worlds #1
WriteByte(MapCards+222, 99, true) -- Mingling Worlds #2
WriteByte(MapCards+223, 99, true) -- Mingling Worlds #3
WriteByte(MapCards+224, 99, true) -- Mingling Worlds #4
WriteByte(MapCards+225, 99, true) -- Mingling Worlds #5
WriteByte(MapCards+226, 99, true) -- Mingling Worlds #6
WriteByte(MapCards+227, 99, true) -- Mingling Worlds #7
WriteByte(MapCards+228, 99, true) -- Mingling Worlds #8
WriteByte(MapCards+229, 99, true) -- Mingling Worlds #9

WriteByte(MapCards+230, 99, true) -- Moogle Room #0
WriteByte(MapCards+231, 99, true) -- Moogle Room #1
WriteByte(MapCards+232, 99, true) -- Moogle Room #2
WriteByte(MapCards+233, 99, true) -- Moogle Room #3
WriteByte(MapCards+234, 99, true) -- Moogle Room #4
WriteByte(MapCards+235, 99, true) -- Moogle Room #5
WriteByte(MapCards+236, 99, true) -- Moogle Room #6
WriteByte(MapCards+237, 99, true) -- Moogle Room #7
WriteByte(MapCards+238, 99, true) -- Moogle Room #8
WriteByte(MapCards+239, 99, true) -- Moogle Room #9

WriteByte(MapCards+240, 99, true) -- Random Joker #0
WriteByte(MapCards+241, 99, true) -- Random Joker #1
WriteByte(MapCards+242, 99, true) -- Random Joker #2
WriteByte(MapCards+243, 99, true) -- Random Joker #3
WriteByte(MapCards+244, 99, true) -- Random Joker #4
WriteByte(MapCards+245, 99, true) -- Random Joker #5
WriteByte(MapCards+246, 99, true) -- Random Joker #6
WriteByte(MapCards+247, 99, true) -- Random Joker #7
WriteByte(MapCards+248, 99, true) -- Random Joker #8
WriteByte(MapCards+249, 99, true) -- Random Joker #9

WriteByte(Key, 99, true)   -- Key of Beginnings
WriteByte(Key+1, 99, true) -- Key of Guidance
WriteByte(Key+2, 99, true) -- Key to Truth
WriteByte(Key+3, 99, true) -- Key to Rewards

if ReadByte(DReportMapCardFlags, true) <= 1 then   -- Tranquil Darkness
	WriteByte(DReportMapCardFlags, 4, true)
end
if ReadByte(DReportMapCardFlags+1, true) <= 1 then -- Teeming Darkness
	WriteByte(DReportMapCardFlags+1, 4, true)
end
if ReadByte(DReportMapCardFlags+2, true) <= 1 then -- Feeble Darkness
	WriteByte(DReportMapCardFlags+2, 4, true)
end
if ReadByte(DReportMapCardFlags+3, true) <= 1 then -- Almighty Darkness
	WriteByte(DReportMapCardFlags+3, 4, true)
end
if ReadByte(DReportMapCardFlags+4, true) <= 1 then -- Sleeping Darkness
	WriteByte(DReportMapCardFlags+4, 4, true)
end
if ReadByte(DReportMapCardFlags+5, true) <= 1 then -- Looming Darkness
	WriteByte(DReportMapCardFlags+5, 4, true)
end
if ReadByte(DReportMapCardFlags+6, true) <= 1 then -- Black Room
	WriteByte(DReportMapCardFlags+6, 4, true)
end
if ReadByte(DReportMapCardFlags+7, true) <= 1 then -- Bottomless Darkness
	WriteByte(DReportMapCardFlags+7, 4, true)
end
if ReadByte(DReportMapCardFlags+8, true) <= 1 then -- Martial Waking
	WriteByte(DReportMapCardFlags+8, 4, true)
end
if ReadByte(DReportMapCardFlags+9, true) <= 1 then -- Meeting Ground
	WriteByte(DReportMapCardFlags+9, 4, true)
end
if ReadByte(DReportMapCardFlags+10, true) <= 1 then -- Stagnant Space
	WriteByte(DReportMapCardFlags+10, 4, true)
end
if ReadByte(DReportMapCardFlags+11, true) <= 1 then -- Strong Initiative
	WriteByte(DReportMapCardFlags+11, 4, true)
end
if ReadByte(DReportMapCardFlags+12, true) <= 1 then -- Lasting Daze
	WriteByte(DReportMapCardFlags+12, 4, true)
end
if ReadByte(DReportMapCardFlags+13, true) <= 1 then -- Moment´s Reprieve
	WriteByte(DReportMapCardFlags+13, 4, true)
end
if ReadByte(DReportMapCardFlags+14, true) <= 1 then -- Mingling Worlds
	WriteByte(DReportMapCardFlags+14, 4, true)
end
if ReadByte(DReportMapCardFlags+15, true) <= 1 then -- Key of Beginnings
	WriteByte(DReportMapCardFlags+15, 4, true)
end
if ReadByte(DReportMapCardFlags+16, true) <= 1 then -- Key of Guidance
	WriteByte(DReportMapCardFlags+16, 4, true)
end
if ReadByte(DReportMapCardFlags+17, true) <= 1 then -- Key to Truth
	WriteByte(DReportMapCardFlags+17, 4, true)
end
if ReadByte(DReportMapCardFlags+18, true) <= 1 then -- Random Joker
	WriteByte(DReportMapCardFlags+18, 4, true)
end
if ReadByte(DReportMapCardFlags+19, true) <= 1 then -- Random Joker
	WriteByte(DReportMapCardFlags+19, 4, true)
end
end
end

---------- Steam JP Version
if stmjpgames == 1 then
IngameCheck = 0xAC4474
MapCards = ReadLong(0x87A7E8)+0x396, true
Key = ReadLong(0x87A7E8+0x8)+0x2, true
DReportMapCardFlags = ReadLong(0x87CC08)+0x1CE, true

if ReadByte(IngameCheck) >= 1 then
WriteByte(MapCards, 99, true)   -- Tranquil Darkness #0
WriteByte(MapCards+1, 99, true) -- Tranquil Darkness #1
WriteByte(MapCards+2, 99, true) -- Tranquil Darkness #2
WriteByte(MapCards+3, 99, true) -- Tranquil Darkness #3
WriteByte(MapCards+4, 99, true) -- Tranquil Darkness #4
WriteByte(MapCards+5, 99, true) -- Tranquil Darkness #5
WriteByte(MapCards+6, 99, true) -- Tranquil Darkness #6
WriteByte(MapCards+7, 99, true) -- Tranquil Darkness #7
WriteByte(MapCards+8, 99, true) -- Tranquil Darkness #8
WriteByte(MapCards+9, 99, true) -- Tranquil Darkness #9

WriteByte(MapCards+10, 99, true) -- Teeming Darkness #0
WriteByte(MapCards+11, 99, true) -- Teeming Darkness #1
WriteByte(MapCards+12, 99, true) -- Teeming Darkness #2
WriteByte(MapCards+13, 99, true) -- Teeming Darkness #3
WriteByte(MapCards+14, 99, true) -- Teeming Darkness #4
WriteByte(MapCards+15, 99, true) -- Teeming Darkness #5
WriteByte(MapCards+16, 99, true) -- Teeming Darkness #6
WriteByte(MapCards+17, 99, true) -- Teeming Darkness #7
WriteByte(MapCards+18, 99, true) -- Teeming Darkness #8
WriteByte(MapCards+19, 99, true) -- Teeming Darkness #9

WriteByte(MapCards+20, 99, true) -- Feeble Darkness #0
WriteByte(MapCards+21, 99, true) -- Feeble Darkness #1
WriteByte(MapCards+22, 99, true) -- Feeble Darkness #2
WriteByte(MapCards+23, 99, true) -- Feeble Darkness #3
WriteByte(MapCards+24, 99, true) -- Feeble Darkness #4
WriteByte(MapCards+25, 99, true) -- Feeble Darkness #5
WriteByte(MapCards+26, 99, true) -- Feeble Darkness #6
WriteByte(MapCards+27, 99, true) -- Feeble Darkness #7
WriteByte(MapCards+28, 99, true) -- Feeble Darkness #8
WriteByte(MapCards+29, 99, true) -- Feeble Darkness #9

WriteByte(MapCards+30, 99, true) -- Almighty Darkness #0
WriteByte(MapCards+31, 99, true) -- Almighty Darkness #1
WriteByte(MapCards+32, 99, true) -- Almighty Darkness #2
WriteByte(MapCards+33, 99, true) -- Almighty Darkness #3
WriteByte(MapCards+34, 99, true) -- Almighty Darkness #4
WriteByte(MapCards+35, 99, true) -- Almighty Darkness #5
WriteByte(MapCards+36, 99, true) -- Almighty Darkness #6
WriteByte(MapCards+37, 99, true) -- Almighty Darkness #7
WriteByte(MapCards+38, 99, true) -- Almighty Darkness #8
WriteByte(MapCards+39, 99, true) -- Almighty Darkness #9

WriteByte(MapCards+40, 99, true) -- Sleeping Darkness #0
WriteByte(MapCards+41, 99, true) -- Sleeping Darkness #1
WriteByte(MapCards+42, 99, true) -- Sleeping Darkness #2
WriteByte(MapCards+43, 99, true) -- Sleeping Darkness #3
WriteByte(MapCards+44, 99, true) -- Sleeping Darkness #4
WriteByte(MapCards+45, 99, true) -- Sleeping Darkness #5
WriteByte(MapCards+46, 99, true) -- Sleeping Darkness #6
WriteByte(MapCards+47, 99, true) -- Sleeping Darkness #7
WriteByte(MapCards+48, 99, true) -- Sleeping Darkness #8
WriteByte(MapCards+49, 99, true) -- Sleeping Darkness #9

WriteByte(MapCards+50, 99, true) -- Looming Darkness #0
WriteByte(MapCards+51, 99, true) -- Looming Darkness #1
WriteByte(MapCards+52, 99, true) -- Looming Darkness #2
WriteByte(MapCards+53, 99, true) -- Looming Darkness #3
WriteByte(MapCards+54, 99, true) -- Looming Darkness #4
WriteByte(MapCards+55, 99, true) -- Looming Darkness #5
WriteByte(MapCards+56, 99, true) -- Looming Darkness #6
WriteByte(MapCards+57, 99, true) -- Looming Darkness #7
WriteByte(MapCards+58, 99, true) -- Looming Darkness #8
WriteByte(MapCards+59, 99, true) -- Looming Darkness #9

WriteByte(MapCards+60, 99, true) -- Premium Room #0
WriteByte(MapCards+61, 99, true) -- Premium Room #1
WriteByte(MapCards+62, 99, true) -- Premium Room #2
WriteByte(MapCards+63, 99, true) -- Premium Room #3
WriteByte(MapCards+64, 99, true) -- Premium Room #4
WriteByte(MapCards+65, 99, true) -- Premium Room #5
WriteByte(MapCards+66, 99, true) -- Premium Room #6
WriteByte(MapCards+67, 99, true) -- Premium Room #7
WriteByte(MapCards+68, 99, true) -- Premium Room #8
WriteByte(MapCards+69, 99, true) -- Premium Room #9

WriteByte(MapCards+70, 99, true) -- White Room #0
WriteByte(MapCards+71, 99, true) -- White Room #1
WriteByte(MapCards+72, 99, true) -- White Room #2
WriteByte(MapCards+73, 99, true) -- White Room #3
WriteByte(MapCards+74, 99, true) -- White Room #4
WriteByte(MapCards+75, 99, true) -- White Room #5
WriteByte(MapCards+76, 99, true) -- White Room #6
WriteByte(MapCards+77, 99, true) -- White Room #7
WriteByte(MapCards+78, 99, true) -- White Room #8
WriteByte(MapCards+79, 99, true) -- White Room #9

WriteByte(MapCards+80, 99, true) -- Black Room #0
WriteByte(MapCards+81, 99, true) -- Black Room #1
WriteByte(MapCards+82, 99, true) -- Black Room #2
WriteByte(MapCards+83, 99, true) -- Black Room #3
WriteByte(MapCards+84, 99, true) -- Black Room #4
WriteByte(MapCards+85, 99, true) -- Black Room #5
WriteByte(MapCards+86, 99, true) -- Black Room #6
WriteByte(MapCards+87, 99, true) -- Black Room #7
WriteByte(MapCards+88, 99, true) -- Black Room #8
WriteByte(MapCards+89, 99, true) -- Black Room #9

WriteByte(MapCards+90, 99, true) -- Bottomless Darkness #0
WriteByte(MapCards+91, 99, true) -- Bottomless Darkness #1
WriteByte(MapCards+92, 99, true) -- Bottomless Darkness #2
WriteByte(MapCards+93, 99, true) -- Bottomless Darkness #3
WriteByte(MapCards+94, 99, true) -- Bottomless Darkness #4
WriteByte(MapCards+95, 99, true) -- Bottomless Darkness #5
WriteByte(MapCards+96, 99, true) -- Bottomless Darkness #6
WriteByte(MapCards+97, 99, true) -- Bottomless Darkness #7
WriteByte(MapCards+98, 99, true) -- Bottomless Darkness #8
WriteByte(MapCards+99, 99, true) -- Bottomless Darkness #9

WriteByte(MapCards+100, 99, true) -- Roulette Room #0
WriteByte(MapCards+101, 99, true) -- Roulette Room #1
WriteByte(MapCards+102, 99, true) -- Roulette Room #2
WriteByte(MapCards+103, 99, true) -- Roulette Room #3
WriteByte(MapCards+104, 99, true) -- Roulette Room #4
WriteByte(MapCards+105, 99, true) -- Roulette Room #5
WriteByte(MapCards+106, 99, true) -- Roulette Room #6
WriteByte(MapCards+107, 99, true) -- Roulette Room #7
WriteByte(MapCards+108, 99, true) -- Roulette Room #8
WriteByte(MapCards+109, 99, true) -- Roulette Room #9

WriteByte(MapCards+110, 99, true) -- Material Waking #0
WriteByte(MapCards+111, 99, true) -- Material Waking #1
WriteByte(MapCards+112, 99, true) -- Material Waking #2
WriteByte(MapCards+113, 99, true) -- Material Waking #3
WriteByte(MapCards+114, 99, true) -- Material Waking #4
WriteByte(MapCards+115, 99, true) -- Material Waking #5
WriteByte(MapCards+116, 99, true) -- Material Waking #6
WriteByte(MapCards+117, 99, true) -- Material Waking #7
WriteByte(MapCards+118, 99, true) -- Material Waking #8
WriteByte(MapCards+119, 99, true) -- Material Waking #9

WriteByte(MapCards+120, 99, true) -- Sorcerous Waking #0
WriteByte(MapCards+121, 99, true) -- Sorcerous Waking #1
WriteByte(MapCards+122, 99, true) -- Sorcerous Waking #2
WriteByte(MapCards+123, 99, true) -- Sorcerous Waking #3
WriteByte(MapCards+124, 99, true) -- Sorcerous Waking #4
WriteByte(MapCards+125, 99, true) -- Sorcerous Waking #5
WriteByte(MapCards+126, 99, true) -- Sorcerous Waking #6
WriteByte(MapCards+127, 99, true) -- Sorcerous Waking #7
WriteByte(MapCards+128, 99, true) -- Sorcerous Waking #8
WriteByte(MapCards+129, 99, true) -- Sorcerous Waking #9

WriteByte(MapCards+130, 99, true) -- Alchemic Waking #0
WriteByte(MapCards+131, 99, true) -- Alchemic Waking #1
WriteByte(MapCards+132, 99, true) -- Alchemic Waking #2
WriteByte(MapCards+133, 99, true) -- Alchemic Waking #3
WriteByte(MapCards+134, 99, true) -- Alchemic Waking #4
WriteByte(MapCards+135, 99, true) -- Alchemic Waking #5
WriteByte(MapCards+136, 99, true) -- Alchemic Waking #6
WriteByte(MapCards+137, 99, true) -- Alchemic Waking #7
WriteByte(MapCards+138, 99, true) -- Alchemic Waking #8
WriteByte(MapCards+139, 99, true) -- Alchemic Waking #9

WriteByte(MapCards+140, 99, true) -- Meeting Ground #0
WriteByte(MapCards+141, 99, true) -- Meeting Ground #1
WriteByte(MapCards+142, 99, true) -- Meeting Ground #2
WriteByte(MapCards+143, 99, true) -- Meeting Ground #3
WriteByte(MapCards+144, 99, true) -- Meeting Ground #4
WriteByte(MapCards+145, 99, true) -- Meeting Ground #5
WriteByte(MapCards+146, 99, true) -- Meeting Ground #6
WriteByte(MapCards+147, 99, true) -- Meeting Ground #7
WriteByte(MapCards+148, 99, true) -- Meeting Ground #8
WriteByte(MapCards+149, 99, true) -- Meeting Ground #9

WriteByte(MapCards+150, 99, true) -- Stagnant Space #0
WriteByte(MapCards+151, 99, true) -- Stagnant Space #1
WriteByte(MapCards+152, 99, true) -- Stagnant Space #2
WriteByte(MapCards+153, 99, true) -- Stagnant Space #3
WriteByte(MapCards+154, 99, true) -- Stagnant Space #4
WriteByte(MapCards+155, 99, true) -- Stagnant Space #5
WriteByte(MapCards+156, 99, true) -- Stagnant Space #6
WriteByte(MapCards+157, 99, true) -- Stagnant Space #7
WriteByte(MapCards+158, 99, true) -- Stagnant Space #8
WriteByte(MapCards+159, 99, true) -- Stagnant Space #9

WriteByte(MapCards+160, 99, true) -- Strong Initiative #0
WriteByte(MapCards+161, 99, true) -- Strong Initiative #1
WriteByte(MapCards+162, 99, true) -- Strong Initiative #2
WriteByte(MapCards+163, 99, true) -- Strong Initiative #3
WriteByte(MapCards+164, 99, true) -- Strong Initiative #4
WriteByte(MapCards+165, 99, true) -- Strong Initiative #5
WriteByte(MapCards+166, 99, true) -- Strong Initiative #6
WriteByte(MapCards+167, 99, true) -- Strong Initiative #7
WriteByte(MapCards+168, 99, true) -- Strong Initiative #8
WriteByte(MapCards+169, 99, true) -- Strong Initiative #9

WriteByte(MapCards+170, 99, true) -- Lasting Daze #0
WriteByte(MapCards+171, 99, true) -- Lasting Daze #1
WriteByte(MapCards+172, 99, true) -- Lasting Daze #2
WriteByte(MapCards+173, 99, true) -- Lasting Daze #3
WriteByte(MapCards+174, 99, true) -- Lasting Daze #4
WriteByte(MapCards+175, 99, true) -- Lasting Daze #5
WriteByte(MapCards+176, 99, true) -- Lasting Daze #6
WriteByte(MapCards+177, 99, true) -- Lasting Daze #7
WriteByte(MapCards+178, 99, true) -- Lasting Daze #8
WriteByte(MapCards+179, 99, true) -- Lasting Daze #9

WriteByte(MapCards+180, 99, true) -- Calm Bounty #0
WriteByte(MapCards+181, 99, true) -- Calm Bounty #1
WriteByte(MapCards+182, 99, true) -- Calm Bounty #2
WriteByte(MapCards+183, 99, true) -- Calm Bounty #3
WriteByte(MapCards+184, 99, true) -- Calm Bounty #4
WriteByte(MapCards+185, 99, true) -- Calm Bounty #5
WriteByte(MapCards+186, 99, true) -- Calm Bounty #6
WriteByte(MapCards+187, 99, true) -- Calm Bounty #7
WriteByte(MapCards+188, 99, true) -- Calm Bounty #8
WriteByte(MapCards+189, 99, true) -- Calm Bounty #9

WriteByte(MapCards+190, 99, true) -- Guarded Trove #0
WriteByte(MapCards+191, 99, true) -- Guarded Trove #1
WriteByte(MapCards+192, 99, true) -- Guarded Trove #2
WriteByte(MapCards+193, 99, true) -- Guarded Trove #3
WriteByte(MapCards+194, 99, true) -- Guarded Trove #4
WriteByte(MapCards+195, 99, true) -- Guarded Trove #5
WriteByte(MapCards+196, 99, true) -- Guarded Trove #6
WriteByte(MapCards+197, 99, true) -- Guarded Trove #7
WriteByte(MapCards+198, 99, true) -- Guarded Trove #8
WriteByte(MapCards+199, 99, true) -- Guarded Trove #9

WriteByte(MapCards+200, 99, true) -- False Bounty #0
WriteByte(MapCards+201, 99, true) -- False Bounty #1
WriteByte(MapCards+202, 99, true) -- False Bounty #2
WriteByte(MapCards+203, 99, true) -- False Bounty #3
WriteByte(MapCards+204, 99, true) -- False Bounty #4
WriteByte(MapCards+205, 99, true) -- False Bounty #5
WriteByte(MapCards+206, 99, true) -- False Bounty #6
WriteByte(MapCards+207, 99, true) -- False Bounty #7
WriteByte(MapCards+208, 99, true) -- False Bounty #8
WriteByte(MapCards+209, 99, true) -- False Bounty #9

WriteByte(MapCards+210, 99, true) -- Moment´s Reprieve #0
WriteByte(MapCards+211, 99, true) -- Moment´s Reprieve #1
WriteByte(MapCards+212, 99, true) -- Moment´s Reprieve #2
WriteByte(MapCards+213, 99, true) -- Moment´s Reprieve #3
WriteByte(MapCards+214, 99, true) -- Moment´s Reprieve #4
WriteByte(MapCards+215, 99, true) -- Moment´s Reprieve #5
WriteByte(MapCards+216, 99, true) -- Moment´s Reprieve #6
WriteByte(MapCards+217, 99, true) -- Moment´s Reprieve #7
WriteByte(MapCards+218, 99, true) -- Moment´s Reprieve #8
WriteByte(MapCards+219, 99, true) -- Moment´s Reprieve #9

WriteByte(MapCards+220, 99, true) -- Mingling Worlds #0
WriteByte(MapCards+221, 99, true) -- Mingling Worlds #1
WriteByte(MapCards+222, 99, true) -- Mingling Worlds #2
WriteByte(MapCards+223, 99, true) -- Mingling Worlds #3
WriteByte(MapCards+224, 99, true) -- Mingling Worlds #4
WriteByte(MapCards+225, 99, true) -- Mingling Worlds #5
WriteByte(MapCards+226, 99, true) -- Mingling Worlds #6
WriteByte(MapCards+227, 99, true) -- Mingling Worlds #7
WriteByte(MapCards+228, 99, true) -- Mingling Worlds #8
WriteByte(MapCards+229, 99, true) -- Mingling Worlds #9

WriteByte(MapCards+230, 99, true) -- Moogle Room #0
WriteByte(MapCards+231, 99, true) -- Moogle Room #1
WriteByte(MapCards+232, 99, true) -- Moogle Room #2
WriteByte(MapCards+233, 99, true) -- Moogle Room #3
WriteByte(MapCards+234, 99, true) -- Moogle Room #4
WriteByte(MapCards+235, 99, true) -- Moogle Room #5
WriteByte(MapCards+236, 99, true) -- Moogle Room #6
WriteByte(MapCards+237, 99, true) -- Moogle Room #7
WriteByte(MapCards+238, 99, true) -- Moogle Room #8
WriteByte(MapCards+239, 99, true) -- Moogle Room #9

WriteByte(MapCards+240, 99, true) -- Random Joker #0
WriteByte(MapCards+241, 99, true) -- Random Joker #1
WriteByte(MapCards+242, 99, true) -- Random Joker #2
WriteByte(MapCards+243, 99, true) -- Random Joker #3
WriteByte(MapCards+244, 99, true) -- Random Joker #4
WriteByte(MapCards+245, 99, true) -- Random Joker #5
WriteByte(MapCards+246, 99, true) -- Random Joker #6
WriteByte(MapCards+247, 99, true) -- Random Joker #7
WriteByte(MapCards+248, 99, true) -- Random Joker #8
WriteByte(MapCards+249, 99, true) -- Random Joker #9

WriteByte(Key, 99, true)   -- Key of Beginnings
WriteByte(Key+1, 99, true) -- Key of Guidance
WriteByte(Key+2, 99, true) -- Key to Truth
WriteByte(Key+3, 99, true) -- Key to Rewards

if ReadByte(DReportMapCardFlags, true) <= 1 then   -- Tranquil Darkness
	WriteByte(DReportMapCardFlags, 4, true)
end
if ReadByte(DReportMapCardFlags+1, true) <= 1 then -- Teeming Darkness
	WriteByte(DReportMapCardFlags+1, 4, true)
end
if ReadByte(DReportMapCardFlags+2, true) <= 1 then -- Feeble Darkness
	WriteByte(DReportMapCardFlags+2, 4, true)
end
if ReadByte(DReportMapCardFlags+3, true) <= 1 then -- Almighty Darkness
	WriteByte(DReportMapCardFlags+3, 4, true)
end
if ReadByte(DReportMapCardFlags+4, true) <= 1 then -- Sleeping Darkness
	WriteByte(DReportMapCardFlags+4, 4, true)
end
if ReadByte(DReportMapCardFlags+5, true) <= 1 then -- Looming Darkness
	WriteByte(DReportMapCardFlags+5, 4, true)
end
if ReadByte(DReportMapCardFlags+6, true) <= 1 then -- Black Room
	WriteByte(DReportMapCardFlags+6, 4, true)
end
if ReadByte(DReportMapCardFlags+7, true) <= 1 then -- Bottomless Darkness
	WriteByte(DReportMapCardFlags+7, 4, true)
end
if ReadByte(DReportMapCardFlags+8, true) <= 1 then -- Martial Waking
	WriteByte(DReportMapCardFlags+8, 4, true)
end
if ReadByte(DReportMapCardFlags+9, true) <= 1 then -- Meeting Ground
	WriteByte(DReportMapCardFlags+9, 4, true)
end
if ReadByte(DReportMapCardFlags+10, true) <= 1 then -- Stagnant Space
	WriteByte(DReportMapCardFlags+10, 4, true)
end
if ReadByte(DReportMapCardFlags+11, true) <= 1 then -- Strong Initiative
	WriteByte(DReportMapCardFlags+11, 4, true)
end
if ReadByte(DReportMapCardFlags+12, true) <= 1 then -- Lasting Daze
	WriteByte(DReportMapCardFlags+12, 4, true)
end
if ReadByte(DReportMapCardFlags+13, true) <= 1 then -- Moment´s Reprieve
	WriteByte(DReportMapCardFlags+13, 4, true)
end
if ReadByte(DReportMapCardFlags+14, true) <= 1 then -- Mingling Worlds
	WriteByte(DReportMapCardFlags+14, 4, true)
end
if ReadByte(DReportMapCardFlags+15, true) <= 1 then -- Key of Beginnings
	WriteByte(DReportMapCardFlags+15, 4, true)
end
if ReadByte(DReportMapCardFlags+16, true) <= 1 then -- Key of Guidance
	WriteByte(DReportMapCardFlags+16, 4, true)
end
if ReadByte(DReportMapCardFlags+17, true) <= 1 then -- Key to Truth
	WriteByte(DReportMapCardFlags+17, 4, true)
end
if ReadByte(DReportMapCardFlags+18, true) <= 1 then -- Key to Truth
	WriteByte(DReportMapCardFlags+18, 4, true)
end
if ReadByte(DReportMapCardFlags+19, true) <= 1 then -- Random Joker
	WriteByte(DReportMapCardFlags+19, 4, true)
end

end
end
end