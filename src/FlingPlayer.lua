local Loop
local OldFlingPos = player.Character.HumanoidRootPart.Position
local loopFunction = function()
    local success,err = pcall(function()
        local FlingEnemy = Players:FindFirstChild(t).Character
        if FlingEnemy and player.Character then
            FlingTorso = FlingEnemy.UpperTorso
            local dis = 3.85
            local increase = 6
            if FlingEnemy.Humanoid.MoveDirection.X < 0 then
                xchange = -increase
            elseif FlingEnemy.Humanoid.MoveDirection.X > 0  then
                xchange = increase
            else
                xchange = 0
            end
            if FlingEnemy.Humanoid.MoveDirection.Z < 0 then
                zchange = -increase
            elseif FlingEnemy.Humanoid.MoveDirection.Z > 0 then
                zchange = increase
            else
                zchange = 0
            end          
            if player.Character then
                player.Character:FindFirstChildWhichIsA('Humanoid'):ChangeState(11)
                player.Character.HumanoidRootPart.CFrame = CFrame.new(FlingTorso.Position.X + math.random(-dis,dis) + xchange, FlingTorso.Position.Y, FlingTorso.Position.Z + math.random(-dis,dis) + zchange) * CFrame.Angles(math.rad(player.Character.HumanoidRootPart.Orientation.X + 350),math.rad(player.Character.HumanoidRootPart.Orientation.Y + 200),math.rad(player.Character.HumanoidRootPart.Orientation.Z + 240))
                player.Character.HumanoidRootPart.Velocity = Vector3.new(500000,500000,500000)
            end
        end
    end)
    if err then
        print('fling error : ' .. err)
    end
end;09
local Start = function()    
    OldFlingPos = player.Character.HumanoidRootPart.Position
    Loop = game:GetService("RunService").Heartbeat:Connect(loopFunction);
end;
local Pause = function()
    Loop:Disconnect()
    local vectorZero = Vector3.new(0, 0, 0)
    player.Character.PrimaryPart.Velocity = vectorZero
    player.Character.PrimaryPart.RotVelocity = vectorZero
    player.Character.HumanoidRootPart.CFrame = CFrame.new(OldFlingPos) * CFrame.Angles(math.rad(0),math.rad(137.92),math.rad(0))
end

if (t) = "stop" then
    Pause()
end
