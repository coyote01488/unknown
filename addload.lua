local Screen = Instance.new("ScreenGui")
local Label = Instance.new("TextLabel")

Screen.Name = "s9HSkVv1l1xazfli"
Screen.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Screen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Screen.ResetOnSpawn = false

Label.Name = "GKNsknTIKASNETLDASm"
Label.Parent = Screen
Label.BackgroundTransparency = 1
Label.Position = UDim2.new(0, 0, 0, 0)
Label.Size = UDim2.new(1, 0, 1, 0)
Label.Text = "STILL WATER + ADRENALINE + NORADRENALINE + HAWK TUAH + ANGER ISSUES + BALKAN PARENTS + ENGLISH OR SPANISH + GERMAN STARE + BALKAN RAGE + JONKLER LAUGH + SWIGGLED + LITHUANIAN TESTIE TWIDDLE + LATVIAN MOANING + ESTONIAN BLOOD PRESSURE + MESOPOTAMIAN TESTICLE TAG + PHONK + THOSE WHO KNOW"
Label.TextColor3 = Color3.fromRGB(255, 0, 0)
Label.TextScaled = true
Label.TextSize = 32

local Sigma = true

game:GetService("RunService").RenderStepped:Connect(function(Delta)
    if Sigma then
        game:GetService("TweenService"):Create(Label, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), { Size = UDim2.new(0, 0, 0, 0) }):Play()
    
        task.wait(2)

        Sigma = false
    else
        game:GetService("TweenService"):Create(Label, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), { Size = UDim2.new(1, 0, 1, 0) }):Play()
    
        task.wait(2)

        Sigma = true
    end
end)
