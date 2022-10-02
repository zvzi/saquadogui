        local oldbagpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        local TargetPlr = (t)
        function getRoot(char)
            local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
            return rootPart
        end
        
        if TargetPlr and game.Players[TargetPlr].Character.BodyEffects['K.O'].Value == false then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop['[BrownBag] - $25'].Head.CFrame
            wait(.30)
            fireclickdetector(game.Workspace.Ignored.Shop['[BrownBag] - $25'].ClickDetector)
            game.Players.LocalPlayer.Backpack:WaitForChild("[BrownBag]").Parent = game.Players.LocalPlayer.Character
        
            
            wait(.5)
            repeat
                pcall(function()
                    wait()
                    getRoot(game.Players[TargetPlr].Character).CFrame = getRoot(game.Players.LocalPlayer.Character).CFrame + Vector3.new(1,3,0)
                    game.Players.LocalPlayer.Character["[BrownBag]"]:Activate()
                end)
            until game.Players[TargetPlr].Character:FindFirstChild("Christmas_Sock")
        elseif game.Players[TargetPlr].Character.BodyEffects['K.O'].Value == false then
        end
        if game.Players[TargetPlr].Character:FindFirstChild("Christmas_Sock") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(oldbagpos)
        end
    end
end
