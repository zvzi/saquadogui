-- hold a melee out and press the button mf
--MeleeReach
for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren())do                 if v:isA("Tool") then                     local a = Instance.new("SelectionBox",v.Handle)                     a.Adornee = v.Handle                     v.Handle.Size = Vector3.new(50,50,50)                     v.GripPos = Vector3.new(10,10,10)                     lplayer.Character.Humanoid:UnequipTools()                 end end
