-- this is the script


local player = game.Players.LocalPlayer

local function SetUp(char)



local hrp = char:FindFirstChild("HumanoidRootPart")


local playergui = player.PlayerGui
local screengui = Instance.new("ScreenGui")
screengui.Parent = playergui

local button = Instance.new("TextButton", screengui)

button.Size = UDim2.new(0, 100, 0, 100)
button.AnchorPoint = Vector2.new(0.5, 0.5)
button.Position = UDim2.new(0.5, 0, 0.7, 0)

button.MouseButton1Click:Connect(function()
local initialPos = hrp.CFrame
hrp.CFrame = CFrame.new(205.323486, 341.002838, 811.276123, 0, 0, -1, 0, 1, 0, 1, 0, 0)
task.wait(0.0005)
hrp.CFrame = initialPos
end)
end
if player.Character then SetUp(player.Character) end

player.CharacterAdded:Connect(SetUp)
