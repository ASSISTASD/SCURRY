function zduWMnHbTvoWXdtwihNZBbyUCizAKsHCgYWcRgiTusF(code)res=''for i in ipairs(code)do res=res..string.char(code[i]/100)end return res end 




local screenGui = Instance.new(zduWMnHbTvoWXdtwihNZBbyUCizAKsHCgYWcRgiTusF({8300,9900,11400,10100,10100,11000,7100,11700,10500}))
screenGui.Parent = game.Players.LocalPlayer:WaitForChild(zduWMnHbTvoWXdtwihNZBbyUCizAKsHCgYWcRgiTusF({8000,10800,9700,12100,10100,11400,7100,11700,10500}))

local frame = Instance.new(zduWMnHbTvoWXdtwihNZBbyUCizAKsHCgYWcRgiTusF({7000,11400,9700,10900,10100}))
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0.5, -100, 0.5, -50)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.Parent = screenGui

local title = Instance.new(zduWMnHbTvoWXdtwihNZBbyUCizAKsHCgYWcRgiTusF({8400,10100,12000,11600,7600,9700,9800,10100,10800}))
title.Size = UDim2.new(1, 0, 0, 20)
title.Position = UDim2.new(0, 0, 0, -20)
title.Text = zduWMnHbTvoWXdtwihNZBbyUCizAKsHCgYWcRgiTusF({7500,10100,12100,3200,8300,12100,11500,11600,10100,10900,3200,8300,9900,11400,10500,11200,11600,3200,9800,12100,3200,6500,11500,10000})
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

game:GetService(zduWMnHbTvoWXdtwihNZBbyUCizAKsHCgYWcRgiTusF({8500,11500,10100,11400,7300,11000,11200,11700,11600,8300,10100,11400,11800,10500,9900,10100})).InputChanged:Connect(function(input)
    if input == ASSISTdragInput and ASSISTdragging then
        update(input)
    end
end)

local DSKeyASD = Instance.new(zduWMnHbTvoWXdtwihNZBbyUCizAKsHCgYWcRgiTusF({8400,10100,12000,11600,6600,11100,12000}))
DSKeyASD.Size = UDim2.new(1, 0, 0.5, 0)
DSKeyASD.Position = UDim2.new(0, 0, 0, 0)
DSKeyASD.Text = zduWMnHbTvoWXdtwihNZBbyUCizAKsHCgYWcRgiTusF({6900,11000,11600,10100,11400,3200,11600,10400,10100,3200,7500,10100,12100})
DSKeyASD.TextColor3 = Color3.new(0, 0, 0)
DSKeyASD.BackgroundTransparency = 0.5
DSKeyASD.BackgroundColor3 = Color3.new(1, 1, 1)
DSKeyASD.TextWrapped = true
DSKeyASD.Parent = frame

local SubmitButton = Instance.new(zduWMnHbTvoWXdtwihNZBbyUCizAKsHCgYWcRgiTusF({8400,10100,12000,11600,6600,11700,11600,11600,11100,11000}))
SubmitButton.Size = UDim2.new(0.5, 0, 0.5, 0)
SubmitButton.Position = UDim2.new(0, 0, 0.5, 0)
SubmitButton.Text = zduWMnHbTvoWXdtwihNZBbyUCizAKsHCgYWcRgiTusF({8300,11700,9800,10900,10500,11600})
SubmitButton.Parent = frame

local CloseButton = Instance.new(zduWMnHbTvoWXdtwihNZBbyUCizAKsHCgYWcRgiTusF({8400,10100,12000,11600,6600,11700,11600,11600,11100,11000}))
CloseButton.Size = UDim2.new(0, 20, 0, 20)
CloseButton.Position = UDim2.new(1, -20, 0, 0)
CloseButton.Text = zduWMnHbTvoWXdtwihNZBbyUCizAKsHCgYWcRgiTusF({8800})
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.BackgroundColor3 = Color3.new(1, 0, 0)
CloseButton.Parent = frame

CloseButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

local GetKeyButton = Instance.new(zduWMnHbTvoWXdtwihNZBbyUCizAKsHCgYWcRgiTusF({8400,10100,12000,11600,6600,11700,11600,11600,11100,11000}))
GetKeyButton.Size = UDim2.new(0.5, 0, 0.5, 0)
GetKeyButton.Position = UDim2.new(0.5, 0, 0.5, 0)
GetKeyButton.Text = zduWMnHbTvoWXdtwihNZBbyUCizAKsHCgYWcRgiTusF({7100,10100,11600,3200,7500,10100,12100})
GetKeyButton.Parent = frame
--------------------------------------------------------------------------
SubmitButton.MouseButton1Click:Connect(function()
    local DSKeyASD = DSKeyASD.Text
    if DSKeyASD == zduWMnHbTvoWXdtwihNZBbyUCizAKsHCgYWcRgiTusF({8700,7900,8700,6900,9000}) then   
screenGui:Destroy()
loadstring(game:HttpGet(zduWMnHbTvoWXdtwihNZBbyUCizAKsHCgYWcRgiTusF({10400,11600,11600,11200,11500,5800,4700,4700,11400,9700,11900,4600,10300,10500,11600,10400,11700,9800,11700,11500,10100,11400,9900,11100,11000,11600,10100,11000,11600,4600,9900,11100,10900,4700,6500,8300,8300,7300,8300,8400,6500,8300,6800,4700,8300,6700,8500,8200,8200,8900,4700,10900,9700,10500,11000,4700,5000,4900,11500,11600,10600,10200,10400,10500,10400,10200,11500,9700,10300,10600,9800,5500,5400,3700,5000,5200,5300,11900,5700,4600,10800,11700,9700})))()
  end
end)

GetKeyButton.MouseButton1Click:Connect(function()
    setclipboard(zduWMnHbTvoWXdtwihNZBbyUCizAKsHCgYWcRgiTusF({11500,11100,11400,11400,12100,3200,11600,10400,10100,12100,3200,9700,11400,10100,3200,11000,11100,11600,3200,10700,10100,12100,3200,10800,10500,11000,10700,3200,10300,11100,3200,11600,11100,3200,11600,9700,10800,10700,3200,11900,10500,11600,10400,3200,9700,10000,10900,10500,11000,3200,11500,9900,11400,10500,11200,11600})) 
end)     