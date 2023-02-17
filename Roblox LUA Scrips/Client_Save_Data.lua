local DataStoreService = game:GetService("DataStoreService")

local playerData = DataStoreService:GetDataStore("PlayerData")



local function onPlayerJoin(player)  -- Runs when players join

    local leaderstats = Instance.new("Folder")  --Sets up leaderstats folder

    leaderstats.Name = "leaderstats"

    leaderstats.Parent = player

 

    local gold = Instance.new("IntValue") --Sets up value for leaderstats

    gold.Name = "Gold"

    gold.Parent = leaderstats


    local playerUserId = "Player_" .. player.UserId  --Gets player ID

    local data = playerData:GetAsync(playerUserId)  --Checks if player has stored data

    if data then

        -- Data exists for this player

        gold.Value = data

    else

        -- Data store is working, but no current data for this player

        gold.Value = 0

    end

end


local function onPlayerExit(player)  --Runs when players exit

 

    local success, err = pcall(function()

        local playerUserId = "Player_" .. player.UserId

        playerData:SetAsync(playerUserId, player.leaderstats.Gold.Value) --Saves player data

    end)


    if not success then

        warn('Could not save data!')

    end

end


game.Players.PlayerAdded:Connect(onPlayerJoin)

game.Players.PlayerRemoving:Connect(onPlayerExit)