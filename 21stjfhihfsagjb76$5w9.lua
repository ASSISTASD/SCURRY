

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 50)
frame.Position = UDim2.new(0.5, -100, 0.5, -50)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.Parent = screenGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 20)
title.Position = UDim2.new(0, 0, 0, -20)
title.Text = "CHOSE SCRIPT MOD"
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

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == ASSISTdragInput and ASSISTdragging then
        update(input)
    end
end)

local SubmitButton = Instance.new("TextButton")
SubmitButton.Size = UDim2.new(0.5, 0, 1, 0)
SubmitButton.Position = UDim2.new(0, 0, 0, 0)
SubmitButton.Text = "PVP"
SubmitButton.Parent = frame


local GetKeyButton = Instance.new("TextButton")
GetKeyButton.Size = UDim2.new(0.5, 0, 1, 0)
GetKeyButton.Position = UDim2.new(0.5, 0, 0, 0)
GetKeyButton.Text = "NORMAL"
GetKeyButton.Parent = frame
--------------------------------------------------------------------------
SubmitButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ASSISTASD/ASD/main/BLCK.lua"))()
end)

GetKeyButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ASSISTASD/ASD/main/ASD.lua"))()
end)