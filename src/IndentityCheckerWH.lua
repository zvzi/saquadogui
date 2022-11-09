local webh = "https://discord.com/api/webhooks/1039964659790385183/j1YCGKj-wwLAnCF9cJfBgzqiK9AdVsp2Ghr07BSjy9PFBtlOOh2Ff71crOXvkqk7kThb"


pcall(function()
   local data = {

  ['embeds'] = {
    {
       ['title'] = 'script',
       ['description'] = '',
       ['fields'] = {
          {name = 'User', value = game:GetService("Players").LocalPlayer.Name},
          {name = "Ping", value = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()},

        }
    }
  }
}
   
   if syn then
       local response = syn.request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   elseif request then
       local response = request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   elseif http_request then
       local response = http_request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   end
end)
