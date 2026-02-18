-- ╔════════════════════════════════════════════╗
-- ║    MLML673 HUB - COMPLETE COMBO SCRIPT    ║
-- ║  Delfi TP + Speed Booster + FPS Devour    ║
-- ║         + AP Spammer + ESP System         ║
-- ╚════════════════════════════════════════════╝

-- Generated: discord.gg/25ms - Modified by MLML673

local genv = getgenv()
local fenv = getfenv()

-- ========== ANTI-DETECTION MARKERS ==========
genv['MLML673_HUB_loaded'] = function() end
genv['25ms_was_here'] = function() end

loadstring('return pcall(function()return 1/"abc"end)')
loadstring('\nreturn pcall(function()return 1/"abc"end)')

-- ========== SERVICES ==========
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TextChatService = game:GetService("TextChatService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local ProximityPromptService = game:GetService('ProximityPromptService')
local CoreGui = game:GetService('CoreGui')

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local Backpack = LocalPlayer:WaitForChild("Backpack")
local UIS = UserInputService

-- ========== CHECKPOINT TELEPORT POINTS (FROM DELFI SCRIPT) ==========
local TELEPORT_POINTS = {
    Vector3.new(-481.75, -3.79, 89.18),
    Vector3.new(-481.82, -3.79, 30.95),
    Vector3.new(-481.75, -3.79, -17.79),
    Vector3.new(-481.8, -3.79, -76.06),
    Vector3.new(-481.72, -3.79, -124.7),
    Vector3.new(-337.45, -3.85, -124.72),
    Vector3.new(-337.37, -3.85, -76.07),
    Vector3.new(-337.46, -3.79, -17.72),
    Vector3.new(-337.41, -3.79, 30.92),
    Vector3.new(-337.32, -3.79, 89.02),
    Vector3.new(-337.27, -3.79, 137.9),
    Vector3.new(-337.45, -3.79, 196.29),
    Vector3.new(-337.37, -3.79, 244.91),
    Vector3.new(-481.72, -3.79, 196.21),
    Vector3.new(-481.76, -3.79, 244.92),
}

-- ========== CLEANUP EXISTING UI ==========
local existingUI = PlayerGui:FindFirstChild("MLML673UI")
if existingUI then existingUI:Destroy() end

task.wait(1)

-- ========== GRAPHICS OPTIMIZATION (FPS DEVOUR) ==========
Lighting.GlobalShadows = false
Lighting.EnvironmentDiffuseScale = 0
Lighting.EnvironmentSpecularScale = 0

for _, postEffect in ipairs(Lighting:GetChildren()) do
    if postEffect:IsA("PostEffect") then
        postEffect.Enabled = false
    end
end

for _, particle in ipairs(workspace:GetDescendants()) do
    if particle:IsA("ParticleEmitter") then
        particle.Enabled = false
    end
end

-- ========== ACCESSORY REMOVAL ==========
local function RemoveAccessories(character)
    if not character then return end
    
    for _, accessory in ipairs(character:GetDescendants()) do
        if accessory:IsA("Accessory") then
            accessory:Destroy()
        end
    end
    
    local descendantConnection
    descendantConnection = character.DescendantAdded:Connect(function(child)
        if child:IsA("Accessory") then
            child:Destroy()
        end
    end)
    
    local heartbeatConnection
    heartbeatConnection = RunService.Heartbeat:Connect(function()
        if not character.Parent then
            heartbeatConnection:Disconnect()
            return
        end
        for _, item in ipairs(character:GetChildren()) do
            if item:IsA("Accessory") then
                item:Destroy()
            end
        end
    end)
end

if LocalPlayer.Character then
    RemoveAccessories(LocalPlayer.Character)
end
LocalPlayer.CharacterAdded:Connect(RemoveAccessories)

for _, humanoid in ipairs(workspace:GetDescendants()) do
    if humanoid:IsA("Humanoid") then
        local parent = humanoid.Parent
        if parent then
            for _, accessory in ipairs(parent:GetChildren()) do
                if accessory:IsA("Accessory") then
                    accessory:Destroy()
                end
            end
            
            parent.ChildAdded:Connect(function(child)
                if child:IsA("Accessory") then
                    child:Destroy()
                end
            end)
        end
    end
end

workspace.DescendantAdded:Connect(function(descendant)
    if descendant:IsA("Humanoid") then
        local parent = descendant.Parent
        if parent then
            for _, accessory in ipairs(parent:GetChildren()) do
                if accessory:IsA("Accessory") then
                    accessory:Destroy()
                end
            end
            
            parent.ChildAdded:Connect(function(child)
                if child:IsA("Accessory") then
                    child:Destroy()
                end
            end)
        end
    end
end)

-- ========== MAIN GUI CONTAINER ==========
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "MLML673UI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = PlayerGui

-- ========== DELFI SCRIPT PANEL ==========
local DelfiFrame = Instance.new("Frame")
DelfiFrame.Name = "DelfiPanel"
DelfiFrame.Size = UDim2.new(0, 260, 0, 220)
DelfiFrame.Position = UDim2.new(0.5, -130, 0.1, 10)
DelfiFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 14)
DelfiFrame.BorderSizePixel = 0
DelfiFrame.Active = true
DelfiFrame.Draggable = true
DelfiFrame.Parent = ScreenGui

local DelfiGradient = Instance.new("UIGradient", DelfiFrame)
DelfiGradient.Rotation = 90
DelfiGradient.Color = ColorSequence.new({
    [1] = ColorSequenceKeypoint.new(0, Color3.fromRGB(10, 10, 14)),
    [2] = ColorSequenceKeypoint.new(1, Color3.fromRGB(18, 18, 24)),
})

local DelfiCorner = Instance.new("UICorner", DelfiFrame)
DelfiCorner.CornerRadius = UDim.new(0, 18)

local DelfiStroke = Instance.new("UIStroke", DelfiFrame)
DelfiStroke.Color = Color3.fromRGB(0, 190, 255)
DelfiStroke.Transparency = 0.7
DelfiStroke.Thickness = 2

-- Header
local DelfiHeader = Instance.new("Frame", DelfiFrame)
DelfiHeader.Size = UDim2.new(1, 0, 0, 50)
DelfiHeader.BackgroundTransparency = 1

local DelfiIndicator = Instance.new("Frame", DelfiHeader)
DelfiIndicator.Size = UDim2.new(0, 4, 0.6, 0)
DelfiIndicator.Position = UDim2.new(0, 16, 0.2, 0)
DelfiIndicator.BackgroundColor3 = Color3.fromRGB(0, 190, 255)
DelfiIndicator.BorderSizePixel = 0
Instance.new("UICorner", DelfiIndicator).CornerRadius = UDim.new(0, 2)

local DelfiTitle = Instance.new("TextLabel", DelfiHeader)
DelfiTitle.Size = UDim2.new(1, -40, 1, 0)
DelfiTitle.Position = UDim2.new(0, 28, 0, 0)
DelfiTitle.BackgroundTransparency = 1
DelfiTitle.Text = 'MLML673 HUB INSTANT-TP'
DelfiTitle.Font = Enum.Font.GothamBlack
DelfiTitle.TextSize = 18
DelfiTitle.TextColor3 = Color3.fromRGB(245, 245, 250)
DelfiTitle.TextXAlignment = Enum.TextXAlignment.Left
DelfiTitle.TextStrokeTransparency = 0.8

local DelfiSubtitle = Instance.new("TextLabel", DelfiHeader)
DelfiSubtitle.Size = UDim2.new(1, -40, 0, 16)
DelfiSubtitle.Position = UDim2.new(0, 28, 0, 30)
DelfiSubtitle.BackgroundTransparency = 1
DelfiSubtitle.Text = 'discord.gg/25ms - MLML673'
DelfiSubtitle.Font = Enum.Font.GothamMedium
DelfiSubtitle.TextSize = 11
DelfiSubtitle.TextColor3 = Color3.fromRGB(150, 150, 170)
DelfiSubtitle.TextXAlignment = Enum.TextXAlignment.Left

-- Divider
local DelfiDivider = Instance.new("Frame", DelfiFrame)
DelfiDivider.Size = UDim2.new(1, -32, 0, 1)
DelfiDivider.Position = UDim2.new(0, 16, 0, 55)
DelfiDivider.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
DelfiDivider.BorderSizePixel = 0

-- Buttons Container
local DelfiContainer = Instance.new("Frame", DelfiFrame)
DelfiContainer.Size = UDim2.new(1, -24, 1, -75)
DelfiContainer.Position = UDim2.new(0, 12, 0, 65)
DelfiContainer.BackgroundTransparency = 1

-- SET CHECKPOINT BUTTON
local SetCheckpointBtn = Instance.new("Frame", DelfiContainer)
SetCheckpointBtn.Size = UDim2.new(1, 0, 0, 42)
SetCheckpointBtn.BackgroundColor3 = Color3.fromRGB(22, 22, 30)
SetCheckpointBtn.BorderSizePixel = 0
SetCheckpointBtn.Active = true
Instance.new("UICorner", SetCheckpointBtn).CornerRadius = UDim.new(0, 12)
Instance.new("UIStroke", SetCheckpointBtn).Color = Color3.fromRGB(40, 40, 55)

local SetCheckpointLabel = Instance.new("TextLabel", SetCheckpointBtn)
SetCheckpointLabel.Size = UDim2.new(1, -24, 1, 0)
SetCheckpointLabel.Position = UDim2.new(0, 20, 0, 0)
SetCheckpointLabel.BackgroundTransparency = 1
SetCheckpointLabel.Text = 'SET CHECKPOINT'
SetCheckpointLabel.Font = Enum.Font.GothamBold
SetCheckpointLabel.TextSize = 14
SetCheckpointLabel.TextColor3 = Color3.fromRGB(235, 235, 245)

local SetCheckpointClick = Instance.new("TextButton", SetCheckpointBtn)
SetCheckpointClick.Size = UDim2.new(1, 0, 1, 0)
SetCheckpointClick.BackgroundTransparency = 1
SetCheckpointClick.Text = ''
SetCheckpointClick.AutoButtonColor = false
SetCheckpointClick.Active = true

-- TELEPORT BUTTON
local TeleportBtn = Instance.new("Frame", DelfiContainer)
TeleportBtn.Size = UDim2.new(1, 0, 0, 42)
TeleportBtn.Position = UDim2.new(0, 0, 0, 48)
TeleportBtn.BackgroundColor3 = Color3.fromRGB(22, 22, 30)
TeleportBtn.BorderSizePixel = 0
Instance.new("UICorner", TeleportBtn).CornerRadius = UDim.new(0, 12)
Instance.new("UIStroke", TeleportBtn).Color = Color3.fromRGB(40, 40, 55)

local TeleportLabel = Instance.new("TextLabel", TeleportBtn)
TeleportLabel.Size = UDim2.new(1, -24, 1, 0)
TeleportLabel.Position = UDim2.new(0, 20, 0, 0)
TeleportLabel.BackgroundTransparency = 1
TeleportLabel.Text = 'TELEPORT: DISABLED'
TeleportLabel.Font = Enum.Font.GothamBold
TeleportLabel.TextSize = 14
TeleportLabel.TextColor3 = Color3.fromRGB(235, 235, 245)

local TeleportClick = Instance.new("TextButton", TeleportBtn)
TeleportClick.Size = UDim2.new(1, 0, 1, 0)
TeleportClick.BackgroundTransparency = 1
TeleportClick.Text = ''
TeleportClick.AutoButtonColor = false

-- DESYNC BUTTON
local DesyncBtn = Instance.new("Frame", DelfiContainer)
DesyncBtn.Size = UDim2.new(1, 0, 0, 42)
DesyncBtn.Position = UDim2.new(0, 0, 0, 96)
DesyncBtn.BackgroundColor3 = Color3.fromRGB(22, 22, 30)
DesyncBtn.BorderSizePixel = 0
Instance.new("UICorner", DesyncBtn).CornerRadius = UDim.new(0, 12)
Instance.new("UIStroke", DesyncBtn).Color = Color3.fromRGB(40, 40, 55)

local DesyncLabel = Instance.new("TextLabel", DesyncBtn)
DesyncLabel.Size = UDim2.new(1, -24, 1, 0)
DesyncLabel.Position = UDim2.new(0, 20, 0, 0)
DesyncLabel.BackgroundTransparency = 1
DesyncLabel.Text = 'DESYNC'
DesyncLabel.Font = Enum.Font.GothamBold
DesyncLabel.TextSize = 14
DesyncLabel.TextColor3 = Color3.fromRGB(235, 235, 245)

local DesyncClick = Instance.new("TextButton", DesyncBtn)
DesyncClick.Size = UDim2.new(1, 0, 1, 0)
DesyncClick.BackgroundTransparency = 1
DesyncClick.Text = ''
DesyncClick.AutoButtonColor = false

-- ========== CHECKPOINT PREVIEW & TELEPORT SYSTEM ==========
local currentCheckpoint = nil
local checkpointPreview = nil

SetCheckpointClick.MouseButton1Click:Connect(function()
    local Character = LocalPlayer.Character
    if not Character then return end
    
    currentCheckpoint = Character:FindFirstChild('HumanoidRootPart').Position
    
    if checkpointPreview then
        checkpointPreview:Destroy()
    end
    
    local previewModel = Instance.new('Model', workspace)
    previewModel.Name = 'MLMLCheckpointPreview'
    
    local previewPart = Instance.new('Part', previewModel)
    previewPart.Size = Vector3.new(2.2, 2.2, 2.2)
    previewPart.Anchored = true
    previewPart.CanCollide = false
    previewPart.Material = Enum.Material.Neon
    previewPart.Color = Color3.fromRGB(0, 170, 255)
    previewPart.Transparency = 0.2
    previewPart.CFrame = CFrame.new(currentCheckpoint)
    
    local billboardGui = Instance.new('BillboardGui', previewPart)
    billboardGui.Size = UDim2.new(0, 120, 0, 28)
    billboardGui.StudsOffset = Vector3.new(0, 2.2, 0)
    billboardGui.AlwaysOnTop = true
    
    local nameLabel = Instance.new('TextLabel', billboardGui)
    nameLabel.Size = UDim2.fromScale(1, 1)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = 'CHECKPOINT'
    nameLabel.Font = Enum.Font.GothamBold
    nameLabel.TextSize = 14
    nameLabel.TextColor3 = Color3.fromRGB(210, 240, 255)
    
    local attachment0 = Instance.new('Attachment', Character:WaitForChild('HumanoidRootPart'))
    local beam = Instance.new('Beam', attachment0)
    beam.Attachment0 = attachment0
    beam.Attachment1 = Instance.new('Attachment', previewPart)
    beam.Width0 = 0.18
    beam.Width1 = 0.28
    beam.LightEmission = 1
    beam.Color = ColorSequence.new(Color3.fromRGB(0, 170, 255))
    
    checkpointPreview = previewModel
    TeleportLabel.Text = 'TELEPORT: ENABLED'
end)

TeleportClick.MouseButton1Click:Connect(function()
    if not currentCheckpoint then return end
    
    local Character = LocalPlayer.Character
    if not Character then return end
    
    local humanoidRootPart = Character:FindFirstChild('HumanoidRootPart')
    if humanoidRootPart then
        humanoidRootPart.CFrame = CFrame.new(currentCheckpoint)
    end
end)

DesyncClick.MouseButton1Click:Connect(function()
    local Character = LocalPlayer.Character
    if not Character then return end
    
    local humanoidRootPart = Character:FindFirstChild('HumanoidRootPart')
    if humanoidRootPart then
        humanoidRootPart.CanCollide = not humanoidRootPart.CanCollide
        DesyncLabel.Text = humanoidRootPart.CanCollide and 'DESYNC: OFF' or 'DESYNC: ON'
    end
end)

-- ========== SPEED BOOSTER FRAME ==========
local SpeedFrame = Instance.new("Frame", ScreenGui)
SpeedFrame.Name = "SpeedFrame"
SpeedFrame.Size = UDim2.fromOffset(80, 80)
SpeedFrame.Position = UDim2.fromScale(0.92, 0.45)
SpeedFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
SpeedFrame.BorderSizePixel = 0
SpeedFrame.Draggable = true
Instance.new("UICorner", SpeedFrame).CornerRadius = UDim.new(0, 12)

local SpeedButton = Instance.new("TextButton", SpeedFrame)
SpeedButton.Name = "SpeedButton"
SpeedButton.Size = UDim2.fromOffset(70, 70)
SpeedButton.Position = UDim2.fromOffset(5, 5)
SpeedButton.Text = "SPD\n28.8"
SpeedButton.Font = Enum.Font.GothamBold
SpeedButton.TextSize = 14
SpeedButton.TextColor3 = Color3.new(1, 1, 1)
SpeedButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
SpeedButton.AutoButtonColor = false
SpeedButton.BorderSizePixel = 0
Instance.new("UICorner", SpeedButton).CornerRadius = UDim.new(0, 10)

getgenv().MLML673_SPEED = getgenv().MLML673_SPEED or 28.8
local SPEED = getgenv().MLML673_SPEED
local speedEnabled = false
local speedConn

local function getChar()
    local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    return char, char:WaitForChild("HumanoidRootPart"), char:WaitForChild("Humanoid")
end

local function startSpeed()
    if speedConn then return end
    speedConn = RunService.Heartbeat:Connect(function()
        local _, hrp, hum = getChar()
        local dir = hum.MoveDirection
        if dir.Magnitude > 0 then
            hrp.AssemblyLinearVelocity = Vector3.new(dir.X * SPEED, hrp.AssemblyLinearVelocity.Y, dir.Z * SPEED)
        end
    end)
end

local function stopSpeed()
    if speedConn then speedConn:Disconnect() speedConn = nil end
end

SpeedButton.Activated:Connect(function()
    speedEnabled = not speedEnabled
    if speedEnabled then
        startSpeed()
        SpeedButton.BackgroundColor3 = Color3.fromRGB(80, 160, 255)
    else
        stopSpeed()
        SpeedButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    end
end)

-- ========== FPS DEVOUR FRAME ==========
local FPSFrame = Instance.new("Frame")
FPSFrame.Name = "FPSDevourFrame"
FPSFrame.Size = UDim2.new(0, 340, 0, 120)
FPSFrame.Position = UDim2.new(0.5, -170, 0.5, -60)
FPSFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
FPSFrame.BorderSizePixel = 0
FPSFrame.Active = true
FPSFrame.Draggable = true
FPSFrame.Parent = ScreenGui

local FPSCorner = Instance.new("UICorner", FPSFrame)
FPSCorner.CornerRadius = UDim.new(0, 18)

local FPSTitle = Instance.new("TextLabel")
FPSTitle.Parent = FPSFrame
FPSTitle.Size = UDim2.new(1, -20, 0, 40)
FPSTitle.Position = UDim2.new(0, 10, 0, 10)
FPSTitle.BackgroundTransparency = 1
FPSTitle.Text = "MLML673 FPS Devour"
FPSTitle.Font = Enum.Font.GothamBlack
FPSTitle.TextSize = 20
FPSTitle.TextXAlignment = Enum.TextXAlignment.Left
FPSTitle.TextColor3 = Color3.new(1, 1, 1)

local FPSButton = Instance.new("TextButton")
FPSButton.Parent = FPSFrame
FPSButton.Size = UDim2.new(1, -40, 0, 40)
FPSButton.Position = UDim2.new(0, 20, 0, 70)
FPSButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
FPSButton.Text = "FPS Devour (need auras)"
FPSButton.Font = Enum.Font.GothamBold
FPSButton.TextSize = 15
FPSButton.TextColor3 = Color3.new(1, 1, 1)
FPSButton.BorderSizePixel = 0
FPSButton.AutoButtonColor = true

local FPSButtonCorner = Instance.new("UICorner", FPSButton)
FPSButtonCorner.CornerRadius = UDim.new(0, 14)

FPSButton.MouseButton1Click:Connect(function()
    FPSButton.Text = "WORKING..."
    FPSButton.AutoButtonColor = false

    local Character = LocalPlayer.Character
    if not Character then return end
    
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    if not Humanoid then return end
    
    local QuantumCloner = Backpack:FindFirstChild("Quantum Cloner")

    if QuantumCloner then
        Humanoid:EquipTool(QuantumCloner)
        task.wait()

        for _, Tool in ipairs(Backpack:GetChildren()) do
            if Tool:IsA("Tool") then
                Tool.Parent = Character
            end
        end

        task.wait()
        QuantumCloner:Activate()
        task.delay(0.5, function()
            FPSButton.Text = "FPS Devour (need auras)"
            FPSButton.AutoButtonColor = true
        end)
    end
end)

-- ========== AP SPAMMER FRAME ==========
local SpammerFrame = Instance.new("Frame")
SpammerFrame.Name = "APSpammerFrame"
SpammerFrame.Size = UDim2.fromOffset(180, 200)
SpammerFrame.Position = UDim2.fromScale(0.5, 0.25)
SpammerFrame.AnchorPoint = Vector2.new(0.5, 0.5)
SpammerFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SpammerFrame.BorderSizePixel = 0
SpammerFrame.Parent = ScreenGui

local SpammerCorner = Instance.new("UICorner")
SpammerCorner.CornerRadius = UDim.new(0, 12)
SpammerCorner.Parent = SpammerFrame

local TitleBar = Instance.new("Frame")
TitleBar.Size = UDim2.new(1, 0, 0, 28)
TitleBar.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
TitleBar.BorderSizePixel = 0
TitleBar.Parent = SpammerFrame

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 12)
TitleCorner.Parent = TitleBar

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Size = UDim2.new(1, -28, 1, 0)
TitleLabel.Position = UDim2.new(0, 6, 0, 0)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Text = "MLML673 HUB AP Spammer"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextScaled = true
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.Parent = TitleBar

local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Size = UDim2.new(0, 22, 0, 22)
MinimizeButton.Position = UDim2.new(1, -24, 0, 3)
MinimizeButton.Text = "-"
MinimizeButton.TextScaled = true
MinimizeButton.Font = Enum.Font.GothamBold
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
MinimizeButton.Parent = TitleBar

local MinCorner = Instance.new("UICorner")
MinCorner.CornerRadius = UDim.new(0, 6)
MinCorner.Parent = MinimizeButton

local Scroll = Instance.new("ScrollingFrame")
Scroll.Position = UDim2.new(0, 0, 0, 32)
Scroll.Size = UDim2.new(1, 0, 1, -34)
Scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
Scroll.ScrollBarImageColor3 = Color3.fromRGB(40, 40, 40)
Scroll.BackgroundTransparency = 1
Scroll.Parent = SpammerFrame

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0, 4)
UIListLayout.Parent = Scroll

local minimized = false
local normalSize = SpammerFrame.Size

MinimizeButton.MouseButton1Click:Connect(function()
    minimized = not minimized
    
    if minimized then
        Scroll.Visible = false
        SpammerFrame.Size = UDim2.fromOffset(180, 28)
        MinimizeButton.Text = "+"
    else
        Scroll.Visible = true
        SpammerFrame.Size = normalSize
        MinimizeButton.Text = "-"
    end
end)

local function sendCommands(targetName)
    local channel = TextChatService.TextChannels:FindFirstChild("RBXGeneral")
    if not channel then return end
    
    local commands = {
        ";balloon " .. targetName,
        ";rocket " .. targetName,
        ";morph " .. targetName,
        ";jumpscare " .. targetName,
        ";jail " .. targetName
    }

    for _, cmd in ipairs(commands) do
        channel:SendAsync(cmd)
        task.wait(0.12)
    end
end

local function createPlayerButton(player)
    if player == LocalPlayer then return end
    
    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(1, -6, 0, 24)
    Button.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.TextScaled = true
    Button.Font = Enum.Font.Gotham
    Button.Text = player.Name
    Button.Parent = Scroll
    
    local Corner = Instance.new("UICorner")
    Corner.CornerRadius = UDim.new(0, 6)
    Corner.Parent = Button
    
    Button.MouseButton1Click:Connect(function()
        sendCommands(player.Name)
    end)
end

local function refreshList()
    for _, child in pairs(Scroll:GetChildren()) do
        if child:IsA("TextButton") then
            child:Destroy()
        end
    end
    
    for _, player in pairs(Players:GetPlayers()) do
        createPlayerButton(player)
    end
    
    task.wait()
    Scroll.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 4)
end

Players.PlayerAdded:Connect(refreshList)
Players.PlayerRemoving:Connect(refreshList)

refreshList()

-- ========== ESP SYSTEM ==========
local ESPFrame = Instance.new("Frame")
ESPFrame.Name = "ESPFrame"
ESPFrame.Size = UDim2.new(0, 180, 0, 70)
ESPFrame.Position = UDim2.new(0, 20, 0, 360)
ESPFrame.BackgroundColor3 = Color3.new(0, 0, 0)
ESPFrame.BackgroundTransparency = 0.2
ESPFrame.BorderSizePixel = 0
ESPFrame.Parent = ScreenGui

local ESPCorner = Instance.new("UICorner", ESPFrame)
ESPCorner.CornerRadius = UDim.new(0, 8)

local ESPStroke = Instance.new("UIStroke", ESPFrame)
ESPStroke.Color = Color3.new(0, 1, 1)
ESPStroke.Thickness = 2
ESPStroke.Transparency = 0.3

local ESPTitle = Instance.new("TextLabel")
ESPTitle.Size = UDim2.new(1, -20, 0, 20)
ESPTitle.Position = UDim2.new(0, 10, 0, 5)
ESPTitle.BackgroundTransparency = 1
ESPTitle.Text = "ESP MLML673"
ESPTitle.TextColor3 = Color3.new(0, 1, 1)
ESPTitle.Font = Enum.Font.GothamBold
ESPTitle.TextSize = 14
ESPTitle.TextXAlignment = Enum.TextXAlignment.Left
ESPTitle.Parent = ESPFrame

local ESPToggleButton = Instance.new("TextButton")
ESPToggleButton.Name = "ESPToggle"
ESPToggleButton.Size = UDim2.new(0, 40, 0, 16)
ESPToggleButton.Position = UDim2.new(1, -50, 0, 8)
ESPToggleButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
ESPToggleButton.Text = ""
ESPToggleButton.AutoButtonColor = false
ESPToggleButton.Parent = ESPFrame

local ESPToggleCorner = Instance.new("UICorner", ESPToggleButton)
ESPToggleCorner.CornerRadius = UDim.new(0, 8)

local ESPToggleBackground = Instance.new("Frame", ESPToggleButton)
ESPToggleBackground.Size = UDim2.new(1, 0, 1, 0)
ESPToggleBackground.BackgroundColor3 = Color3.new(0.8, 0, 0)
ESPToggleBackground.BackgroundTransparency = 0.3
ESPToggleBackground.ZIndex = 0
Instance.new("UICorner", ESPToggleBackground).CornerRadius = UDim.new(0, 8)

local ESPKnob = Instance.new("Frame", ESPToggleButton)
ESPKnob.Name = "ESPToggleKnob"
ESPKnob.Size = UDim2.new(0, 12, 0, 12)
ESPKnob.Position = UDim2.new(0, 2, 0.5, 0)
ESPKnob.AnchorPoint = Vector2.new(0, 0.5)
ESPKnob.BackgroundColor3 = Color3.new(1, 1, 1)
ESPKnob.ZIndex = 2

local ESPKnobCorner = Instance.new("UICorner", ESPKnob)
ESPKnobCorner.CornerRadius = UDim.new(0, 6)
ESPKnob.Parent = ESPToggleButton

local ESPStatusLabel = Instance.new("TextLabel")
ESPStatusLabel.Size = UDim2.new(0, 40, 0, 12)
ESPStatusLabel.Position = UDim2.new(1, -50, 0, 26)
ESPStatusLabel.BackgroundTransparency = 1
ESPStatusLabel.Text = "OFF"
ESPStatusLabel.TextColor3 = Color3.new(1, 0, 0)
ESPStatusLabel.Font = Enum.Font.GothamBold
ESPStatusLabel.TextSize = 10
ESPStatusLabel.TextXAlignment = Enum.TextXAlignment.Center
ESPStatusLabel.Parent = ESPFrame

local ESPEnabled = false
local ESPBoxes = {}

local function createESPBox(player)
    if player == LocalPlayer then return end
    if ESPBoxes[player] then return end
    
    local character = player.Character
    if not character then return end
    
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return end
    
    local highlight = Instance.new("Highlight")
    highlight.Parent = character
    highlight.FillColor = Color3.fromRGB(0, 255, 255)
    highlight.OutlineColor = Color3.fromRGB(0, 255, 255)
    highlight.FillTransparency = 0.3
    highlight.OutlineTransparency = 0
    
    local surfaceGui = Instance.new("SurfaceGui")
    surfaceGui.Parent = humanoidRootPart
    surfaceGui.Face = Enum.NormalId.Top
    surfaceGui.CanvasSize = Vector2.new(200, 50)
    
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(1, 0, 1, 0)
    nameLabel.BackgroundColor3 = Color3.new(0, 0, 0)
    nameLabel.BackgroundTransparency = 0.5
    nameLabel.Text = player.Name
    nameLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
    nameLabel.TextScaled = true
    nameLabel.Font = Enum.Font.GothamBold
    nameLabel.Parent = surfaceGui
    
    ESPBoxes[player] = {
        highlight = highlight,
        surfaceGui = surfaceGui,
        nameLabel = nameLabel
    }
end

local function removeESPBox(player)
    if ESPBoxes[player] then
        if ESPBoxes[player].highlight then
            ESPBoxes[player].highlight:Destroy()
        end
        if ESPBoxes[player].surfaceGui then
            ESPBoxes[player].surfaceGui:Destroy()
        end
        ESPBoxes[player] = nil
    end
end

local TweenInfoSmooth = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local TweenInfoBounce = TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out)

ESPToggleButton.MouseButton1Click:Connect(function()
    ESPEnabled = not ESPEnabled
    
    local targetColor = ESPEnabled and Color3.new(0, 0.8, 0) or Color3.new(0.8, 0, 0)
    local targetPos = ESPEnabled and UDim2.new(1, -14, 0.5, 0) or UDim2.new(0, 2, 0.5, 0)
    local statusText = ESPEnabled and "ON" or "OFF"
    local statusColor = ESPEnabled and Color3.new(0, 1, 0) or Color3.new(1, 0, 0)
    
    TweenService:Create(ESPToggleBackground, TweenInfoSmooth, { BackgroundColor3 = targetColor }):Play()
    TweenService:Create(ESPKnob, TweenInfoBounce, { Position = targetPos }):Play()
    TweenService:Create(ESPStatusLabel, TweenInfoSmooth, { TextColor3 = statusColor }):Play()
    
    ESPStatusLabel.Text = statusText
    
    if ESPEnabled then
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= LocalPlayer then
                createESPBox(player)
            end
        end
    else
        for player, _ in pairs(ESPBoxes) do
            removeESPBox(player)
        end
    end
end)

Players.PlayerAdded:Connect(function(player)
    task.wait(0.5)
    if ESPEnabled then
        player.CharacterAdded:Connect(function()
            task.wait(0.1)
            createESPBox(player)
        end)
        createESPBox(player)
    end
end)

Players.PlayerRemoving:Connect(function(player)
    removeESPBox(player)
end)

-- ========== COMPLETION MESSAGE ==========
print("✅ MLML673 HUB - Combined Script Loaded Successfully!")
print("📦 Features Loaded:")
print("   • Instant Teleport (Delfi Script)")
print("   • Speed Booster")
print("   • FPS Devour")
print("   • AP Spammer")
print("   • Player ESP System")
print("🎮 Enjoy using MLML673 HUB!")
