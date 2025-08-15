local function showNotification(title, message)
    local notification = Instance.new("ScreenGui")
    notification.Name = "Notification"
    notification.Parent = game:GetService("CoreGui")

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 300, 0, 100)
    frame.Position = UDim2.new(0.5, -150, 0.5, -50)
    frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    frame.BorderSizePixel = 2
    frame.Parent = notification

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(1, 0, 0.5, 0)
    titleLabel.Position = UDim2.new(0, 0, 0, 0)
    titleLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.Text = title
    titleLabel.TextSize = 24
    titleLabel.Parent = frame

    local messageLabel = Instance.new("TextLabel")
    messageLabel.Size = UDim2.new(1, 0, 0.5, 0)
    messageLabel.Position = UDim2.new(0, 0, 0.5, 0)
    messageLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    messageLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    messageLabel.Text = message
    messageLabel.TextSize = 18
    messageLabel.Parent = frame

    
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://142376088" 
    sound.Volume = 1
    sound.Parent = frame
    sound:Play()
    wait(5)
    notification:Destroy()
end


local function checkForSecretMythicsAndBrainrotGods(brainrot)
    local secretMythics = {"CocofantoElefanto"}
    
 if table.find(secretMythics, brainrot.Name) then
        showNotification("Secret Mythic Alert", "A secret mythic has spawned: " .. brainrot.Name)
    elseif table.find(brainrotGods, brainrot.Name) then
        showNotification("Brainrot God Alert", "A Brainrot god has spawned: " .. brainrot.Name)
    end
end


local function simulateBrainrotSpawn()
    while true do
        local brainrot = {
            Name = "RandomBrainrot", 
            Value = math.random(1, 2000) 
        }
        checkForSecretMythicsAndBrainrotGods(brainrot)
        wait(5) 
    end
end

simulateBrainrotSpawn()
