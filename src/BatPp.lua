local Plr = game.Players.LocalPlayer
local LastPos = Plr.Character.HumanoidRootPart.CFrame
	Plr.Character.Humanoid:UnequipTools()
	wait(0.1)
	Plr.Character.Humanoid:EquipTool(Plr.Backpack["[Bat]"])
	Plr.Character.HumanoidRootPart.CFrame = CFrame.new(803.5, 48, -547, 0, 0, -1, 0, 1, 0, 1, 0, 0)
	Plr.Character["[Bat]"].Handle.Orientation = Vector3.new(0, 0, 90)
	Plr.Character["[Bat]"].Handle.Position = Vector3.new(806, 47, -547)
	Plr.Character.HumanoidRootPart.CFrame = LastPos
