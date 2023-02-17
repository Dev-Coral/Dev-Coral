local frame = script.Parent

local purple = script.Parent.purple

local green = script.Parent.green


local function greenZone()

    local player = game.Players.LocalPlayer

    player.Character.HumanoidRootPart.CFrame = CFrame.new(x, y, z)

    frame.Visible = false

end


local function purpleZone()

    local player = game.Players.LocalPlayer

    player.Character.HumanoidRootPart.CFrame = CFrame.new(x, y, z)

    frame.Visible = false

end


green.MouseButton1Click:Connect(greenZone)

purple.MouseButton1Click:Connect(purpleZone)


