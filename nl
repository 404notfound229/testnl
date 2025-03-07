-- Предполагается, что основной код библиотеки уже загружен
-- и переменная Library доступна для использования

-- Функция для создания окна
function Library:Window(options)
    options.text = options.text or "NEVERLOSE"
    local SG = Instance.new("ScreenGui")
    local Body = Instance.new("Frame")
    Dragify(Body, Body)
    local bodyCorner = Instance.new("UICorner")
    local SideBar = Instance.new("Frame")
    local sidebarCorner = Instance.new("UICorner")
    local sbLine = Instance.new("Frame")
    local TopBar = Instance.new("Frame")
    local tbLine = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local allPages = Instance.new("Frame")
    local tabContainer = Instance.new("Frame")
    
    -- Создание элементов для отображения аватара и даты истечения
    local AvatarImage = Instance.new("ImageLabel")
    local ExpirationDateLabel = Instance.new("TextLabel")

    SG.Parent = game.CoreGui
    SG.Name = "Neverlose"
    Body.Name = "Body"
    Body.Parent = SG
    Body.AnchorPoint = Vector2.new(0.5, 0.5)
    Body.BackgroundColor3 = Color3.fromRGB(9, 8, 13)
    Body.BorderSizePixel = 0
    Body.Position = UDim2.new(0.465730786, 0, 0.5, 0)
    Body.Size = UDim2.new(0, 658, 0, 516)
    bodyCorner.CornerRadius = UDim.new(0, 4)
    bodyCorner.Name = "bodyCorner"
    bodyCorner.Parent = Body
    SideBar.Name = "SideBar"
    SideBar.Parent = Body
    SideBar.BackgroundColor3 = Color3.fromRGB(26, 36, 48)
    SideBar.BorderSizePixel = 0
    SideBar.Size = UDim2.new(0, 187, 0, 516)
    sidebarCorner.CornerRadius = UDim.new(0, 4)
    sidebarCorner.Name = "sidebarCorner"
    sidebarCorner.Parent = SideBar
    sbLine.Name = "sbLine"
    sbLine.Parent = SideBar
    sbLine.BackgroundColor3 = Color3.fromRGB(15, 23, 36)
    sbLine.BorderSizePixel = 0
    sbLine.Position = UDim2.new(0.99490571, 0, 0, 0)
    sbLine.Size = UDim2.new(0, 3, 0, 516)
    TopBar.Name = "TopBar"
    TopBar.Parent = Body
    TopBar.BackgroundColor3 = Color3.fromRGB(9, 8, 13)
    TopBar.BackgroundTransparency = 1.000
    TopBar.BorderColor3 = Color3.fromRGB(14, 21, 32)
    TopBar.BorderSizePixel = 0
    TopBar.Position = UDim2.new(0.25166446, 0, 0, 0)
    TopBar.Size = UDim2.new(0, 562, 0, 49)
    tbLine.Name = "tbLine"
    tbLine.Parent = TopBar
    tbLine.BackgroundColor3 = Color3.fromRGB(15, 23, 36)
    tbLine.BorderSizePixel = 0
    tbLine.Position = UDim2.new(0.0400355868, 0, 1, 0)
    tbLine.Size = UDim2.new(0, 537, 0, 1)
    Title.Name = "Title"
    Title.Parent = TopBar
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1.000
    Title.Position = UDim2.new(0.0400355868, 0, 0, 0)
    Title.Size = UDim2.new(0, 200, 0, 49)
    Title.Font = Enum.Font.GothamBold
    Title.Text = options.text
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 14.000
    allPages.Name = "allPages"
    allPages.Parent = Body
    allPages.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    allPages.BackgroundTransparency = 1.000
    allPages.Position = UDim2.new(0.284195244, 0, 0.113372087, 0)
    allPages.Size = UDim2.new(0, 471, 0, 458)
    tabContainer.Name = "tabContainer"
    tabContainer.Parent = SideBar
    tabContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tabContainer.BackgroundTransparency = 1.000
    tabContainer.Position = UDim2.new(0, 0, 0.146317065, 0)
    tabContainer.Size = UDim2.new(0, 187, 0, 438)

    -- Настройка аватара
    AvatarImage.Name = "AvatarImage"
    AvatarImage.Parent = SideBar
    AvatarImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    AvatarImage.BackgroundTransparency = 1.000
    AvatarImage.Position = UDim2.new(0.1, 0, 0.8, 0)
    AvatarImage.Size = UDim2.new(0, 50, 0, 50)
    AvatarImage.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. tostring(game.Players.LocalPlayer.UserId) .. "&width=420&height=420&format=png"

    -- Настройка отображения даты истечения
    ExpirationDateLabel.Name = "ExpirationDateLabel"
    ExpirationDateLabel.Parent = SideBar
    ExpirationDateLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ExpirationDateLabel.BackgroundTransparency = 1.000
    ExpirationDateLabel.Position = UDim2.new(0.1, 0, 0.9, 0)
    ExpirationDateLabel.Size = UDim2.new(0, 150, 0, 20)
    ExpirationDateLabel.Font = Enum.Font.Gotham
    ExpirationDateLabel.Text = "Дата истечения: 01.01.2026"
    ExpirationDateLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    ExpirationDateLabel.TextSize = 12.000
    ExpirationDateLabel.TextXAlignment = Enum.TextXAlignment.Left

    -- Возвращаем созданное окно
    return Body
end

-- Пример использования

::contentReference[oaicite:0]{index=0}
 
