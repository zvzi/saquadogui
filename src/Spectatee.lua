-- // Spectate by lootsu (github/zvzi)
-- to spectate someone, change the "t" in the 3rd line next to "Players" and replace the letter with your target
getgenv().Target = game.Workspace.Players[t]
getgenv().Targeting = true
game.Workspace.Camera.CameraSubject = Target.Character.HumanoidRootPart
else
    Targeting = false
end
-- // Stop Spectating
  local user = game.Players.LocalPlayer.Name
  game.Workspace.Camera.CameraSubject = game.Workspace.Players[user].Humanoid
