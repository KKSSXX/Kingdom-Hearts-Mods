LUAGUI_NAME = "Unlock Special Abilities"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Unlock Special Abilities"

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
		ConsolePrint("Unlock Special Abilities (EPIC GL) - installed")
	end
	
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Unlock Special Abilities (Steam GL) - installed")
	end
	
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Unlock Special Abilities (Steam JP) - installed")
	end

if epicgames == 1 then
Skill = ReadLong(ReadLong(0x87AAE0)+0x8,true)+0x90,true
if ReadByte(Skill) >= 0 then
WriteByte(Skill, 0xFF, true)
end

end

---------- Steam Version
if stmgames == 1 then
Skill = ReadLong(ReadLong(0x87B0E0)+0x8,true)+0x90,true
if ReadByte(Skill) >= 0 then
WriteByte(Skill, 0xFF, true)
end
end

---------- Steam JP Version
if stmjpgames == 1 then
Skill = ReadLong(ReadLong(0x87B0E0)+0x8,true)+0x90,true
if ReadByte(Skill) >= 0 then
WriteByte(Skill, 0xFF, true)
end
end

end
