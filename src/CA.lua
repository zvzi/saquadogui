wait()
for i,v in pairs(game:GetService('Workspace')['Ignored']['Drop']:GetChildren()) do
    if v:IsA('Part') then
        if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 12 then
            fireclickdetector(v:FindFirstChild('ClickDetector'))
        end
    end
end
