local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "SLY HUB",
   Icon = 11151804229, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "SLY HUB",
   LoadingSubtitle = "Loading Interface...",
   ShowText = "SLY Hub", -- for mobile users to unhide Rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "L", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from emitting warnings when the script has a version mismatch with the interface.

   -- ScriptID = "sid_xxxxxxxxxxxx", -- Your Script ID from developer.sirius.menu — enables analytics, managed keys, and script hosting

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "SLY"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include Discord.gg/. E.g. Discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the Discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique, as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that the system will accept, can be RAW file links (pastebin, github, etc.) or simple strings ("hello", "key22")
   }
})

local Tab = Window:CreateTab("Farm", 448336245) -- Title, Image

local running = false
local Toggle = Tab:CreateToggle({
   Name = "Farm All City Orbs & Gems [Without Teleporting]",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file; make sure every element has a different flag if you're using configuration saving to ensure no overlaps

Callback = function(Value)
    getgenv().FarmEnabled = Value

    if not Value then
        running = false
        return
    end

    if Value and not running then
        running = true

        task.spawn(function()
            while getgenv().FarmEnabled do
                task.wait()

                local args = {"collectOrb", "Red Orb", "City"}
                game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))

                local args = {"collectOrb", "Blue Orb", "City"}
                game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))

                local args = {"collectOrb", "Yellow Orb", "City"}
                game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))

                local args = {"collectOrb", "Gem", "City"}
                game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
            end

            running = false
        end)
    end
end,
})

local snowRunning = false
local Toggle = Tab:CreateToggle({
   Name = "Farm All Snow City Orbs & Gems [Without Teleporting]",
   CurrentValue = false,
   Flag = "ToggleSnowCity",

   Callback = function(Value)
       getgenv().SnowFarmEnabled = Value

       if not Value then
           snowRunning = false
           return
       end

       if Value and not snowRunning then
           snowRunning = true

           task.spawn(function()
               while getgenv().SnowFarmEnabled do
                   task.wait()

                   local args = {"collectOrb", "Red Orb", "Snow City"}
                   game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))

                   local args = {"collectOrb", "Blue Orb", "Snow City"}
                   game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))

                   local args = {"collectOrb", "Yellow Orb", "Snow City"}
                   game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))

                   local args = {"collectOrb", "Gem", "Snow City"}
                   game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
               end

               snowRunning = false
           end)
       end
   end,
})

local magmaRunning = false

local Toggle = Tab:CreateToggle({
   Name = "Farm All Magma City Orbs & Gems [Without Teleporting]",
   CurrentValue = false,
   Flag = "ToggleMagmaCity",

   Callback = function(Value)
       getgenv().MagmaFarmEnabled = Value

       if not Value then
           magmaRunning = false
           return
       end

       if Value and not magmaRunning then
           magmaRunning = true

           task.spawn(function()
               while getgenv().MagmaFarmEnabled do
                   task.wait()

                   local args = {"collectOrb", "Red Orb", "Magma City"}
                   game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))

                   local args = {"collectOrb", "Blue Orb", "Magma City"}
                   game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))

                   local args = {"collectOrb", "Yellow Orb", "Magma City"}
                   game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))

                   local args = {"collectOrb", "Gem", "Magma City"}
                   game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
               end

               magmaRunning = false
           end)
       end
   end,
})

local outerSpaceRunning = false

local Toggle = Tab:CreateToggle({
   Name = "Farm All Outer Space Orbs & Gems [Without Teleporting]",
   CurrentValue = false,
   Flag = "ToggleOuterSpace",

   Callback = function(Value)
       getgenv().OuterSpaceFarmEnabled = Value

       if not Value then
           outerSpaceRunning = false
           return
       end

       if Value and not outerSpaceRunning then
           outerSpaceRunning = true

           task.spawn(function()
               while getgenv().OuterSpaceFarmEnabled do
                   task.wait()

                   local args = {"collectOrb", "Red Orb", "Outer Space"}
                   game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))

                   local args = {"collectOrb", "Blue Orb", "Outer Space"}
                   game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))

                   local args = {"collectOrb", "Yellow Orb", "Outer Space"}
                   game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))

                   local args = {"collectOrb", "Gem", "Outer Space"}
                   game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
               end

               outerSpaceRunning = false
           end)
       end
   end,
})

local RebirthTab = Window:CreateTab("Rebirth", 448336245)

local rebirthRunning = false

RebirthTab:CreateToggle({
   Name = "Auto Rebirth",
   CurrentValue = false,
   Flag = "AutoRebirth",

   Callback = function(Value)
      getgenv().AutoRebirth = Value

      if not Value then
         rebirthRunning = false
         return
      end

      if Value and not rebirthRunning then
         rebirthRunning = true

         task.spawn(function()
            while getgenv().AutoRebirth do
               task.wait()

               local args = { "rebirthRequest" } 
               game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("rebirthEvent"):FireServer(unpack(args))
            end

            rebirthRunning = false
         end)
      end
   end,
})