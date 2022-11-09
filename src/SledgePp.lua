local Plr = game.Players.LocalPlayer
local LastPos = Plr.Character.HumanoidRootPart.CFrame
  Plr.Character.Humanoid:UnequipTools()
	wait(0.1)
	Plr.Character.Humanoid:EquipTool(Plr.Backpack["[SledgeHammer]"])
	Plr.Character.HumanoidRootPart.CFrame = CFrame.new(803.5, 48, -547, 0, 0, -1, 0, 1, 0, 1, 0, 0)
	Plr.Character["[SledgeHammer]"].Part.Orientation = Vector3.new(0, 180, 0)
	Plr.Character["[SledgeHammer]"].Part.Position = Vector3.new(804, 47, -547)
	Plr.Character["[SledgeHammer]"].Part.Name = "BALLS"
	wait(0.1)
	Plr.Character["[SledgeHammer]"].Part.Orientation = Vector3.new(-90, 90, 180)
	Plr.Character["[SledgeHammer]"].Part.Position = Vector3.new(806, 47, -547)
	Plr.Character["[SledgeHammer]"].Part.Name = "SHAFT"
	Plr.Character.HumanoidRootPart.CFrame = LastPos
