LUAGUI_NAME = "Set Language"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Set Language"

IsEpicGLVersion = 0x68D229
IsSteamGLVersion = 0x68D451
IsSteamJPVersion = 0x68C401

LANGUAGE = 4

-- 0 jp
-- 1 en
-- 2 en
-- 3 de
-- 4 fr
-- 5 es
-- 6 it

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
		ConsolePrint("Set Language (EPIC GL) - installed")
	end
	
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Set Language (Steam GL) - installed")
	end
	
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Set Language (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
Language = ReadLong(0x10FB5E18)+0x274,true
WriteInt(Language, LANGUAGE, true)
end

---------- Steam Version
if stmgames == 1 then
Language = ReadLong(0x10FB5718)+0x274,true
WriteInt(Language, LANGUAGE, true)
end

---------- Steam JP Version
if stmjpgames == 1 then
Language = ReadLong(0x10FB4718)+0x274,true
WriteInt(Language, LANGUAGE, true)
end


end