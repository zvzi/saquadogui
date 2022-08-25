player1=game.Players.LocalPlayer

q=Instance.new('HopperBin', player1.Backpack)
q.Name = 'Click Teleport'


bin = q



function teleportPlayer(pos)
local player = game.Players.LocalPlayer
if player == nil or player.Character == nil then return end
player.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(pos.x, pos.y + 7, pos.z))
end


enabled = true
function onButton1Down(mouse)
if not enabled then
return
end

local player = game.Players.LocalPlayer
if player == nil then return end


enabled = false
local cf = mouse.Hit
local v = cf.lookVector

teleportPlayer(cf.p)

wait()
enabled = true

end

function onSelected(mouse)
mouse.Icon = "rbxasset://textures\\ArrowCursor.png"
mouse.Button1Down:connect(function() onButton1Down(mouse) end)
end

bin.Selected:connect(onSelected)
