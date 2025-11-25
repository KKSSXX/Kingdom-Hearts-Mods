LUAGUI_NAME = "Fast Forward"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Fast Forward"

epiccheck = 0x585B61
stmcheck = 0x585E59
stmjpcheck = 0x585E09

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
				ConsolePrint("Fast Forward (EPIC GL) - installed")
			end
			
			if ReadLong(stmcheck) == 0x7265737563697065 and IsSteamGame == 0 then
				IsSteamGame = 1
				ConsolePrint("Fast Forward (Steam GL) - installed")
			end
			
			if ReadLong(stmjpcheck) == 0x7265737563697065 and IsSteamJPGame == 0 then
				IsSteamJPGame = 1
				ConsolePrint("Fast Forward (Steam JP) - installed")
			end
		
			if IsEpicGame == 1 then

if SpeedMode == nil then SpeedMode = 0 end
if lastButtonState == nil then lastButtonState = 0 end

Button = 0x29FAE40
Gamespeed = 0x717214

local btn = ReadByte(Button)

if btn ~= lastButtonState then
    if btn == 0x02 then
        SpeedMode = 1  
    elseif btn == 0x04 then
        SpeedMode = 0  
    end
end

lastButtonState = btn

if SpeedMode == 1 then
    WriteFloat(Gamespeed, 5.0)
else
    WriteFloat(Gamespeed, 1.0)
end


			end
			
			
			
			if IsSteamGame == 1 then

if SpeedMode == nil then SpeedMode = 0 end
if lastButtonState == nil then lastButtonState = 0 end

Button = 0xBF3270
Gamespeed = 0x717424

local btn = ReadByte(Button)

if btn ~= lastButtonState then
    if btn == 0x02 then
        SpeedMode = 1  
    elseif btn == 0x04 then
        SpeedMode = 0  
    end
end

lastButtonState = btn

if SpeedMode == 1 then
    WriteFloat(Gamespeed, 5.0)
else
    WriteFloat(Gamespeed, 1.0)
end

			end
	
			if IsSteamJPGame == 1 then
			
if SpeedMode == nil then SpeedMode = 0 end
if lastButtonState == nil then lastButtonState = 0 end

Button = 0xBF3270
Gamespeed = 0x717424

local btn = ReadByte(Button)

if btn ~= lastButtonState then
    if btn == 0x02 then
        SpeedMode = 1  
    elseif btn == 0x04 then
        SpeedMode = 0  
    end
end

lastButtonState = btn

if SpeedMode == 1 then
    WriteFloat(Gamespeed, 5.0)
else
    WriteFloat(Gamespeed, 1.0)
end
			
			end
end
