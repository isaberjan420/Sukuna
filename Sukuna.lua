repeat task.wait() until game:IsLoaded()
wait(1)

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local WCS_c = false
local DP_c = false
getgenv().wl1 = "a"
getgenv().wl2 = "b"
getgenv().wl3 = "c"
local T = {
    TextColor = Color3.fromRGB(192, 192, 192),

    Background = Color3.fromRGB(18, 18, 18),
    Topbar = Color3.fromRGB(32, 32, 32),
    Shadow = Color3.fromRGB(0, 0, 0),

    NotificationBackground = Color3.fromRGB(20, 20, 20),
    NotificationActionsBackground = Color3.fromRGB(128, 128, 128),

    TabBackground = Color3.fromRGB(80, 80, 80),
    TabStroke = Color3.fromRGB(85, 85, 85),
    TabBackgroundSelected = Color3.fromRGB(210, 210, 210),
    TabTextColor = Color3.fromRGB(240, 240, 240),
    SelectedTabTextColor = Color3.fromRGB(50, 50, 50),

    ElementBackground = Color3.fromRGB(35, 35, 35),
    ElementBackgroundHover = Color3.fromRGB(40, 40, 40),
    SecondaryElementBackground = Color3.fromRGB(25, 25, 25),
    ElementStroke = Color3.fromRGB(50, 50, 50),
    SecondaryElementStroke = Color3.fromRGB(40, 40, 40),
            
    SliderBackground = Color3.fromRGB(16, 16, 16),
    SliderProgress = Color3.fromRGB(16, 192, 16),
    SliderStroke = Color3.fromRGB(0, 0, 0),

    ToggleBackground = Color3.fromRGB(30, 30, 30),
    ToggleEnabled = Color3.fromRGB(0, 146, 214),
    ToggleDisabled = Color3.fromRGB(100, 100, 100),
    ToggleEnabledStroke = Color3.fromRGB(0, 170, 255),
    ToggleDisabledStroke = Color3.fromRGB(125, 125, 125),
    ToggleEnabledOuterStroke = Color3.fromRGB(100, 100, 100),
    ToggleDisabledOuterStroke = Color3.fromRGB(65, 65, 65),

    DropdownSelected = Color3.fromRGB(40, 40, 40),
    DropdownUnselected = Color3.fromRGB(30, 30, 30),

    InputBackground = Color3.fromRGB(30, 30, 30),
    InputStroke = Color3.fromRGB(65, 65, 65),
    PlaceholderColor = Color3.fromRGB(178, 178, 178)
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/isaberjan420/ovb-bb-/refs/heads/main/Whitelist.lua"))()

local Layer1 = Instance.new("Part", workspace)
local Layer2 = Instance.new("Part", workspace)
Layer1.Anchored = true
Layer2.Anchored = true
Layer1.Position = Vector3.new(0, -20, 0)
Layer1.Size = Vector3.new(2048, 4, 2048)
Layer1.Material = Enum.Material.ForceField
Layer2.Position = Vector3.new(0, -30, 0)
Layer2.Size = Vector3.new(2048, 4, 2048)
Layer2.Material = Enum.Material.ForceField
Layer2.Color = Color3.new(0, 1, 0)
Layer2.Parent = ReplicatedStorage
Layer1.Parent = ReplicatedStorage

Layer2.Touched:Connect(function(a)
    if a.Parent.Name == Players.LocalPlayer.Name then
        Players.LocalPlayer.Character:MoveTo(Vector3.new(math.random(-90, 90), 50, math.random(-90, 90)))
    end 
end)

local function Back_Position(Part, Studs)
    local Position = Part.Position
    local CFrame = Part.CFrame
    local Vector = -CFrame.LookVector
  
    local Output = Position + Vector * Studs
    return Output
end

local function ragdolled(character)
    local r = false
    for i,v in pairs(character:GetChildren()) do
        if string.sub(v.Name, 1, 4) == "Fake" then
            r = true
        end
    end
    return r
end

local function reversed(character)
    local a = false
    for i,v in pairs(character:GetChildren()) do
        if v.Name == "Reversed" then
            a = true
        end
    end
    return a
end

local function IsSteve(character)
    local a = false
    for i,v in pairs(character:GetChildren()) do
        if v.Name == "stevebody" then
            a = true
        end
    end
    return a
end

local function loopgt()
    while wait() do
        if looptp == true then
            for _,v in pairs(Players:GetPlayers()) do
                if v.DisplayName == expt then
                    local a = (Back_Position(v.Character.PrimaryPart, -(offset)))
                    wait()
                    Players.LocalPlayer.Character:MoveTo(a)
                end
            end
        end
    end
end

local function MXD()
    while wait() do
        if Mixedd == true then
            for _,v in pairs(Players:GetPlayers()) do
                if v.DisplayName == expt then
                    local a = (v.Character.PrimaryPart.Position + Vector3.new(math.random(-4, 4), math.random(-4, 4), math.random(-4, 4)))
                    wait()
                    Players.LocalPlayer.Character:MoveTo(a)
                end
            end
        end
    end
end

local function ANTIFLING()
    while task.wait(0.5) do
        if AFG == true then
            for _,v in pairs(workspace:GetDescendants()) do
                if v.Name == "Head" then
                    v.CanCollide = false
                elseif v.Name == "Torso" then
                    v.CanCollide = false
                end
            end
        end
    end
end

local function whitelist()
    while task.wait(2) do
        loadstring(game:HttpGet("https://raw.githubusercontent.com/isaberjan420/ovb-bb-/refs/heads/main/Whitelist.lua"))()
        print("refreshed whitelist")
    end
end

local function Get_Closest_Player(Part)
    local closestPlayer = nil
    local minDistance = math.huge
  
    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
      if player.Character and player.Character:FindFirstChild("Humanoid") and player.Character:FindFirstChild("Humanoid").Health > 0 then
        if player.Name == Players.LocalPlayer.Name then
            task.wait()
        elseif IsSteve(player.Character) then
            task.wait()
            print("attempt to hit steve")
        elseif ragdolled(player.Character) then
            task.wait()
            print("attempt to hit ragdolled")
        elseif reversed(player.Character) then
            task.wait()
            print("attempt to hit reversed")
        elseif table.find(Whitelist, player.Name) then
            task.wait()
            print("attempt to hit whitelisted")
        elseif wl1 == player.DisplayName then
            task.wait()
            print("attempt to hit Wwwhitelisted")
        elseif wl2 == player.DisplayName then
            task.wait()
            print("attempt to hit Wwwhitelisted")
        elseif wl3 == player.DisplayName then
            task.wait()
            print("attempt to hit Wwwhitelisted")
        else
            local distance = (Part.Position - player.Character:FindFirstChildWhichIsA("Part").Position).Magnitude -- Calculate distance
            if distance < minDistance then -- Check if closer than current closest
                minDistance = distance -- Update minimum distance
                closestPlayer = player -- Update closest player
            end
        end
      end
    end
  
    return closestPlayer
end

local Window = Rayfield:CreateWindow({
   Name = "Sukuna",
   Icon = "crown", -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Moveset Script",
   LoadingSubtitle = "By Celerity",
   Theme = T, -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Celerity"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "de7SVVyF3e", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Sukuna",
      Subtitle = "Key System",
      Note = "You Can Buy A Custom Key To The Script From Our Server", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"JanetLava862_IBY"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local SA = Window:CreateTab("Moveset", "swords")

local WCS = SA:CreateKeybind({
   Name = "World Cutting Slash",
   CurrentKeybind = "Q",
   HoldToInteract = false,
   Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Keybind)
      if WCS_c == false then
        if Players.LocalPlayer.Glove == "Slicer" then
          WCS_c = true
          game:GetService("ReplicatedStorage").Slicer:FireServer("slash", Players.LocalPlayer.Character.Head.CFrame, Vector3.new(0, 14,0))
          task.wait(1)
          WCS_c = false
        else
          WCS_c = true
          fireclickdetector(workspace.Lobby.Slicer.ClickDetector)
          wait(0.02)
             game:GetService("ReplicatedStorage").Slicer:FireServer("slash", Players.LocalPlayer.Character.Head.CFrame, Vector3.new(0, 14,0))
          task.wait(1)
          WCS_c = false
        end
      end
   end,
})

local DP = SA:CreateKeybind({
   Name = "Divine Presence",
   CurrentKeybind = "E",
   HoldToInteract = false,
   Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Keybind)
      if DP_c == false then
        if Players.LocalPlayer.Glove == "Gravity" then
          DP_c = true
          game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
          task.wait(1)
          DP_c = false
        else
          DP_c = true
          fireclickdetector(workspace.Lobby.Gravity.ClickDetector)
          wait(0.02)
          game:GetService("ReplicatedStorage").GeneralAbility:FireServer()
          task.wait(1)
          DP_c = false
        end
      end
   end,
})
