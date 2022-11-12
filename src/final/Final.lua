local SaquadoLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/sol"))()

-- // CHECK USER
loadstring(game:HttpGet("https://raw.githubusercontent.com/zvzi/saquadogui/main/src/emoji.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/zvzi/saquadogui/main/src/IndentityCheckerWH.lua"))()

local win = SaquadoLib:New({
  Name = "Saquado",
  FolderToSave = "Saquado Data"
})

-- define tabs
local MainTab = win:Tab("Main")
local ExtrasTab = win:Tab("Extras")
local TogglesTab = win:Tab("Toggles")
local TargetTab = win:Tab("Target")
local AimlockTab = win:Tab("Aimlock")
local CombatTab = win:Tab("Combat")
-- define sections
local mainscriptsection = MainTab:Section("— Mains")
local togglesection = TogglesTab:Section("— Toggles")
local extrasection = ExtrasTab:Section("— Extras")
local targetsection = TargetTab:Section("— Target")
local aimlocksection = AimlockTab:Section("— Aimlock")
local combatsection = CombatTab:Section("— Combat")

mainscriptsection:Button("Fly (X)", function()
    SaquadoLib:Notification("Fly", "Press X to toggle flight, if you can't fly after you die just come back to enable.")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/zvzi/saquadogui/main/src/Fly.lua"))()
end)

targetsection:Textbox("Goto Player", true, function(t)
    local tp = (t)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players[tp].Character.HumanoidRootPart.CFrame.Position)
end)

mainscriptsection:Button("Click Teleport", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/zvzi/saquadogui/main/src/ClickTP.lua"))()
end)

togglesection:Toggle("Anti Stomp", false,"Anti Stomp", function(t)
  getgenv().AntiStomp = (t)
  while AntiStomp == true do
    loadstring(game:HttpGet("https://raw.githubusercontent.com/zvzi/saquadogui/main/src/AntiStomp.lua"))()
  end
end)

togglesection:Toggle("Cash Aura", false,"cash", function(t)
  getgenv().CashAuraEnabled = (t)
  while CashAuraEnabled == true do
    loadstring(game:HttpGet("https://raw.githubusercontent.com/zvzi/saquadogui/main/src/CA.lua"))()
  end
end)

extrasection:Button("Animations", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/zvzi/saquadogui/main/src/AnimPack.lua"))()
end)

mainscriptsection:Button("Anonymous", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/zvzi/saquadogui/main/src/Anonymous.lua"))()
end)

mainscriptsection:Button("Bike Fly", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/zvzi/saquadogui/main/src/BikeFly.lua"))()
end)

combatsection:Button("Melee Reach", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/zvzi/saquadogui/main/src/MeleeReach.lua"))()
end)

extrasection:Button("Chat Spy", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/zvzi/saquadogui/main/src/ChatSpy.lua"))()
end)

targetsection:Textbox("Bag Player", true, function(t)
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
end)

targetsection:Textbox("Spectate Player", true, function(t)
  getgenv().Target = game.Workspace.Players[t]
  getgenv().Targeting = true
  local LP = game:GetService('Players').LocalPlayer
  game.Workspace.Camera.CameraSubject = Target.Humanoid
end)

targetsection:Button("Stop Spectating", function()
  local user = game.Players.LocalPlayer.Name
  game.Workspace.Camera.CameraSubject = game.Workspace.Players[user].Humanoid
end)

aimlocksection:Button("Purple Dot Silent Aim", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/zvzi/saquadogui/main/src/purpledot.lua"))()
end)

aimlocksection:Button("Aimlock (with resolver)", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/zvzi/saquadogui/main/src/Resolver.lua"))()
end)

aimlocksection:Button("Non-blatant AntiLock", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/zvzi/saquadogui/main/src/AntiAim.lua"))()
end)

targetsection:Textbox("Fling Player", true, function(t)
  loadstring(game:HttpGet("https://raw.githubusercontent.com/zvzi/saquadogui/main/src/FlingPlayer.lua"))()
end)

combatsection:Button("No Slow", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/zvzi/saquadogui/main/src/NoSlow.lua"))()
end)

combatsection:Button("Fixed Godmode", function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/zvzi/saquadogui/main/src/Godmode.lua"))()
end)

extrasection:Button("Split Grenade", function() 
  loadstring(game:HttpGet("https://raw.githubusercontent.com/zvzi/saquadogui/main/src/SplitGrenade.lua"))()
end)
extrasection:Button("Sledgehammer Penis", function() 
  loadstring(game:HttpGet("https://raw.githubusercontent.com/zvzi/saquadogui/main/src/SledgePp.lua"))()
end)
extrasection:Button("Bat Penis", function() 
  loadstring(game:HttpGet("https://raw.githubusercontent.com/zvzi/saquadogui/main/src/BatPp.lua"))()
end)
extrasection:Button("Freecam", function() 
  loadstring(game:HttpGet("https://raw.githubusercontent.com/zvzi/saquadogui/main/src/Freecam.lua"))()
end)
