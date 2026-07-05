LUAGUI_NAME = "Lock On Range"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Lock On Range"

LockOnValue = 999999999 --- Default 1200
LockOnReleaseValue = 999999999 --- Default 1500

--- Game Version Check
epiccheck = 0x585B61
stmcheck = epiccheck+0x2F8
stmjpcheck = epiccheck+0x2A8

function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
	IsEpicGame = 0
	IsSteamGame = 0
	IsSteamJPGame = 0
	end
end

function _OnFrame()
			if ReadLong(epiccheck) == 0x7265737563697065 and IsEpicGame == 0 then
				IsEpicGame = 1
				ConsolePrint("Lock On Range (EPIC GL) - installed")
			end
			
			if ReadLong(stmcheck) == 0x7265737563697065 and IsSteamGame == 0 then
				IsSteamGame = 1
				ConsolePrint("Lock On Range (Steam GL) - installed")
			end
			
			if ReadLong(stmjpcheck) == 0x7265737563697065 and IsSteamJPGame == 0 then
				IsSteamJPGame = 1
				ConsolePrint("Lock On Range (Steam JP) - installed")
			end
		
			if IsEpicGame == 1 then
			LockOnRange = ReadLong(0x2AE51E0)+0x4C
			LockOnReleaseRange = ReadLong(0x2AE51E0)+0x50
			WriteFloat(LockOnRange, LockOnValue, true)
			WriteFloat(LockOnReleaseRange, LockOnReleaseValue, true)
			end
			
			if IsSteamGame == 1 then
			LockOnRange = ReadLong(0x2AE5760)+0x4C
			LockOnReleaseRange = ReadLong(0x2AE5760)+0x50
			WriteFloat(LockOnRange, LockOnValue, true)
			WriteFloat(LockOnReleaseRange, LockOnReleaseValue, true)
			end
	
			if IsSteamJPGame == 1 then
			LockOnRange = ReadLong(0x2AE5760)+0x4C
			LockOnReleaseRange = ReadLong(0x2AE5760)+0x50
			WriteFloat(LockOnRange, LockOnValue, true)
			WriteFloat(LockOnReleaseRange, LockOnReleaseValue, true)
			end

end