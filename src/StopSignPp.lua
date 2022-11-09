local Plr = game.Players.LocalPlayer
local LastPos = Plr.Character.HumanoidRootPart.CFrame
	Plr.Character.Humanoid:UnequipTools()
	wait(0.1)
	Plr.Character.Humanoid:EquipTool(Plr.Backpack["[StopSign]"])
	Plr.Character["[StopSign]"].Sign:Destroy()
	Plr.Character.HumanoidRootPart.CFrame = CFrame.new(803.5, 48, -547, 0, 0, -1, 0, 1, 0, 1, 0, 0)
	Plr.Character["[StopSign]"].Handle.Orientation = Vector3.new(0, 180, 0)
	wait(0.2)
	Plr.Character["[StopSign]"].Handle.Position = Vector3.new(806.5, 47, -547)
	Plr.Character.HumanoidRootPart.CFrame = LastPos
