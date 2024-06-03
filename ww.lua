local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
function oYzNfQTTjZpgnkQKUFR(data) m=string.sub(data, 0, 55) data=data:gsub(m,'')

data = string.gsub(data, '[^'..b..'=]', '') return (data:gsub('.', function(x) if (x == '=') then return '' end local r,f='',(b:find(x)-1) for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end return r; end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x) if (#x ~= 8) then return '' end local c=0 for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end return string.char(c) end)) end


 




local screenGui = Instance.new(oYzNfQTTjZpgnkQKUFR('bIojMPtqMujBykxpoOpBFtaPjUhllXentFTMGxmfZNEhBqPsJddACgcU2NyZWVuR3Vp'))
screenGui.Parent = game.Players.LocalPlayer:WaitForChild(oYzNfQTTjZpgnkQKUFR('ONnPRyLGWFdDQrFCUIYynxxZkcOTXGeoTbLDjMUHtremWpCDXyqASgOUGxheWVyR3Vp'))

local frame = Instance.new(oYzNfQTTjZpgnkQKUFR('qZVZDUAohQheVwmLBevgRrdwXoXVJKwMolgTduqltoDnXepSvtYxiGSRnJhbWU='))
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0.5, -100, 0.5, -50)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.Parent = screenGui

local title = Instance.new(oYzNfQTTjZpgnkQKUFR('KficxbJDBusuJpNsQZWyIlaYCdAjgJkImoOvWTFoLcrxrTEdlauNcpBVGV4dExhYmVs'))
title.Size = UDim2.new(1, 0, 0, 20)
title.Position = UDim2.new(0, 0, 0, -20)
title.Text = oYzNfQTTjZpgnkQKUFR('UYLyDdfnyFTgkhLQdjxpfmUSrmsHIMUvWeaNOfdCaUqfwSFVhkoAGsUS2V5IFN5c3RlbSBTY3JpcHQgYnkgQXNk')
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

game:GetService(oYzNfQTTjZpgnkQKUFR('LwDqhsNXdjJPOznKTAMPURtEJZmhwKDRAxPBffnVKaqplteblNLuuYQVXNlcklucHV0U2VydmljZQ==')).InputChanged:Connect(function(input)
    if input == ASSISTdragInput and ASSISTdragging then
        update(input)
    end
end)

local DSKeyASD = Instance.new(oYzNfQTTjZpgnkQKUFR('XBTjoobakIrsNmrwUSWfOKwpXnWzzzcFsgiVZUQHLinftvkffoasEYgVGV4dEJveA=='))
DSKeyASD.Size = UDim2.new(1, 0, 0.5, 0)
DSKeyASD.Position = UDim2.new(0, 0, 0, 0)
DSKeyASD.Text = oYzNfQTTjZpgnkQKUFR('zERVAEyBRQqDzSooFMdsAkCdwmnaUyyMZlNdsgzOJynUkQMuKxYGAJJRW50ZXIgdGhlIEtleQ==')
DSKeyASD.TextColor3 = Color3.new(0, 0, 0)
DSKeyASD.BackgroundTransparency = 0.5
DSKeyASD.BackgroundColor3 = Color3.new(1, 1, 1)
DSKeyASD.TextWrapped = true
DSKeyASD.Parent = frame

local SubmitButton = Instance.new(oYzNfQTTjZpgnkQKUFR('hjHyezbdrVfWnfERgElXnPCBLSKDVcWFbJBDUVOXaHBoLUJIDqqYvqqVGV4dEJ1dHRvbg=='))
SubmitButton.Size = UDim2.new(0.5, 0, 0.5, 0)
SubmitButton.Position = UDim2.new(0, 0, 0.5, 0)
SubmitButton.Text = oYzNfQTTjZpgnkQKUFR('GoJfMAqreMERXZLKhTStRLzryanoGehfwuFRKTgiIguZIjYPJJfFgaHU3VibWl0')
SubmitButton.Parent = frame

local CloseButton = Instance.new(oYzNfQTTjZpgnkQKUFR('GEviBcQvgJWqMPMRqpdGpCRUVrQdscyTVFgcEoaQtAVYnsrAYUitZgDVGV4dEJ1dHRvbg=='))
CloseButton.Size = UDim2.new(0, 20, 0, 20)
CloseButton.Position = UDim2.new(1, -20, 0, 0)
CloseButton.Text = oYzNfQTTjZpgnkQKUFR('MEJSvSWmCaKfKgRTOgLCPKbUthwcTGYNDoRMLHrEBZvqmdFPXCaKVdpWA==')
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.BackgroundColor3 = Color3.new(1, 0, 0)
CloseButton.Parent = frame

CloseButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

local GetKeyButton = Instance.new(oYzNfQTTjZpgnkQKUFR('LGqzEYprkLYmjeDXEAfWwOykpmIqfVhAzCvYMwdOclTcOBlKJmAjFcrVGV4dEJ1dHRvbg=='))
GetKeyButton.Size = UDim2.new(0.5, 0, 0.5, 0)
GetKeyButton.Position = UDim2.new(0.5, 0, 0.5, 0)
GetKeyButton.Text = oYzNfQTTjZpgnkQKUFR('VtQliQttnLTBVYVdMBXggaApwAKMdfDotbSfJVKibpcRsxcqmjizPYkR2V0IEtleQ==')
GetKeyButton.Parent = frame
--------------------------------------------------------------------------
SubmitButton.MouseButton1Click:Connect(function()
    local DSKeyASD = DSKeyASD.Text
    if DSKeyASD == oYzNfQTTjZpgnkQKUFR('YazWZmAFmoUVnbDxGZumvJCwthaJFhwYLgFHBjqFjnjsOpvxNsPHvieV09XRVo=') then   
screenGui:Destroy()
loadstring(game:HttpGet(oYzNfQTTjZpgnkQKUFR('BxNUfpmnzFglHVGTDSfyNShwTnBmzKbcLmLfATwhFljWxiRgKggrgVBaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0FTU0lTVEFTRC9TQ1VSUlkvbWFpbi8yMXN0amZoaWhmc2FnamI3NiUyNDV3OS5sdWE=')))()
  end
end)

GetKeyButton.MouseButton1Click:Connect(function()
    setclipboard(oYzNfQTTjZpgnkQKUFR('mmYcaJWiToZuSIGfJdqbGtldsKLgUrIvkNddbGsGNMqORvufEeHRsaRc29ycnkgdGhleSBhcmUgbm90IGtleSBsaW5rIGdvIHRvIHRhbGsgd2l0aCBhZG1pbiBzY3JpcHQ=')) 
end)     