local Client = game:GetService"Players".LocalPlayer

function Godmode()
   local Attacking = Client.Character:FindFirstChild"BodyEffects".Attacking
   
    if Attacking then
        Attacking:Destroy()
    end
end
Godmode()

Client.CharacterAdded:Connect(function()
    wait(1)
    
    Godmode()
end)
