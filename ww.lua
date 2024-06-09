local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
function jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT(data) m=string.sub(data, 0, 55) data=data:gsub(m,'')

data = string.gsub(data, '[^'..b..'=]', '') return (data:gsub('.', function(x) if (x == '=') then return '' end local r,f='',(b:find(x)-1) for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end return r; end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x) if (#x ~= 8) then return '' end local c=0 for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end return string.char(c) end)) end


 


   local ScreenGui = Instance.new(jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('NKeqmYxramcmPVPZQvHucqmWFWzgPOkxuikaFxPCYzIPPMyDnAPIudWU2NyZWVuR3Vp'))
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild(jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('jtiOkXYdZiSvhbtjUBxQWxUFpLEogdIEbfVMuuwqsDqeEgCkgGNmblTUGxheWVyR3Vp'))

local Frame = Instance.new(jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('hBefVcDqlpaOznQkXgdFAwacZfkqhlVcFKCaIfHRxFZmLJugKhIpCMhRnJhbWU='))
Frame.Size = UDim2.new(0, 400, 0, 300)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true
Frame.Parent = ScreenGui

local FrameCorner = Instance.new(jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('QfpKMFLXvvsinQTKZFPGoXwBboggIHaLcumKCjPnrvqAtcOrtqWhAGfVUlDb3JuZXI='))
FrameCorner.CornerRadius = UDim.new(0, 10)
FrameCorner.Parent = Frame

local Close = Instance.new(jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('iCGMtSnuBGAqIZOyEKwolIWyRZJymHLDvByzqJJrhboQXBLPbHEihQAVGV4dEJ1dHRvbg=='))
Close.Size = UDim2.new(0, 40, 0, 40)
Close.Position = UDim2.new(1, -40, 0, 0)
Close.BackgroundTransparency = 1
Close.Text = jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('eEnhnYUbgRIjcRdtwkNYFphYfusdmHuXYmruTXHOmZYOTZTcEtfpocPw5c=')
Close.TextScaled = true
Close.TextColor3 = Color3.fromRGB(150, 150, 150)
Close.Parent = Frame
Close.MouseButton1Click:Connect(function()
   ScreenGui:Destroy()
end)

local Title = Instance.new(jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('PHUnNQNUVxYjBOvWerGzlrhJKQMTlDKKZeJWteUZVWFLnllObLgugiMVGV4dExhYmVs'))
Title.Size = UDim2.new(1, 0, 0, 30)
Title.Position = UDim2.new(0, 0, 0.05, 0)
Title.Text = jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('ZMLmIUhogSuXuUEeFrlntauZpQumypSkVxppAStISzzFhVREKmCvMiQS2V5IFN5c3RlbQ==')
Title.TextSize = 18
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1
Title.Parent = Frame

local Instructions = Instance.new(jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('xwsRJbTrXFreVgWvXIeJMwCyzLuFaCCmZLKqzrncBXlOXWHmAAECHFPVGV4dExhYmVs'))
Instructions.Size = UDim2.new(1, 0, 0, 30)
Instructions.Position = UDim2.new(0, 0, 0.2, 0)
Instructions.Text = jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('gIHDromrvciZTaBSLZSiaatpVvHnLOkOfeRtBBVixDXxDGuPVlqpaoLRW50ZXIgS2V5IFRvIEFjY2VzcyBUaGUgU2NyaXB0')
Instructions.TextSize = 13
Instructions.TextColor3 = Color3.fromRGB(150, 150, 150)
Instructions.BackgroundTransparency = 1
Instructions.Parent = Frame

local TextBox = Instance.new(jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('DikYVzniYWgpFugzTZDGMxirCtZSUAjSaDNAxDVtMPFepboXaJkqJewVGV4dEJveA=='))
TextBox.Size = UDim2.new(0.8, 0, 0.2, 0)
TextBox.Position = UDim2.new(0.1, 0, 0.4, 0)
TextBox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextBox.PlaceholderText = jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('fYKxUrjIiRenWYvDvtRlfWnybaFpxoFtHnqWZesYargkxbemCBJuWcoRW50ZXIgS2V5Li4u')
TextBox.Text = jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('KhcFKuOcBTJwIzWOxgkxRMgrbvTUatcWMeDsXTknoafOMmuHjmWQqUd')
TextBox.TextSize = 18
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Parent = Frame

local TextBoxCorner = Instance.new(jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('qwKllspWVVlnqNJBYLNIbYRfsRbPANJyFpTujTHJfLHcBKiHTTJcAmKVUlDb3JuZXI='))
TextBoxCorner.CornerRadius = UDim.new(0, 5)
TextBoxCorner.Parent = TextBox

local GetKey = Instance.new(jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('AReZkvfiXMogbiWeSWWqghivZwexvZfJiVzbPmSzDMlNPEtYkQqSivnVGV4dEJ1dHRvbg=='))
GetKey.Size = UDim2.new(0.35, 0, 0.15, 0)
GetKey.Position = UDim2.new(0.1, 0, 0.7, 0)
GetKey.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
GetKey.Text = jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('EwdzgiPgodfULkIETchSKAzwMGDQYxKgWuSDTGHlidoyGZkKEcBpptnR2V0IEtleQ==')
GetKey.TextSize = 18
GetKey.TextColor3 = Color3.fromRGB(150, 150, 150)
GetKey.Parent = Frame

local GetKeyCorner = Instance.new(jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('xfKtPGfHhDAYkStaPTYOClExJGPzUnLKpkGoRAytyMGwKlIMEcnLeABVUlDb3JuZXI='))
GetKeyCorner.CornerRadius = UDim.new(0, 5)
GetKeyCorner.Parent = GetKey

local CheckKey = Instance.new(jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('XlTwRshGicSHWfwnxhwIxORduPSendsKXDosefpoHfRRgfeWhnhzlDGVGV4dEJ1dHRvbg=='))
CheckKey.Size = UDim2.new(0.35, 0, 0.15, 0)
CheckKey.Position = UDim2.new(0.55, 0, 0.7, 0)
CheckKey.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
CheckKey.Text = jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('DlhPtPEzJkYTFGPzstSroDTuThprzsMpWoNkgMnuYAnMJdLlOkTXwRvQ2hlY2sgS2V5')
CheckKey.TextSize = 18
CheckKey.TextColor3 = Color3.fromRGB(150, 150, 150)
CheckKey.Parent = Frame

local CheckKeyCorner = Instance.new(jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('yiIwKslcwMJGvTWupwzViflNFEbOtlbIEhoLMpuNeylPdSLbXlYdUCyVUlDb3JuZXI='))
CheckKeyCorner.CornerRadius = UDim.new(0, 5)
CheckKeyCorner.Parent = CheckKey
--------------
_G.Key_abde = jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('OwUeRcvDYItSjgPhKsAXBHgtfGLHNczBJOlSfqKUCCAPiTEiVFcFIPmTk9U')

local key = game:HttpGet(jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('pHSJohLKmyNJPEauXagUmwgfnGVkqkzEOVjIsLzQvFzIXPIPKYLBFFHaHR0cHM6Ly9yZWRpcmVjdC1hcGkud29yay5pbmsvdG9rZW5WYWxpZC8=') .. _G.Key_abde .. jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('MMiCkqACnvyXVkZyhxbPsBZSUGaVYjJjtbIKHmLAktxzMHXEVrGPrdHP2xpbmtJZD05MDcwMQ==')) -- Replace this with your key





GetKey.MouseButton1Click:Connect(function()
   setclipboard(jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('iwWNXaDQsWDpBAfctoaUTubPtqGhEHXFNnYSlbPwPdZgavKBGHPuExlaHR0cHM6Ly93b3JrLmluay8xVjRiL2x4N3huamx3'))
end)

local function validateKey(key)
    return key == jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('EqGggfkhtTZxvXEGvPxGREaNyWTvRveoohMlemqhQrSTNFQQvKnucSKMTNhMDU4MjAtYmIxOC00MGEzLTkwMWEtNjZiNTg1YzI4MGIw')
end

CheckKey.MouseButton1Click:Connect(function()
    local enteredKey = TextBox.Text
    if validateKey(enteredKey) then
        Instructions.Text = jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('HrHwRsTQdZfmqpzuhkJHuhAsJWesFlOcDGIWFVoPWOYrsUYRuCdthWFQ29ycmVjdCBLZXkh')
        TextBox.Text = jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('lhGKNsGGCsokIAAZuQvQcbCqxxoWqoSVxMTSQbksgQeOkiHHnPogVFp')
        wait(1)
        loadstring(game:HttpGet(jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('skJYxlcWwxwoThjgnVargxYhAIoqgNOWAeDZLBGBoWjrBzlInhKOjymaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL0FTU0lTVEFTRC9TQ1VSUlkvbWFpbi8yMXN0amZoaWhmc2FnamI3NiUyNDV3OS5sdWE=')))()
        ScreenGui:Destroy()
    else
        Instructions.Text = jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('uAZZiuDrigKUSkxePtUSrkISvAVoyqusCWGzPxqeicEfutkxEdDubKSSW52YWxpZCBrZXkuIFRyeSBhZ2Fpbi4=')
        TextBox.Text = jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('tWljPZKeLfFDwqBvmUozJHOePQBSmoASKiAsBTvbDDEHyDihvmNBCWC')
        wait(1)
        Instructions.Text = jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('HrULaVIwrSzeCVvACMPaXkbxgHmXAoUXuQvcgVNhDFUWAQijkYNCYImRW50ZXIgS2V5IFRvIEFjY2VzcyBUaGUgU2NyaXB0')
        TextBox.Text = jYyqziNEyDxaboyIgkgJLHUKtOJrzfAFywOPJkZHzJmmvSvmXqwdJUTlkrHAZT('JDSCTRHHuOIkkfDKJOanfKgkBToJIHpLRVeaCzdswfjwZrRjurXeLIJ')
    end
end)    