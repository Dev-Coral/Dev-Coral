local openButton = script.Parent.Parent.open


local frame = script.Parent


frame.Visible = false


local function openMenu()

    frame.Visible = not frame.Visible

end


openButton.MouseButton1Click:Connect(openMenu)