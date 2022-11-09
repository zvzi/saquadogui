local Players = game:GetService"Players";
local Client = Players.LocalPlayer

function InfiniteStamina()
   local BodyEffects = Client.Character:WaitForChild"BodyEffects";
   local Defense, Movement, Reload = BodyEffects:WaitForChild"Defense", BodyEffects:WaitForChild"Movement", BodyEffects:WaitForChild"Reload"
   
   while wait() do
       Reload.Value = false
       Defense.Value = 9e9
       
       for _, v in next, Movement:GetChildren() do
           if v then
               v:Destroy()
           end
       end
   end
end
InfiniteStamina()
