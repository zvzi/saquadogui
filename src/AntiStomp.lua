pcall(function()
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("BodyEffects"):FindFirstChild("K.O").Value == true then
        for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then
                v:Destroy()
            end
        end
    end
end)
