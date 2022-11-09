getgenv().lootsu = true 
getgenv().cocks = -120
local humrootpartfinder = game.Players.LocalPlayer.Character.HumanoidRootPart
game:GetService("RunService").heartbeat:Connect(function()
if getgenv().lootsu ~= false then

local locatevelo = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
humrootpartfinder.Velocity = Vector3.new(0, getgenv().cocks, 0)
    game:GetService("RunService").RenderStepped:Wait()
    humrootpartfinder.Velocity = locatevelo
end
end)
