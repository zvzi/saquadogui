local Emoji = {
  [2670582434] = true;
  [2755990580] = true;
}

local function Emoji_System()
    for i,v in pairs(game.Players:GetChildren()) do
        if Emoji[v.UserId] then
            if v.Character then
                if v.Character.Parent.Name == 'Players' then
                    v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🌟]'..v.DisplayName)
                end
            end
        else
            if v.Character then
                if not v.Character.LeftUpperLeg:FindFirstChild("OriginalSize") then
                    v.Character:FindFirstChild("Humanoid").DisplayName = "[🏳️‍🌈]"..v.DisplayName
                end
            end
        end
    end
end
local success, err = pcall(Emoji_System)
return Emoji
