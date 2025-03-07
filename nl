-- Load UI Library
local Library = {}

-- Function to make UI draggable
local function MakeDraggable(frame)
    local UIS = game:GetService("UserInputService")
    local dragToggle = nil
    local dragSpeed = 0.1
    local dragStart = nil
    local startPos = nil

    local function updateInput(input)
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragToggle = true
            dragStart = input.Position
            startPos = frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragToggle = false
                end
            end)
        end
    end)

    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            if dragToggle then
                updateInput(input)
            end
        end
    end)
end

-- Function to create the UI window
function Library:Window(options)
    options.text = options.text or "NEVERLOSE"

    -- Create ScreenGui
    local SG = Instance.new("ScreenGui")
    SG.Parent = game.CoreGui
    SG.Name = "Neverlose"

    -- Main UI Frame
    local Body = Instance.new("Frame")
    Body.Name = "Body"
    Body.Parent = SG
    Body.AnchorPoint = Vector2.new(0.5, 0.5)
    Body.BackgroundColor3 = Color3.fromRGB(9, 8, 13)
    Body.Position = UDim2.new(0.5, 0, 0.5, 0)
    Body.Size = UDim2.new(0, 658, 0, 516)

    MakeDraggable(Body) -- Enable dragging

    -- Title Bar
    local TitleBar = Instance.new("TextLabel")
    TitleBar.Parent = Body
    TitleBar.Size = UDim2.new(1, 0, 0, 30)
    TitleBar.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
    TitleBar.Text = options.text
    TitleBar.Font = Enum.Font.GothamBold
    TitleBar.TextSize = 16
    TitleBar.TextColor3 = Color3.fromRGB(255, 255, 255)

    -- Sidebar for navigation
    local Sidebar = Instance.new("Frame")
    Sidebar.Parent = Body
    Sidebar.Size = UDim2.new(0, 150, 1, -30)
    Sidebar.Position = UDim2.new(0, 0, 0, 30)
    Sidebar.BackgroundColor3 = Color3.fromRGB(26, 36, 48)

    -- Tab Container
    local TabContainer = Instance.new("Frame")
    TabContainer.Parent = Sidebar
    TabContainer.Size = UDim2.new(1, 0, 1, -100)
    TabContainer.Position = UDim2.new(0, 0, 0, 10)
    TabContainer.BackgroundTransparency = 1.0

    -- Function to create a tab button
    function Library:CreateTab(name, callback)
        local TabButton = Instance.new("TextButton")
        TabButton.Parent = TabContainer
        TabButton.Size = UDim2.new(1, 0, 0, 40)
        TabButton.BackgroundColor3 = Color3.fromRGB(36, 46, 58)
        TabButton.Text = name
        TabButton.Font = Enum.Font.Gotham
        TabButton.TextSize = 14
        TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)

        TabButton.MouseButton1Click:Connect(function()
            callback()
        end)
    end

    -- Main Content Area
    local Content = Instance.new("Frame")
    Content.Parent = Body
    Content.Size = UDim2.new(1, -150, 1, -30)
    Content.Position = UDim2.new(0, 150, 0, 30)
    Content.BackgroundColor3 = Color3.fromRGB(20, 20, 30)

    -- Avatar Image (Bottom Left)
    local AvatarImage = Instance.new("ImageLabel")
    AvatarImage.Name = "AvatarImage"
    AvatarImage.Parent = Sidebar
    AvatarImage.BackgroundTransparency = 1.0
    AvatarImage.Position = UDim2.new(0.1, 0, 0.85, 0) -- Bottom-left corner
    AvatarImage.Size = UDim2.new(0, 50, 0, 50)
    AvatarImage.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. game.Players.LocalPlayer.UserId .. "&width=150&height=150&format=png"

    -- Expiration Date Label (Now Correctly Positioned)
    local ExpirationDateLabel = Instance.new("TextLabel")
    ExpirationDateLabel.Name = "ExpirationDateLabel"
    ExpirationDateLabel.Parent = Sidebar
    ExpirationDateLabel.BackgroundTransparency = 1.0
    ExpirationDateLabel.Position = UDim2.new(0.1, 0, 0.95, 0) -- Below the avatar
    ExpirationDateLabel.Size = UDim2.new(0, 130, 0, 20)
    ExpirationDateLabel.Font = Enum.Font.Gotham
    ExpirationDateLabel.Text = "Expires: 01.01.2026"
    ExpirationDateLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    ExpirationDateLabel.TextSize = 12
    ExpirationDateLabel.TextXAlignment = Enum.TextXAlignment.Left

    return {
        Main = Body,
        Sidebar = Sidebar,
        Content = Content
    }
end

-- Example Usage
local UI = Library:Window({text = "My UI"})

-- Example Tabs
Library:CreateTab("Home", function()
    print("Home Tab Clicked")
end)

Library:CreateTab("Settings", function()
    print("Settings Tab Clicked")
end)
