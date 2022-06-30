local lib = {}

function i(a, t)
    wait(t)
    a:Destroy()
end

function lib:ShowText(time, text)

    local GameUI = Instance.new("ScreenGui")
    local name = Instance.new("TextLabel")

    GameUI.Name = "GameUI"
    GameUI.Parent = game.CoreGui
    GameUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    name.Name = "name"
    name.Parent = GameUI
    name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    name.BackgroundTransparency = 1.000
    name.Position = UDim2.new(0, 0, 0.879629612, 0)
    name.Size = UDim2.new(0, 1919, 0, 88)
    name.Font = Enum.Font.Ubuntu
    name.Text = text
    name.TextColor3 = Color3.fromRGB(255, 255, 255)
    name.TextScaled = true
    name.TextSize = 100.000
    name.TextWrapped = true
    coroutine.wrap(i)(GameUI, time)

    return

end

return lib
