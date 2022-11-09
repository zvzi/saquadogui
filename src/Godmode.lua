local function L_427_func()
    local L_428_ = game:GetService('Players').LocalPlayer;
    local L_429_ = L_428_.Character;
    L_429_:FindFirstChildOfClass('Humanoid').Health = 0;

    local L_430_ = L_428_.CharacterAdded:Wait();
    local L_431_ = Instance.new('Folder');
    L_431_.Name = 'FULLY_LOADED_CHAR';
    L_431_.Parent = L_430_;
    L_430_:WaitForChild('RagdollConstraints'):Destroy();
    local L_432_ = Instance.new('BoolValue', L_430_);
    L_432_.Name = 'RagdollConstraints';

    local L_433_ = game:GetService("Players")
    local L_434_ = L_433_.LocalPlayer
    local L_435_ = L_434_.Character

    L_435_.BodyEffects.Armor:Destroy()
    L_435_.BodyEffects.Defense:Destroy()

    local L_436_ = Instance.new("NumberValue")
    L_436_.Name = "Defense"
    L_436_.Parent = L_435_.BodyEffects

    local L_437_ = Instance.new("NumberValue")
    L_437_.Name = "Armor"
    L_437_.Parent = L_435_.BodyEffects

    game.ReplicatedStorage.MainEvent:FireServer("Block", true)
end


L_427_func()
while wait() do
    for L_438_forvar0, L_439_forvar1 in pairs(game.Players.LocalPlayer.Character:FindFirstChildWhichIsA('Humanoid'):GetPlayingAnimationTracks()) do
        if L_439_forvar1.Name == 'Block' then
            L_439_forvar1:Stop()
        end
    end
end	
end
