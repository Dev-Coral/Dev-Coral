local function onPlayerJoin(player)

    local leaderstats = Instance.new("Folder")

    leaderstats.Name = "leaderstats"

    leaderstats.Parent = player

 


    local gold = Instance.new("IntValue")

    gold.Name = "Gold"

    gold.Value = 50

    gold.Parent = leaderstats

end

 


game.Players.PlayerAdded:Connect(onPlayerJoin)