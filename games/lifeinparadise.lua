if game:GetService("CoreGui"):FindFirstChild("incognito") then
    oldstring = loadstring
    getfenv().loadstring = function(code)
        local source = code
        source = source:gsub("(%a+)%s*([%+%-%*/])=%s*", "%1 = %1 %2 ")
        return oldstring(source)
    end
end
if not getgenv then
    getfenv().getgenv = function(layer)
        return getfenv(layer)
    end
end
local nosaves = false
local saved_settings
local settings = {
	ui_bind = "Enum.KeyCode.RightControl";
	opaque = 0.4;
}
queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
HttpService = game:GetService("HttpService")
everyClipboard = setclipboard or toclipboard or set_clipboard or setrbxclipboard or (Clipboard and Clipboard.set)
if not everyClipboard then
	-- creds to vxsty
getgenv().setclipboard = function(data)
    local vim = game:GetService('VirtualInputManager');
    local old = game:GetService("UserInputService"):GetFocusedTextBox()
    local copy = tostring(data)
    local gui = Instance.new("ScreenGui", getgenv().gethui())
    local a = Instance.new('TextBox', gui)
    a.PlaceholderText = ''
    a.Text = copy
    a.ClearTextOnFocus = false
    a.Size = UDim2.new(.1, 0, .15, 0)
    a.Position = UDim2.new(10, 0, 10, 0)
    a:CaptureFocus()
    a = Enum.KeyCode
    local Keys = {
     a.RightControl, a.A
    }
    local Keys2 = {
     a.RightControl, a.C, a.V
    }
    for i, v in ipairs(Keys) do
     vim:SendKeyEvent(true, v, false, game)
     task.wait()
    end
    for i, v in ipairs(Keys) do
     vim:SendKeyEvent(false, v, false, game)
     task.wait()
    end
    for i, v in ipairs(Keys2) do
     vim:SendKeyEvent(true, v, false, game)
     task.wait()
    end
    for i, v in ipairs(Keys2) do
     vim:SendKeyEvent(false, v, false, game)
     task.wait()
    end
    gui:Destroy()
    if old then old:CaptureFocus() end
end
-- creds to vxsty
getgenv().setrbxclipboard = function(data)
    local vim = game:GetService('VirtualInputManager');
    local old = game:GetService("UserInputService"):GetFocusedTextBox()
    local copy = tostring(data)
    local gui = Instance.new("ScreenGui", getgenv().gethui())
    local a = Instance.new('TextBox', gui)
    a.PlaceholderText = ''
    a.Text = copy
    a.ClearTextOnFocus = false
    a.Size = UDim2.new(.1, 0, .15, 0)
    a.Position = UDim2.new(10, 0, 10, 0)
    a:CaptureFocus()
    a = Enum.KeyCode
    local Keys = {
     a.RightControl, a.A
    }
    local Keys2 = {
     a.RightControl, a.C, a.V
    }
    for i, v in ipairs(Keys) do
     vim:SendKeyEvent(true, v, false, game)
     task.wait()
    end
    for i, v in ipairs(Keys) do
     vim:SendKeyEvent(false, v, false, game)
     task.wait()
    end
    for i, v in ipairs(Keys2) do
     vim:SendKeyEvent(true, v, false, game)
     task.wait()
    end
    for i, v in ipairs(Keys2) do
     vim:SendKeyEvent(false, v, false, game)
     task.wait()
    end
    gui:Destroy()
    if old then old:CaptureFocus() end
end
-- creds to vxsty
getgenv().toclipboard = function(data)
    local vim = game:GetService('VirtualInputManager');
    local old = game:GetService("UserInputService"):GetFocusedTextBox()
    local copy = tostring(data)
    local gui = Instance.new("ScreenGui", getgenv().gethui())
    local a = Instance.new('TextBox', gui)
    a.PlaceholderText = ''
    a.Text = copy
    a.ClearTextOnFocus = false
    a.Size = UDim2.new(.1, 0, .15, 0)
    a.Position = UDim2.new(10, 0, 10, 0)
    a:CaptureFocus()
    a = Enum.KeyCode
    local Keys = {
     a.RightControl, a.A
    }
    local Keys2 = {
     a.RightControl, a.C, a.V
    }
    for i, v in ipairs(Keys) do
     vim:SendKeyEvent(true, v, false, game)
     task.wait()
    end
    for i, v in ipairs(Keys) do
     vim:SendKeyEvent(false, v, false, game)
     task.wait()
    end
    for i, v in ipairs(Keys2) do
     vim:SendKeyEvent(true, v, false, game)
     task.wait()
    end
    for i, v in ipairs(Keys2) do
     vim:SendKeyEvent(false, v, false, game)
     task.wait()
    end
    gui:Destroy()
    if old then old:CaptureFocus() end
end
end
if not cloneref then
	getgenv().cloneref = function(a)
		local s, _ = pcall(function() return a:Clone() end) return s and _ or a
	end
end
HttpService = cloneref(game:GetService("HttpService")) or game:GetService("HttpService")
defaults = HttpService:JSONEncode(settings)
local OptTheme = "Midnight"
local string2 = "https://discord.com/invite/jVf7eSrED9"
_G.infydtype = 1
_G.guidragtype = "https://raw.githubusercontent.com/yofriendfromschool1/aw-temp-fix/main/skui.lua"
UserInputService = game:GetService("UserInputService")
VREnabled = game:GetService("VRService").VREnabled
local IsOnMobile = table.find({
	Enum.Platform.IOS,
	Enum.Platform.Android
}, UserInputService:GetPlatform())

if IsOnMobile then
	_G.infydtype = "https://raw.githubusercontent.com/yofriendfromschool1/mobile-delta-inf-yield/main/deltainfyield.txt"
elseif iswave then
	_G.infydtype = "https://raw.githubusercontent.com/yofriendfromschool1/wave_fixedscripts/main/iy.lua"
else
	_G.infydtype = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"
end
local iswave = false
if detourfunction then
	if not IsOnMobile then
		iswave = true
	end
end

_G.lmao24 = "loo"
if game:GetService("SoundService").RespectFilteringEnabled == true then
	_G.lmao24 = "Enabled"
else
	_G.lmao24 = "Disabled"
end
function save()
	if not isfolder("Sky Hub") and not nosaves then
		makefolder("Sky Hub")
		nosaves = true
		task.wait()
		local update = {
			["ui_bind"] = settings["ui_bind"],
			["opaque"] = settings["opaque"]
		}
		task.wait()
		writefile([[Sky Hub/Sky Hub Settings.json]], HttpService:JSONEncode(update))
	end
end
function updatesaves()
	local update = {
		ui_bind = ui_bind;
		opaque = opaque;
	}
	writefile("Sky Hub/Sky Hub Settings.json", HttpService:JSONEncode(update))
end
task.wait()
function loadsettings()
	task.wait(1)
	if isfolder("Sky Hub") and isfile([[Sky Hub/Sky Hub Settings.json]]) then
		local success, response = pcall(function()
			local settings = HttpService:JSONDecode(readfile([[Sky Hub/Sky Hub Settings.json]]))
			if settings.ui_bind ~= nil or settings.ui_bind ~= "null" then
				if settings.ui_bind == "Enum.KeyCode.RightControl" then
					getgenv().SkyhubKeybind = Enum.KeyCode.RightControl
				elseif settings.ui_bind == "Enum.KeyCode.LeftControl" then
					getgenv().SkyhubKeybind = Enum.KeyCode.LeftControl
				elseif settings.ui_bind == "Enum.KeyCode.LeftAlt" then
					getgenv().SkyhubKeybind = Enum.KeyCode.LeftAlt
				elseif settings.ui_bind == "Enum.KeyCode.RightAlt" then
					getgenv().SkyhubKeybind = Enum.KeyCode.RightAlt
				elseif settings.ui_bind == "Enum.KeyCode.Insert" then
					getgenv().SkyhubKeybind = Enum.KeyCode.Insert
				elseif settings.ui_bind == "Enum.KeyCode.End" then
					getgenv().SkyhubKeybind = Enum.KeyCode.End
				elseif settings.ui_bind == "Enum.KeyCode.Delete" then
					getgenv().SkyhubKeybind = Enum.KeyCode.Delete
				elseif settings.ui_bind == "Enum.KeyCode.LeftShift" then
					getgenv().SkyhubKeybind = Enum.KeyCode.LeftShift
				elseif settings.ui_bind == "Enum.KeyCode.RightShift" then
					getgenv().SkyhubKeybind = Enum.KeyCode.RightShift
				elseif settings.ui_bind == "Enum.KeyCode.F1" then
					getgenv().SkyhubKeybind = Enum.KeyCode.F1
				elseif settings.ui_bind == "Enum.KeyCode.Q" then
					getgenv().SkyhubKeybind = Enum.KeyCode.Q
				elseif settings.ui_bind == "Enum.KeyCode.E" then
					getgenv().SkyhubKeybind = Enum.KeyCode.E
				elseif settings.ui_bind == "Enum.KeyCode.R" then
					getgenv().SkyhubKeybind = Enum.KeyCode.R
				elseif settings.ui_bind == "Enum.KeyCode.T" then
					getgenv().SkyhubKeybind = Enum.KeyCode.T
				elseif settings.ui_bind == "Enum.KeyCode.Y" then
					getgenv().SkyhubKeybind = Enum.KeyCode.Y
				elseif settings.ui_bind == "Enum.KeyCode.U" then
					getgenv().SkyhubKeybind = Enum.KeyCode.U
				elseif settings.ui_bind == "Enum.KeyCode.P" then
					getgenv().SkyhubKeybind = Enum.KeyCode.P
				elseif settings.ui_bind == "Enum.KeyCode.Z" then
					getgenv().SkyhubKeybind = Enum.KeyCode.Z
				elseif settings.ui_bind == "Enum.KeyCode.X" then
					getgenv().SkyhubKeybind = Enum.KeyCode.X
				elseif settings.ui_bind == "Enum.KeyCode.M" then
					getgenv().SkyhubKeybind = Enum.KeyCode.M
				elseif settings.ui_bind == "Enum.KeyCode.V" then
					getgenv().SkyhubKeybind = Enum.KeyCode.V
				elseif settings.ui_bind == "Enum.KeyCode.N" then
					getgenv().SkyhubKeybind = Enum.KeyCode.N
				elseif settings.ui_bind == "Enum.KeyCode.Period" then
					getgenv().SkyhubKeybind = Enum.KeyCode.Period
				end
			else
				getgenv().SkyhubKeybind = Enum.KeyCode.RightControl 
			end
			if settings.opaque ~= nil or settings.opaque ~= "null" then
				getgenv().BlurIntes = settings.opaque 
			else 
				getgenv().BlurIntes = 0.4 
			end
		end)
		if not success then
			Library.Notify("Warning", "Something went wrong while loading saves", 5)
			task.wait()
			save()
		end
	end
end
task.wait()
save()
local Library = loadstring(game:HttpGet(_G.guidragtype))()
loadsettings()
if IsOnMobile or VREnabled then
	Library.Notify("Warning", 'your OS is not supported with some scripts since of keyboard functions, do you want to execute a keyboard script?', 35, function(val)
		if val == true then
		else
			loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt"))()
		end
	end, {
		"Yes Please!",
		"Nah"
	})
end
if iswave then
	Library.Notify("Warning", 'Your Executor "Wave" Is dog shit and file functions are shit so would you like a fix for them so more support for more scripts or disable them? or ingore this and keep somewhat functions (takes abt 40 secs to go away)', 35, function(val)
		if val == true then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/wave_fixedscripts/main/Disable%20file%20and%20folder%20functions%20Wave.lua"))()
		else
			loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/wave_fixedscripts/main/FileFixes.lua"))()
		end
	end, {
		"Enable Fix for file functions",
		"Disable File/Folder functions"
	})
end
if queueteleport then
	Library.Notify("Warning", "Would you like to bring this script with you on teleport/ to the next game?", 15, function(val)
		if val == true then
		else
			queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/SkyHub.txt'))()")
		end
	end, {
		"Yes",
		"No thanks."
	})
end
if writefile and readfile and makefolder then
else
	Library.Notify("Warning", "Your Executor does not support saving files, Settings will not save.", 15)
end
if not IsOnMobile then
	Library.Notify("Current Keybind: " .. tostring(getgenv().SkyhubKeybind), "Your current keybind to toggle the gui is: " .. tostring(getgenv().SkyhubKeybind), 5)
end
local Window = Library.CreateLib("Sky Hub", OptTheme)
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")
MainSection:NewButton("FE Trolling GUI", "Troll", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/FE%20Trolling%20GUI.luau"))()
end)
MainSection:NewButton("admin", "type .cmds to see cmds", function()
	local bring = ".bring"
	local kill = ".kill"
	local toplayer = ".goto"
	local baldplr = ".bald"
	local unbaldplr = ".unbald"
	local nakey = ".nk"
	local whitey = ".white"
	local blacky = ".black"
	local cmds = ".cmds"
	local plrs = game:GetService("Players")
	local plr = game:GetService("Players").LocalPlayer
	GetArgs = function(Args)
		return Args:split(" ")
	end
	FindPlayer = function(h, h2)
		if string.lower(h) == "me" then
			return plr
		else
			h = h:gsub("%s+", "")
			for m, n in pairs(game:GetService("Players"):GetPlayers()) do
				if n.Name:lower():match("^" .. h:lower()) or n.DisplayName:lower():match("^" .. h:lower()) then
					return n
				end
			end
		end
		return nil
	end
	for i, v in pairs(plrs:GetPlayers()) do
		if v.Name == game:GetService("Players").LocalPlayer.Name then
			v.Chatted:Connect(function(message)
				local playerchar = v.Character:WaitForChild("HumanoidRootPart").CFrame
				local playertalk = v.Name
				local playertake = v
				if string.find(message, bring) then
					local Args = GetArgs(message)
					local r = FindPlayer(Args[2])
					if r and not r.Character.Humanoid.Sit then
						local TARGET = r -- type name here
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Now bringing " .. r.Name,  "All")
						local realtarg
						local oldpostia = playerchar * CFrame.new(0, 0, -2)
						function bringplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
							wait(0.35)
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
						end
						realtarg = r
						for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
							if v:IsA("Tool") and v.Name == "Stroller" then
								v.Parent = game:GetService("Players").LocalPlayer.Character
							end
						end
						local sitpart
						task.wait(1)
						for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
							if v:FindFirstChild("TouchInterest") and v:FindFirstChild("Script") and v.Parent.Name == "Stroller" then
								sitpart = v
							end
						end
						task.wait()
						task.spawn(function()
							while true do
								wait()
								if realtarg.Character:FindFirstChild("Sitting") then
									bringplr()
									task.wait(0.05)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
									break
								end
								realtarg.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
							end
						end)
					else
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("cannot find player. or player is sitting.",  "All")
						return
					end
				end
				if string.find(message, kill) then
					local Args = GetArgs(message)
					local r = FindPlayer(Args[2])
					if r and not r.Character.Humanoid.Sit then
						local TARGET = r -- type name here
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Now killing " .. r.Name,  "All")
						local realtarg
						local oldpostia = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
						function killplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(0, -20, 0)
							wait(1)
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
						end
						realtarg = r
						for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
							if v:IsA("Tool") and v.Name == "Stroller" then
								v.Parent = game:GetService("Players").LocalPlayer.Character
							end
						end
						local sitpart
						task.wait(1)
						for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
							if v:FindFirstChild("TouchInterest") and v:FindFirstChild("Script") and v.Parent.Name == "Stroller" then
								sitpart = v
							end
						end
						task.wait()
						task.spawn(function()
							while true do
								wait()
								if realtarg.Character:FindFirstChild("Sitting") then
									killplr()
									task.wait(0.05)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
									break
								end
								realtarg.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
							end
						end)
					else
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("cannot find player. or player is sitting.",  "All")
						return
					end
				end
				if string.find(message, toplayer) then
					local Args = GetArgs(message)
					local r = FindPlayer(Args[2])
					if r then
						local TARGET = r -- type name here
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Now taking you to " .. r.Name,  "All")
						local realtarg
						local oldpostia = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
						function toplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = r.Character:WaitForChild("HumanoidRootPart").CFrame
							wait(1)
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
							task.wait(0.4)
						end
						realtarg = r
						for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
							if v:IsA("Tool") and v.Name == "Stroller" then
								v.Parent = game:GetService("Players").LocalPlayer.Character
							end
						end
						local sitpart
						task.wait(1)
						for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
							if v:FindFirstChild("TouchInterest") and v:FindFirstChild("Script") and v.Parent.Name == "Stroller" then
								sitpart = v
							end
						end
						task.wait()
						task.spawn(function()
							while true do
								wait()
								if playertake.Character:FindFirstChild("Sitting") then
									toplr()
									task.wait(0.05)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
									break
								end
								playertake.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
							end
						end)
					else
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("cannot find player.",  "All")
						return
					end
				end
				if string.find(message, baldplr) then
					local Args = GetArgs(message)
					local r = FindPlayer(Args[2])
					if r and not r.Character.Humanoid.Sit then
						local TARGET = r -- type name here
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Now balding " .. r.Name,  "All")
						local realtarg
						local oldpostia = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
						local oldpostiofplr
						function baldplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-873, 39, -356)
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position, game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position + Vector3.new(0, 0, -1)) -- (putnumbershere)
							wait(0.35)
						end
						realtarg = r
						oldpostiofplr = r.Character:WaitForChild("HumanoidRootPart").CFrame
						local sitpart
						for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
							if v:IsA("Tool") and v.Name == "Stroller" then
								v.Parent = game:GetService("Players").LocalPlayer.Character
							end
						end
						function equipstroll()
							for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
								if v:IsA("Tool") and v.Name == "Stroller" then
									v.Parent = game:GetService("Players").LocalPlayer.Character
								end
							end
						end
						for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
							if v:FindFirstChild("TouchInterest") and v:FindFirstChild("Script") and v.Parent.Name == "Stroller" then
								sitpart = v
							end
						end
						function dropplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
						end
						task.wait()
						task.spawn(function()
							while true do
								wait()
								if realtarg.Character:FindFirstChild("Sitting") then
									baldplr()
									task.wait(0.4)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostiofplr
									task.wait(0.2)
									dropplr()
									task.wait(0.4)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
									break
								end
								realtarg.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
							end
						end)
					else
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("cannot find player. or player is sitting.",  "All")
						return
					end
				end
				if string.find(message, unbaldplr) then
					local Args = GetArgs(message)
					local r = FindPlayer(Args[2])
					if r and not r.Character.Humanoid.Sit then
						local TARGET = r -- type name here
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Now unbalding " .. r.Name,  "All")
						local realtarg
						local oldpostia = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
						local oldpostiofplr
						function unbaldplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-883, 39, -356)
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position, game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position + Vector3.new(0, 0, -1)) -- (putnumbershere)
							wait(0.35)
						end
						realtarg = r
						oldpostiofplr = r.Character:WaitForChild("HumanoidRootPart").CFrame
						local sitpart
						for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
							if v:IsA("Tool") and v.Name == "Stroller" then
								v.Parent = game:GetService("Players").LocalPlayer.Character
							end
						end
						function equipstroll()
							for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
								if v:IsA("Tool") and v.Name == "Stroller" then
									v.Parent = game:GetService("Players").LocalPlayer.Character
								end
							end
						end
						for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
							if v:FindFirstChild("TouchInterest") and v:FindFirstChild("Script") and v.Parent.Name == "Stroller" then
								sitpart = v
							end
						end
						function dropplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
						end
						task.wait()
						task.spawn(function()
							while true do
								wait()
								if realtarg.Character:FindFirstChild("Sitting") then
									unbaldplr()
									task.wait(0.4)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostiofplr
									task.wait(0.2)
									dropplr()
									task.wait(0.4)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
									break
								end
								realtarg.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
							end
						end)
					else
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("cannot find player. or player is sitting.",  "All")
						return
					end
				end
				if string.find(message, nakey) then
					local Args = GetArgs(message)
					local r = FindPlayer(Args[2])
					if r and not r.Character.Humanoid.Sit then
						local TARGET = r -- type name here
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Now ayooing " .. r.Name,  "All")
						local realtarg
						local oldpostia = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
						local oldpostiofplr
						function nakedplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-826, 39, -298)
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position, game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position + Vector3.new(0, 0, -1)) -- (putnumbershere)
							wait(0.35)
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
						end
						realtarg = r
						oldpostiofplr = r.Character:WaitForChild("HumanoidRootPart").CFrame
						local sitpart
						for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
							if v:IsA("Tool") and v.Name == "Stroller" then
								v.Parent = game:GetService("Players").LocalPlayer.Character
							end
						end
						function equipstroll()
							for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
								if v:IsA("Tool") and v.Name == "Stroller" then
									v.Parent = game:GetService("Players").LocalPlayer.Character
								end
							end
						end
						for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
							if v:FindFirstChild("TouchInterest") and v:FindFirstChild("Script") and v.Parent.Name == "Stroller" then
								sitpart = v
							end
						end
						function dropplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
						end
						task.wait()
						task.spawn(function()
							while true do
								wait()
								if realtarg.Character:FindFirstChild("Sitting") then
									nakedplr()
									task.wait(0.8)
									equipstroll()
									task.wait(0.2)
									realtarg.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
									task.wait(0.4)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostiofplr
									task.wait(0.2)
									dropplr()
									task.wait(0.4)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
									break
								end
								realtarg.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
							end
						end)
					else
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("cannot find player. or player is sitting.",  "All")
						return
					end
				end
				if string.find(message, whitey) then
					local Args = GetArgs(message)
					local r = FindPlayer(Args[2])
					if r and not r.Character.Humanoid.Sit then
						local TARGET = r -- type name here
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Now making " .. r.Name .. " white",  "All")
						local realtarg
						local oldpostia = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
						local oldpostiofplr
						function whiteplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-841, 39, -357)
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position, game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position + Vector3.new(0, 0, -1)) -- (putnumbershere)
							wait(0.35)
						end
						realtarg = r
						oldpostiofplr = r.Character:WaitForChild("HumanoidRootPart").CFrame
						local sitpart
						for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
							if v:IsA("Tool") and v.Name == "Stroller" then
								v.Parent = game:GetService("Players").LocalPlayer.Character
							end
						end
						function equipstroll()
							for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
								if v:IsA("Tool") and v.Name == "Stroller" then
									v.Parent = game:GetService("Players").LocalPlayer.Character
								end
							end
						end
						for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
							if v:FindFirstChild("TouchInterest") and v:FindFirstChild("Script") and v.Parent.Name == "Stroller" then
								sitpart = v
							end
						end
						function dropplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
						end
						task.wait()
						task.spawn(function()
							while true do
								wait()
								if realtarg.Character:FindFirstChild("Sitting") then
									whiteplr()
									task.wait(0.4)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostiofplr
									task.wait(0.2)
									dropplr()
									task.wait(0.4)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
									break
								end
								realtarg.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
							end
						end)
					else
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("cannot find player. or player is sitting.",  "All")
						return
					end
				end
				if string.find(message, blacky) then
					local Args = GetArgs(message)
					local r = FindPlayer(Args[2])
					if r and not r.Character.Humanoid.Sit then
						local TARGET = r -- type name here
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Now making " .. r.Name .. " black",  "All")
						local realtarg
						local oldpostia = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
						local oldpostiofplr
						function blackplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-817, 39, -358)
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position, game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position + Vector3.new(0, 0, -1)) -- (putnumbershere)
							wait(0.35)
						end
						realtarg = r
						oldpostiofplr = r.Character:WaitForChild("HumanoidRootPart").CFrame
						local sitpart
						for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
							if v:IsA("Tool") and v.Name == "Stroller" then
								v.Parent = game:GetService("Players").LocalPlayer.Character
							end
						end
						function equipstroll()
							for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
								if v:IsA("Tool") and v.Name == "Stroller" then
									v.Parent = game:GetService("Players").LocalPlayer.Character
								end
							end
						end
						for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
							if v:FindFirstChild("TouchInterest") and v:FindFirstChild("Script") and v.Parent.Name == "Stroller" then
								sitpart = v
							end
						end
						function dropplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
						end
						task.wait()
						task.spawn(function()
							while true do
								wait()
								if realtarg.Character:FindFirstChild("Sitting") then
									blackplr()
									task.wait(0.4)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostiofplr
									task.wait(0.2)
									dropplr()
									task.wait(0.4)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
									break
								end
								realtarg.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
							end
						end)
					else
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("cannot find player. or player is sitting.",  "All")
						return
					end
				end
				if string.find(message, cmds) then
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(".bring [PLAYER] .kill [PLAYER] .bald [PLAYER] .unbald [PLAYER] .nk [PLAYER] .white [PLAYER] .black [PLAYER] .goto [PLAYER]", "All")
				end
			end)
		end
	end
end)
MainSection:NewTextBox("admin player", "admins a player", function(txt)
	local targetplayer = txt -- put player to admin here
	local mmm
	for i, v in pairs(game:GetService("Players"):GetPlayers()) do
		if string.sub(string.lower(v.Name), 0, #targetplayer) == string.lower(targetplayer) or string.sub(string.lower(v.DisplayName), 0, #targetplayer) == string.lower(targetplayer) and v ~= game:GetService("Players").LocalPlayer  then
			mmm = v
		end
	end
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w " .. mmm.Name .. " you are now an admin type .cmds to see the commands",  "All")
	local bring = ".bring"
	local kill = ".kill"
	local toplayer = ".goto"
	local baldplr = ".bald"
	local unbaldplr = ".unbald"
	local nakey = ".nk"
	local whitey = ".white"
	local blacky = ".black"
	local cmds = ".cmds"
	local plrs = game:GetService("Players")
	local plr = game:GetService("Players").LocalPlayer
	GetArgs = function(Args)
		return Args:split(" ")
	end
	FindPlayer = function(h, h2)
		if string.lower(h) == "me" then
			return plr
		else
			h = h:gsub("%s+", "")
			for m, n in pairs(game:GetService("Players"):GetPlayers()) do
				if n.Name:lower():match("^" .. h:lower()) or n.DisplayName:lower():match("^" .. h:lower()) then
					return n
				end
			end
		end
		return nil
	end
	for i, v in pairs(plrs:GetPlayers()) do
		if mmm.Name == v.Name then
			v.Chatted:Connect(function(message)
				local playerchar = v.Character:WaitForChild("HumanoidRootPart").CFrame
				local playertalk = v.Name
				local playertake = v
				if string.find(message, bring) then
					local Args = GetArgs(message)
					local r = FindPlayer(Args[2])
					if r and not r.Character.Humanoid.Sit then
						local TARGET = r -- type name here
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w " .. playertalk .. " Now bringing " .. r.Name,  "All")
						local realtarg
						local oldpostia = playerchar * CFrame.new(0, 0, -2)
						function bringplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
							wait(0.35)
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
						end
						realtarg = r
						for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
							if v:IsA("Tool") and v.Name == "Stroller" then
								v.Parent = game:GetService("Players").LocalPlayer.Character
							end
						end
						local sitpart
						task.wait(1)
						for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
							if v:FindFirstChild("TouchInterest") and v:FindFirstChild("Script") and v.Parent.Name == "Stroller" then
								sitpart = v
							end
						end
						task.wait()
						task.spawn(function()
							while true do
								wait()
								if realtarg.Character:FindFirstChild("Sitting") then
									bringplr()
									task.wait(0.05)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
									break
								end
								realtarg.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
							end
						end)
					else
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w " .. playertalk .. " cannot find player. or player is sitting.",  "All")
						return
					end
				end
				if string.find(message, kill) then
					local Args = GetArgs(message)
					local r = FindPlayer(Args[2])
					if r and not r.Character.Humanoid.Sit then
						local TARGET = r -- type name here
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w " .. playertalk .. " Now killing " .. r.Name,  "All")
						local realtarg
						local oldpostia = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
						function killplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(0, -20, 0)
							wait(1)
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
						end
						realtarg = r
						for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
							if v:IsA("Tool") and v.Name == "Stroller" then
								v.Parent = game:GetService("Players").LocalPlayer.Character
							end
						end
						local sitpart
						task.wait(1)
						for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
							if v:FindFirstChild("TouchInterest") and v:FindFirstChild("Script") and v.Parent.Name == "Stroller" then
								sitpart = v
							end
						end
						task.wait()
						task.spawn(function()
							while true do
								wait()
								if realtarg.Character:FindFirstChild("Sitting") then
									killplr()
									task.wait(0.05)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
									break
								end
								realtarg.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
							end
						end)
					else
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w " .. playertalk .. " cannot find player. or player is sitting",  "All")
						return
					end
				end
				if string.find(message, toplayer) then
					local Args = GetArgs(message)
					local r = FindPlayer(Args[2])
					if r then
						local TARGET = r -- type name here
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w " .. playertalk .. " Now taking you to " .. r.Name,  "All")
						local realtarg
						local oldpostia = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
						function toplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = r.Character:WaitForChild("HumanoidRootPart").CFrame
							wait(1)
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
							task.wait(0.4)
						end
						realtarg = r
						for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
							if v:IsA("Tool") and v.Name == "Stroller" then
								v.Parent = game:GetService("Players").LocalPlayer.Character
							end
						end
						local sitpart
						task.wait(1)
						for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
							if v:FindFirstChild("TouchInterest") and v:FindFirstChild("Script") and v.Parent.Name == "Stroller" then
								sitpart = v
							end
						end
						task.wait()
						task.spawn(function()
							while true do
								wait()
								if playertake.Character:FindFirstChild("Sitting") then
									toplr()
									task.wait(0.05)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
									break
								end
								playertake.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
							end
						end)
					else
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w " .. playertalk .. " cannot find player.",  "All")
						return
					end
				end
				if string.find(message, baldplr) then
					local Args = GetArgs(message)
					local r = FindPlayer(Args[2])
					if r and not r.Character.Humanoid.Sit then
						local TARGET = r -- type name here
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w " .. playertalk .. " Now balding " .. r.Name,  "All")
						local realtarg
						local oldpostia = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
						local oldpostiofplr
						function baldplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-873, 39, -356)
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position, game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position + Vector3.new(0, 0, -1)) -- (putnumbershere)
							wait(0.35)
						end
						realtarg = r
						oldpostiofplr = r.Character:WaitForChild("HumanoidRootPart").CFrame
						local sitpart
						for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
							if v:IsA("Tool") and v.Name == "Stroller" then
								v.Parent = game:GetService("Players").LocalPlayer.Character
							end
						end
						function equipstroll()
							for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
								if v:IsA("Tool") and v.Name == "Stroller" then
									v.Parent = game:GetService("Players").LocalPlayer.Character
								end
							end
						end
						for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
							if v:FindFirstChild("TouchInterest") and v:FindFirstChild("Script") and v.Parent.Name == "Stroller" then
								sitpart = v
							end
						end
						function dropplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
						end
						task.wait()
						task.spawn(function()
							while true do
								wait()
								if realtarg.Character:FindFirstChild("Sitting") then
									baldplr()
									task.wait(0.4)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostiofplr
									task.wait(0.2)
									dropplr()
									task.wait(0.4)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
									break
								end
								realtarg.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
							end
						end)
					else
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w " .. playertalk .. " cannot find player. or player is sitting",  "All")
						return
					end
				end
				if string.find(message, unbaldplr) then
					local Args = GetArgs(message)
					local r = FindPlayer(Args[2])
					if r and not r.Character.Humanoid.Sit then
						local TARGET = r -- type name here
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w " .. playertalk .. " Now unbalding " .. r.Name,  "All")
						local realtarg
						local oldpostia = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
						local oldpostiofplr
						function unbaldplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-883, 39, -356)
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position, game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position + Vector3.new(0, 0, -1)) -- (putnumbershere)
							wait(0.35)
						end
						realtarg = r
						oldpostiofplr = r.Character:WaitForChild("HumanoidRootPart").CFrame
						local sitpart
						for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
							if v:IsA("Tool") and v.Name == "Stroller" then
								v.Parent = game:GetService("Players").LocalPlayer.Character
							end
						end
						function equipstroll()
							for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
								if v:IsA("Tool") and v.Name == "Stroller" then
									v.Parent = game:GetService("Players").LocalPlayer.Character
								end
							end
						end
						for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
							if v:FindFirstChild("TouchInterest") and v:FindFirstChild("Script") and v.Parent.Name == "Stroller" then
								sitpart = v
							end
						end
						function dropplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
						end
						task.wait()
						task.spawn(function()
							while true do
								wait()
								if realtarg.Character:FindFirstChild("Sitting") then
									unbaldplr()
									task.wait(0.4)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostiofplr
									task.wait(0.2)
									dropplr()
									task.wait(0.4)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
									break
								end
								realtarg.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
							end
						end)
					else
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w " .. playertalk .. " cannot find player. or player is sitting",  "All")
						return
					end
				end
				if string.find(message, nakey) then
					local Args = GetArgs(message)
					local r = FindPlayer(Args[2])
					if r and not r.Character.Humanoid.Sit then
						local TARGET = r -- type name here
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w " .. playertalk .. " Now ayooing " .. r.Name,  "All")
						local realtarg
						local oldpostia = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
						local oldpostiofplr
						function nakedplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-826, 39, -298)
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position, game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position + Vector3.new(0, 0, -1)) -- (putnumbershere)
							wait(0.35)
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
						end
						realtarg = r
						oldpostiofplr = r.Character:WaitForChild("HumanoidRootPart").CFrame
						local sitpart
						for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
							if v:IsA("Tool") and v.Name == "Stroller" then
								v.Parent = game:GetService("Players").LocalPlayer.Character
							end
						end
						function equipstroll()
							for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
								if v:IsA("Tool") and v.Name == "Stroller" then
									v.Parent = game:GetService("Players").LocalPlayer.Character
								end
							end
						end
						for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
							if v:FindFirstChild("TouchInterest") and v:FindFirstChild("Script") and v.Parent.Name == "Stroller" then
								sitpart = v
							end
						end
						function dropplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
						end
						task.wait()
						task.spawn(function()
							while true do
								wait()
								if realtarg.Character:FindFirstChild("Sitting") then
									nakedplr()
									task.wait(0.8)
									equipstroll()
									task.wait(0.2)
									realtarg.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
									task.wait(0.4)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostiofplr
									task.wait(0.2)
									dropplr()
									task.wait(0.4)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
									break
								end
								realtarg.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
							end
						end)
					else
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w " .. playertalk .. " cannot find player. or player is sitting",  "All")
						return
					end
				end
				if string.find(message, whitey) then
					local Args = GetArgs(message)
					local r = FindPlayer(Args[2])
					if r and not r.Character.Humanoid.Sit then
						local TARGET = r -- type name here
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w " .. playertalk .. " Now making " .. r.Name .. " white",  "All")
						local realtarg
						local oldpostia = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
						local oldpostiofplr
						function whiteplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-841, 39, -357)
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position, game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position + Vector3.new(0, 0, -1)) -- (putnumbershere)
							wait(0.35)
						end
						realtarg = r
						oldpostiofplr = r.Character:WaitForChild("HumanoidRootPart").CFrame
						local sitpart
						for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
							if v:IsA("Tool") and v.Name == "Stroller" then
								v.Parent = game:GetService("Players").LocalPlayer.Character
							end
						end
						function equipstroll()
							for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
								if v:IsA("Tool") and v.Name == "Stroller" then
									v.Parent = game:GetService("Players").LocalPlayer.Character
								end
							end
						end
						for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
							if v:FindFirstChild("TouchInterest") and v:FindFirstChild("Script") and v.Parent.Name == "Stroller" then
								sitpart = v
							end
						end
						function dropplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
						end
						task.wait()
						task.spawn(function()
							while true do
								wait()
								if realtarg.Character:FindFirstChild("Sitting") then
									whiteplr()
									task.wait(0.4)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostiofplr
									task.wait(0.2)
									dropplr()
									task.wait(0.4)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
									break
								end
								realtarg.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
							end
						end)
					else
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w " .. playertalk .. " cannot find player. or player is sitting",  "All")
						return
					end
				end
				if string.find(message, blacky) then
					local Args = GetArgs(message)
					local r = FindPlayer(Args[2])
					if r and not r.Character.Humanoid.Sit then
						local TARGET = r -- type name here
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w " .. playertalk .. " Now making " .. r.Name .. " black",  "All")
						local realtarg
						local oldpostia = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
						local oldpostiofplr
						function blackplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-817, 39, -358)
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position, game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position + Vector3.new(0, 0, -1)) -- (putnumbershere)
							wait(0.35)
						end
						realtarg = r
						oldpostiofplr = r.Character:WaitForChild("HumanoidRootPart").CFrame
						local sitpart
						for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
							if v:IsA("Tool") and v.Name == "Stroller" then
								v.Parent = game:GetService("Players").LocalPlayer.Character
							end
						end
						function equipstroll()
							for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
								if v:IsA("Tool") and v.Name == "Stroller" then
									v.Parent = game:GetService("Players").LocalPlayer.Character
								end
							end
						end
						for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
							if v:FindFirstChild("TouchInterest") and v:FindFirstChild("Script") and v.Parent.Name == "Stroller" then
								sitpart = v
							end
						end
						function dropplr()
							game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
						end
						task.wait()
						task.spawn(function()
							while true do
								wait()
								if realtarg.Character:FindFirstChild("Sitting") then
									blackplr()
									task.wait(0.4)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostiofplr
									task.wait(0.2)
									dropplr()
									task.wait(0.4)
									game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
									break
								end
								realtarg.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
							end
						end)
					else
						game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w " .. playertalk .. " cannot find player. or player is sitting",  "All")
						return
					end
				end
				if string.find(message, cmds) then
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w " .. playertalk .. " .bring [PLAYER] .kill [PLAYER] .bald [PLAYER] .unbald [PLAYER] .nk [PLAYER] .white [PLAYER] .black [PLAYER] .goto [PLAYER]", "All")
				end
			end)
		end
	end
end)
MainSection:NewTextBox("Bring Player", "Puts player in stroller and brings them", function(txt)
	local TARGET = txt -- type name here
	local realtarg
	local oldpostia = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
	function bringplr()
		game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
		wait(0.35)
		game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
	end
	for i, v in pairs(game:GetService("Players"):GetPlayers()) do
		if string.sub(string.lower(v.Name), 0, #TARGET) == string.lower(TARGET) or string.sub(string.lower(v.DisplayName), 0, #TARGET) == string.lower(TARGET) and v ~= game:GetService("Players").LocalPlayer then
			realtarg = v
		end
	end
	for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
		if v:IsA("Tool") and v.Name == "Stroller" then
			v.Parent = game:GetService("Players").LocalPlayer.Character
		end
	end
	local sitpart
	task.wait(1)
	for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
		if v:FindFirstChild("TouchInterest") and v:FindFirstChild("Script") and v.Parent.Name == "Stroller" then
			sitpart = v
		end
	end
	task.wait()
	task.spawn(function()
		while true do
			wait()
			if realtarg.Character:FindFirstChild("Sitting") then
				bringplr()
				task.wait(0.05)
				game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
				break
			end
			realtarg.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
		end
	end)
end)
MainSection:NewTextBox("Naked Player", "Puts player in stroller and brings them to a place and drops them and brings back to og pos", function(txt)
	local TARGET = txt -- type name here
	local realtarg
	local oldpostia = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
	local oldpostiofplr
	function nakedplr()
		game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-826, 39, -298)
		game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position, game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position + Vector3.new(0, 0, -1)) -- (putnumbershere)
		wait(0.35)
		game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
	end
	for i, v in pairs(game:GetService("Players"):GetPlayers()) do
		if string.sub(string.lower(v.Name), 0, #TARGET) == string.lower(TARGET) or string.sub(string.lower(v.DisplayName), 0, #TARGET) == string.lower(TARGET) and v ~= game:GetService("Players").LocalPlayer then
			realtarg = v
			oldpostiofplr = v.Character:WaitForChild("HumanoidRootPart").CFrame
		end
	end
	local sitpart
	for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
		if v:IsA("Tool") and v.Name == "Stroller" then
			v.Parent = game:GetService("Players").LocalPlayer.Character
		end
	end
	function equipstroll()
		for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
			if v:IsA("Tool") and v.Name == "Stroller" then
				v.Parent = game:GetService("Players").LocalPlayer.Character
			end
		end
	end
	for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
		if v:FindFirstChild("TouchInterest") and v:FindFirstChild("Script") and v.Parent.Name == "Stroller" then
			sitpart = v
		end
	end
	function dropplr()
		game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
	end
	task.wait()
	task.spawn(function()
		while true do
			wait()
			if realtarg.Character:FindFirstChild("Sitting") then
				nakedplr()
				task.wait(0.8)
				equipstroll()
				task.wait(0.2)
				realtarg.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
				task.wait(0.4)
				game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostiofplr
				task.wait(0.2)
				dropplr()
				task.wait(0.4)
				game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
				break
			end
			realtarg.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
		end
	end)
end)
MainSection:NewTextBox("Bald Player", "Puts player in stroller and brings them to a place and balds them and brings back to og pos", function(txt)
	local TARGET = txt -- type name here
	local realtarg
	local oldpostia = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
	local oldpostiofplr
	function baldplr()
		game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-873, 39, -356)
		game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position, game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position + Vector3.new(0, 0, -1)) -- (putnumbershere)
		wait(0.35)
	end
	for i, v in pairs(game:GetService("Players"):GetPlayers()) do
		if string.sub(string.lower(v.Name), 0, #TARGET) == string.lower(TARGET) or string.sub(string.lower(v.DisplayName), 0, #TARGET) == string.lower(TARGET) and v ~= game:GetService("Players").LocalPlayer then
			realtarg = v
			oldpostiofplr = v.Character:WaitForChild("HumanoidRootPart").CFrame
		end
	end
	local sitpart
	for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
		if v:IsA("Tool") and v.Name == "Stroller" then
			v.Parent = game:GetService("Players").LocalPlayer.Character
		end
	end
	function equipstroll()
		for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
			if v:IsA("Tool") and v.Name == "Stroller" then
				v.Parent = game:GetService("Players").LocalPlayer.Character
			end
		end
	end
	for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
		if v:FindFirstChild("TouchInterest") and v:FindFirstChild("Script") and v.Parent.Name == "Stroller" then
			sitpart = v
		end
	end
	function dropplr()
		game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
	end
	task.wait()
	task.spawn(function()
		while true do
			wait()
			if realtarg.Character:FindFirstChild("Sitting") then
				baldplr()
				task.wait(0.4)
				game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostiofplr
				task.wait(0.2)
				dropplr()
				task.wait(0.4)
				game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
				break
			end
			realtarg.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
		end
	end)
end)
MainSection:NewTextBox("unBald Player", "Puts player in stroller and brings them to a place and unbalds them and brings back to og pos", function(txt)
	local TARGET = txt -- type name here
	local realtarg
	local oldpostia = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
	local oldpostiofplr
	function unbaldplr()
		game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-883, 39, -356)
		game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position, game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position + Vector3.new(0, 0, -1)) -- (putnumbershere)
		wait(0.35)
	end
	for i, v in pairs(game:GetService("Players"):GetPlayers()) do
		if string.sub(string.lower(v.Name), 0, #TARGET) == string.lower(TARGET) or string.sub(string.lower(v.DisplayName), 0, #TARGET) == string.lower(TARGET) and v ~= game:GetService("Players").LocalPlayer then
			realtarg = v
			oldpostiofplr = v.Character:WaitForChild("HumanoidRootPart").CFrame
		end
	end
	local sitpart
	for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
		if v:IsA("Tool") and v.Name == "Stroller" then
			v.Parent = game:GetService("Players").LocalPlayer.Character
		end
	end
	function equipstroll()
		for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
			if v:IsA("Tool") and v.Name == "Stroller" then
				v.Parent = game:GetService("Players").LocalPlayer.Character
			end
		end
	end
	for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
		if v:FindFirstChild("TouchInterest") and v:FindFirstChild("Script") and v.Parent.Name == "Stroller" then
			sitpart = v
		end
	end
	function dropplr()
		game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
	end
	task.wait()
	task.spawn(function()
		while true do
			wait()
			if realtarg.Character:FindFirstChild("Sitting") then
				unbaldplr()
				task.wait(0.4)
				game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostiofplr
				task.wait(0.2)
				dropplr()
				task.wait(0.4)
				game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
				break
			end
			realtarg.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
		end
	end)
end)
MainSection:NewTextBox("White Player", "Puts player in stroller and brings them to a place and White them and brings back to og pos", function(txt)
	local TARGET = txt -- type name here
	local realtarg
	local oldpostia = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
	local oldpostiofplr
	function whiteplr()
		game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-841, 39, -357)
		game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position, game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position + Vector3.new(0, 0, -1)) -- (putnumbershere)
		wait(0.35)
	end
	for i, v in pairs(game:GetService("Players"):GetPlayers()) do
		if string.sub(string.lower(v.Name), 0, #TARGET) == string.lower(TARGET) or string.sub(string.lower(v.DisplayName), 0, #TARGET) == string.lower(TARGET) and v ~= game:GetService("Players").LocalPlayer then
			realtarg = v
			oldpostiofplr = v.Character:WaitForChild("HumanoidRootPart").CFrame
		end
	end
	local sitpart
	for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
		if v:IsA("Tool") and v.Name == "Stroller" then
			v.Parent = game:GetService("Players").LocalPlayer.Character
		end
	end
	function equipstroll()
		for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
			if v:IsA("Tool") and v.Name == "Stroller" then
				v.Parent = game:GetService("Players").LocalPlayer.Character
			end
		end
	end
	for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
		if v:FindFirstChild("TouchInterest") and v:FindFirstChild("Script") and v.Parent.Name == "Stroller" then
			sitpart = v
		end
	end
	function dropplr()
		game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
	end
	task.wait()
	task.spawn(function()
		while true do
			wait()
			if realtarg.Character:FindFirstChild("Sitting") then
				whiteplr()
				task.wait(0.4)
				game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostiofplr
				task.wait(0.2)
				dropplr()
				task.wait(0.4)
				game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
				break
			end
			realtarg.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
		end
	end)
end)
MainSection:NewTextBox("Black Player", "Puts player in stroller and brings them to a place and Black them and brings back to og pos", function(txt)
	local TARGET = txt -- type name here
	local realtarg
	local oldpostia = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
	local oldpostiofplr
	function blackplr()
		game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(-817, 39, -358)
		game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position, game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position + Vector3.new(0, 0, -1)) -- (putnumbershere)
		wait(0.35)
	end
	for i, v in pairs(game:GetService("Players"):GetPlayers()) do
		if string.sub(string.lower(v.Name), 0, #TARGET) == string.lower(TARGET) or string.sub(string.lower(v.DisplayName), 0, #TARGET) == string.lower(TARGET) and v ~= game:GetService("Players").LocalPlayer then
			realtarg = v
			oldpostiofplr = v.Character:WaitForChild("HumanoidRootPart").CFrame
		end
	end
	local sitpart
	for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
		if v:IsA("Tool") and v.Name == "Stroller" then
			v.Parent = game:GetService("Players").LocalPlayer.Character
		end
	end
	function equipstroll()
		for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
			if v:IsA("Tool") and v.Name == "Stroller" then
				v.Parent = game:GetService("Players").LocalPlayer.Character
			end
		end
	end
	for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
		if v:FindFirstChild("TouchInterest") and v:FindFirstChild("Script") and v.Parent.Name == "Stroller" then
			sitpart = v
		end
	end
	function dropplr()
		game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
	end
	task.wait()
	task.spawn(function()
		while true do
			wait()
			if realtarg.Character:FindFirstChild("Sitting") then
				blackplr()
				task.wait(0.4)
				game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostiofplr
				task.wait(0.2)
				dropplr()
				task.wait(0.4)
				game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
				break
			end
			realtarg.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
		end
	end)
end)
MainSection:NewTextBox("Kill Player", "Puts player in stroller and brings them under the map into the void killing them", function(txt)
	local TARGET = txt -- type name here
	local realtarg
	local oldpostia = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
	function killplr()
		game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(0, -20, 0)
		wait(1)
		game:GetService("Players").LocalPlayer.Character:WaitForChild("Stroller").Parent = game:GetService("Players").LocalPlayer:WaitForChild("Backpack")
	end
	for i, v in pairs(game:GetService("Players"):GetPlayers()) do
		if string.sub(string.lower(v.Name), 0, #TARGET) == string.lower(TARGET) or string.sub(string.lower(v.DisplayName), 0, #TARGET) == string.lower(TARGET) and v ~= game:GetService("Players").LocalPlayer then
			realtarg = v
		end
	end
	for i, v in pairs(game:GetService("Players").LocalPlayer:WaitForChild("Backpack"):GetChildren()) do
		if v:IsA("Tool") and v.Name == "Stroller" then
			v.Parent = game:GetService("Players").LocalPlayer.Character
		end
	end
	local sitpart
	task.wait(1)
	for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
		if v:FindFirstChild("TouchInterest") and v:FindFirstChild("Script") and v.Parent.Name == "Stroller" then
			sitpart = v
		end
	end
	task.wait()
	task.spawn(function()
		while true do
			wait()
			if realtarg.Character:FindFirstChild("Sitting") then
				killplr()
				task.wait(0.05)
				game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = oldpostia
				break
			end
			realtarg.Character:WaitForChild("HumanoidRootPart").CFrame = sitpart.CFrame
		end
	end)
end)
local Discord = Window:NewTab("Discords", 16795709379)
local DiscordSection = Discord:NewSection("Discords")
DiscordSection:NewButton("Discord Invite", "copys discord link", function()
	if httprequest and not IsOnMobile then
		httprequest({
			Url = 'http://127.0.0.1:6463/rpc?v=1',
			Method = 'POST',
			Headers = {
				['Content-Type'] = 'application/json',
				Origin = 'https://discord.com'
			},
			Body = HttpService:JSONEncode({
				cmd = 'INVITE_BROWSER',
				nonce = HttpService:GenerateGUID(false),
				args = {
					code = 'xPDF3DkKhk'
				}
			})
		})
		Library.Notify("if nothing happened", "Make sure u have discord app open", 5)
	elseif everyClipboard then
		everyClipboard("https://discord.gg/xPDF3DkKhk")
		Library.Notify("Copied to Clipboard", "", 5)
	else
		Library.Notify("DOG SHIT EXECUTOR", "https://discord.gg/xPDF3DkKhk", 5)
	end
end)
DiscordSection:NewButton("Discord Invite OLD", "Copys Discord invite link", function()
	everyClipboard(string2)
end)
local Admins = Window:NewTab("Admins", 10016551771)
local AdminsSection = Admins:NewSection("Admins")
AdminsSection:NewButton("Infinite Yield FE", "Admin", function()
	loadstring(game:HttpGet(_G.infydtype))()
end)
AdminsSection:NewButton("Infinite Store", "Archived", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Infinite-Store/Infinite-Store/main/main.lua"))()
end)
AdminsSection:NewButton("Novoline", "Admin", function()
		loadstring(game:HttpGet("https://novoline.pro"))()
end)
AdminsSection:NewButton("Nameless Admin", "Admin", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/yofriendfromschool1/NamelessAdmin-NO-BYFRON-GUI/main/Source'))()
end)
AdminsSection:NewButton("fates admin", "Admin", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
end)
AdminsSection:NewButton("Cmd", "Admin", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/lxte/cmd/main/main.lua"))()
end)
AdminsSection:NewButton("Cmd (TEST)", "Admin tests", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/lxte/cmd/main/testing-main.lua"))()
end)
AdminsSection:NewButton("Shattervast Admin", "Admin", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub-Backup/main/%5BFE%5D%20Shattervast.lua'))()
end)
AdminsSection:NewButton("Proton Free Admin", "Admin", function()
	_G.UI_Id = "default" --set this to "default" for the default ui
	loadstring(game:HttpGet('https://raw.githubusercontent.com/DigitalityScripts/roblox-scripts/main/Proton%20Free'))()
end)
AdminsSection:NewButton("Proton 2 free Admin", "Admin", function()
																											 -- DEFAULT CMD BAR PREFIX IS ;
																											 -- DEFAULT CHAT PREFIX IS /
	_G.UI_Id = "default" --set this to "default" for the default ui
	loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/5e6e6cc1bb32fd926764d064e2c60a3b.lua"))()
end)
AdminsSection:NewButton("Reviz Admin V2", "Admin", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/Reviz%20AdminV2"))()
end)
local Hubs = Window:NewTab("Hubs", 7360649366)
local HubsSection = Hubs:NewSection("Hubs")
if IsOnMobile or VREnabled then
	HubsSection:NewButton("Mobile Keyboard Script", "For mobile users", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt"))()
	end)
end
HubsSection:NewButton("FE Trolling GUI", "FE Scripts and more.", function()--
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/FE%20Trolling%20GUI.luau'), true))()
end)
HubsSection:NewButton("Sirius", "cool asl", function()--
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub-Backup/main/Sirius/Sirius.txt'), true))()
end)
HubsSection:NewButton("Orca", "cool asff", function()--
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub-Backup/main/Orca/latest.lua'), true))()
end)
HubsSection:NewButton("Hoho Hub", "key should be and if not then do it urself", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HohoV2/main/ScriptLoad.lua"))()
end)
HubsSection:NewButton("Psyhub", "idk", function()
	loadstring(game:GetObjects("rbxassetid://3014051754")[1].Source)()
end)
HubsSection:NewButton("Ezhub", "130+ games", function()--
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'), true))()--
end)
HubsSection:NewButton("CocoHub", "idk", function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/MarsQQ/CocoHub/master/CocoZHub'), true))()
end)
HubsSection:NewButton("MonkeHub", "idk", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/KuriWasTaken/MonkeHub/main/Loader.lua"))()
end)
local Player = Window:NewTab("Player", 2795572800)
local PlayerSection = Player:NewSection("Player")
PlayerSection:NewSlider("WalkSpeed", "Changes how fast you walk", 500, 1, function(v)
	game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = v
end)
PlayerSection:NewSlider("Jumppower", "Changes how high you jump", 500, 1, function(v)
	game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = v
end)
PlayerSection:NewSlider("Gravity", "Changes gravity", 500, 1, function(v)
	game:GetService("Workspace").Gravity = v
end)
PlayerSection:NewSlider("FOV", "Changes Field Of View", 120, 1, function(v)
	game:GetService("Workspace"):WaitForChild("Camera").FieldOfView = v
end)
PlayerSection:NewButton("Unlock Third Person", "unlocks on most games", function()
	game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 99999
	game:GetService("Players").LocalPlayer.CameraMode = Enum.CameraMode.Classic
end)
PlayerSection:NewSlider("Max Camera Zoom", "Changes zoom distance of camera", 99999, 1, function(v)
	game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = v
end)
PlayerSection:NewButton("Anti Lag/Low GFX", "makes you less laggy and helps boost fps/performance", function()
	local Terrain = game:GetService("Workspace"):FindFirstChildOfClass('Terrain')
	Lighting = game:GetService("Lighting")
	Terrain.WaterWaveSize = 0
	Terrain.WaterWaveSpeed = 0
	Terrain.WaterReflectance = 0
	Terrain.WaterTransparency = 0
	Lighting.GlobalShadows = false
	Lighting.FogEnd = 9e9
	for i, v in pairs(game:GetDescendants()) do
		if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
		elseif v:IsA("Decal") then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		end
	end
	for i, v in pairs(Lighting:GetDescendants()) do
		if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
			v.Enabled = false
		end
	end
	game:GetService("Workspace").DescendantAdded:Connect(function(child)
		task.spawn(function()
			if child:IsA('ForceField') then
				game:GetService("RunService").Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Sparkles') then
				game:GetService("RunService").Heartbeat:Wait()
				child:Destroy()
			elseif child:IsA('Smoke') or child:IsA('Fire') then
				game:GetService("RunService").Heartbeat:Wait()
				child:Destroy()
			end
		end)
	end)
end)
PlayerSection:NewToggle("Anti-AFK", "so you cant disconnect after 20 minutes of idling", function(state)
	if state then
		ANTIAFK = game:GetService("Players").LocalPlayer.Idled:connect(function()
			game:FindService("VirtualUser"):Button2Down(Vector2.new(0, 0), game:GetService("Workspace").CurrentCamera.CFrame)
			task.wait(1)
			game:FindService("VirtualUser"):Button2Up(Vector2.new(0, 0), game:GetService("Workspace").CurrentCamera.CFrame)
		end)
		Library.Notify("WARNING", "Successfully Enabled Anti-AFK!", 5)
	else
		if ANTIAFK then
			ANTIAFK:Disconnect()
			wait();
			Library.Notify("WARNING", "Successfully Disabled Anti-AFK!", 5)
		end
	end
end)
PlayerSection:NewToggle("Loop Full Bright", "makes game bright so if its dark u can actually see", function(state)
	local aLighting = game:GetService("Lighting")
	local oldbrit = aLighting.Brightness
	local oldclocktime = aLighting.ClockTime
	local oldfogend = aLighting.FogEnd
	local oldglobshads = aLighting.GlobalShadows
	local oldoutdooramb = aLighting.OutdoorAmbient
	local Lighting = cloneref(game:GetService("Lighting"))
	if not state then
		brightLoop:Disconnect()
		Lighting.Brightness = oldbrit
		Lighting.ClockTime = oldclocktime
		Lighting.FogEnd = oldfogend
		Lighting.GlobalShadows = oldglobshads
		Lighting.OutdoorAmbient = oldoutdooramb
	end
	local function brightFunc()
		Lighting.Brightness = 2
		Lighting.ClockTime = 14
		Lighting.FogEnd = 100000
		Lighting.GlobalShadows = false
		Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
	end
	brightLoop = game:GetService("RunService").RenderStepped:Connect(brightFunc)
end)
if IsOnMobile or VREnabled then
	PlayerSection:NewButton("enable Shiftlock", "unlocks on most games", function()
		Library.Notify("Shift Lock Enabled", "Gui should pop up on your right", 5)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub-Backup/main/mobileshiftlock.txt"))()
	end)
else
	PlayerSection:NewToggle("enable/disable shiftlock", "unlocks on most games", function(value)
		game:GetService("Players").LocalPlayer.DevEnableMouseLock = value
		if value then
			Library.Notify("Shift Lock Enabled", "Just press shift or enable it in roblox settings", 5)
		else
			Library.Notify("Shift Lock Disabled", "", 5)
		end
	end)
end
local Settingss = Window:NewTab("Settings", 11385220704)
local SettingssSection = Settingss:NewSection("Settings")
SettingssSection:NewDropdown("UI Toggle Bind", "Changes Toggle Bind for Sky Hub Default is Right Control ONLY ON PC", {
	"Right Control",
	"Left Control",
	"Left Alt",
	"Right Alt",
	"Insert",
	"End",
	"Del/Delete",
	"Left Shift",
	"Right Shift",
	"F1",
	"Q",
	"E",
	"R",
	"T",
	"Y",
	"U",
	"P",
	"Z",
	"X",
	"M",
	"V",
	"N",
	"."
}, function(currentoption)
	if currentoption == "Right Control" then
		getgenv().SkyhubKeybind = "Enum.KeyCode.RightControl"
		ui_bind = getgenv().SkyhubKeybind
		task.wait()
		if writefile then
			updatesaves()
			task.wait()
			loadsettings()
		else
			Library.Notify("DOG SHIT EXECUTOR", "Doesnt have file functions lol", 5)
		end
		if not IsOnMobile then
			Library.Notify("New Keybind: " .. tostring(getgenv().SkyhubKeybind), "Your new keybind to toggle the gui is: " .. tostring(getgenv().SkyhubKeybind), 5)
		end
	elseif currentoption == "Left Control" then
		getgenv().SkyhubKeybind = "Enum.KeyCode.LeftControl"
		ui_bind = getgenv().SkyhubKeybind
		task.wait()
		if writefile then
			updatesaves()
			task.wait()
			loadsettings()
		else
			Library.Notify("DOG SHIT EXECUTOR", "Doesnt have file functions lol", 5)
		end
		if not IsOnMobile then
			Library.Notify("New Keybind: " .. tostring(getgenv().SkyhubKeybind), "Your new keybind to toggle the gui is: " .. tostring(getgenv().SkyhubKeybind), 5)
		end
	elseif currentoption == "Left Alt" then
		getgenv().SkyhubKeybind = "Enum.KeyCode.LeftAlt"
		ui_bind = getgenv().SkyhubKeybind
		task.wait()
		if writefile then
			updatesaves()
			task.wait()
			loadsettings()
		else
			Library.Notify("DOG SHIT EXECUTOR", "Doesnt have file functions lol", 5)
		end
		if not IsOnMobile then
			Library.Notify("New Keybind: " .. tostring(getgenv().SkyhubKeybind), "Your new keybind to toggle the gui is: " .. tostring(getgenv().SkyhubKeybind), 5)
		end
	elseif currentoption == "Right Alt" then
		getgenv().SkyhubKeybind = "Enum.KeyCode.RightAlt"
		ui_bind = getgenv().SkyhubKeybind
		task.wait()
		if writefile then
			updatesaves()
			task.wait()
			loadsettings()
		else
			Library.Notify("DOG SHIT EXECUTOR", "Doesnt have file functions lol", 5)
		end
		if not IsOnMobile then
			Library.Notify("New Keybind: " .. tostring(getgenv().SkyhubKeybind), "Your new keybind to toggle the gui is: " .. tostring(getgenv().SkyhubKeybind), 5)
		end
	elseif currentoption == "Insert" then
		getgenv().SkyhubKeybind = "Enum.KeyCode.Insert"
		ui_bind = getgenv().SkyhubKeybind
		task.wait()
		if writefile then
			updatesaves()
			task.wait()
			loadsettings()
		else
			Library.Notify("DOG SHIT EXECUTOR", "Doesnt have file functions lol", 5)
		end
		if not IsOnMobile then
			Library.Notify("New Keybind: " .. tostring(getgenv().SkyhubKeybind), "Your new keybind to toggle the gui is: " .. tostring(getgenv().SkyhubKeybind), 5)
		end
	elseif currentoption == "End" then
		getgenv().SkyhubKeybind = "Enum.KeyCode.End"
		ui_bind = getgenv().SkyhubKeybind
		task.wait()
		if writefile then
			updatesaves()
			task.wait()
			loadsettings()
		else
			Library.Notify("DOG SHIT EXECUTOR", "Doesnt have file functions lol", 5)
		end
		if not IsOnMobile then
			Library.Notify("New Keybind: " .. tostring(getgenv().SkyhubKeybind), "Your new keybind to toggle the gui is: " .. tostring(getgenv().SkyhubKeybind), 5)
		end
	elseif currentoption == "Del/Delete" then
		getgenv().SkyhubKeybind = "Enum.KeyCode.Delete"
		ui_bind = getgenv().SkyhubKeybind
		task.wait()
		if writefile then
			updatesaves()
			task.wait()
			loadsettings()
		else
			Library.Notify("DOG SHIT EXECUTOR", "Doesnt have file functions lol", 5)
		end
		if not IsOnMobile then
			Library.Notify("New Keybind: " .. tostring(getgenv().SkyhubKeybind), "Your new keybind to toggle the gui is: " .. tostring(getgenv().SkyhubKeybind), 5)
		end
	elseif currentoption == "Left Shift" then
		getgenv().SkyhubKeybind = "Enum.KeyCode.LeftShift"
		ui_bind = getgenv().SkyhubKeybind
		task.wait()
		if writefile then
			updatesaves()
			task.wait()
			loadsettings()
		else
			Library.Notify("DOG SHIT EXECUTOR", "Doesnt have file functions lol", 5)
		end
		if not IsOnMobile then
			Library.Notify("New Keybind: " .. tostring(getgenv().SkyhubKeybind), "Your new keybind to toggle the gui is: " .. tostring(getgenv().SkyhubKeybind), 5)
		end
	elseif currentoption == "Right Shift" then
		getgenv().SkyhubKeybind = "Enum.KeyCode.RightShift"
		ui_bind = getgenv().SkyhubKeybind
		task.wait()
		if writefile then
			updatesaves()
			task.wait()
			loadsettings()
		else
			Library.Notify("DOG SHIT EXECUTOR", "Doesnt have file functions lol", 5)
		end
		if not IsOnMobile then
			Library.Notify("New Keybind: " .. tostring(getgenv().SkyhubKeybind), "Your new keybind to toggle the gui is: " .. tostring(getgenv().SkyhubKeybind), 5)
		end
	elseif currentoption == "F1" then
		getgenv().SkyhubKeybind = "Enum.KeyCode.F1"
		ui_bind = getgenv().SkyhubKeybind
		task.wait()
		if writefile then
			updatesaves()
			task.wait()
			loadsettings()
		else
			Library.Notify("DOG SHIT EXECUTOR", "Doesnt have file functions lol", 5)
		end
		if not IsOnMobile then
			Library.Notify("New Keybind: " .. tostring(getgenv().SkyhubKeybind), "Your new keybind to toggle the gui is: " .. tostring(getgenv().SkyhubKeybind), 5)
		end
	elseif currentoption == "Q" then
		getgenv().SkyhubKeybind = "Enum.KeyCode.Q"
		ui_bind = getgenv().SkyhubKeybind
		task.wait()
		if writefile then
			updatesaves()
			task.wait()
			loadsettings()
		else
			Library.Notify("DOG SHIT EXECUTOR", "Doesnt have file functions lol", 5)
		end
		if not IsOnMobile then
			Library.Notify("New Keybind: " .. tostring(getgenv().SkyhubKeybind), "Your new keybind to toggle the gui is: " .. tostring(getgenv().SkyhubKeybind), 5)
		end
	elseif currentoption == "E" then
		getgenv().SkyhubKeybind = "Enum.KeyCode.E"
		ui_bind = getgenv().SkyhubKeybind
		task.wait()
		if writefile then
			updatesaves()
			task.wait()
			loadsettings()
		else
			Library.Notify("DOG SHIT EXECUTOR", "Doesnt have file functions lol", 5)
		end
		if not IsOnMobile then
			Library.Notify("New Keybind: " .. tostring(getgenv().SkyhubKeybind), "Your new keybind to toggle the gui is: " .. tostring(getgenv().SkyhubKeybind), 5)
		end
	elseif currentoption == "R" then
		getgenv().SkyhubKeybind = "Enum.KeyCode.R"
		ui_bind = getgenv().SkyhubKeybind
		task.wait()
		if writefile then
			updatesaves()
			task.wait()
			loadsettings()
		else
			Library.Notify("DOG SHIT EXECUTOR", "Doesnt have file functions lol", 5)
		end
		if not IsOnMobile then
			Library.Notify("New Keybind: " .. tostring(getgenv().SkyhubKeybind), "Your new keybind to toggle the gui is: " .. tostring(getgenv().SkyhubKeybind), 5)
		end
	elseif currentoption == "T" then
		getgenv().SkyhubKeybind = "Enum.KeyCode.T"
		ui_bind = getgenv().SkyhubKeybind
		task.wait()
		if writefile then
			updatesaves()
			task.wait()
			loadsettings()
		else
			Library.Notify("DOG SHIT EXECUTOR", "Doesnt have file functions lol", 5)
		end
		if not IsOnMobile then
			Library.Notify("New Keybind: " .. tostring(getgenv().SkyhubKeybind), "Your new keybind to toggle the gui is: " .. tostring(getgenv().SkyhubKeybind), 5)
		end
	elseif currentoption == "Y" then
		getgenv().SkyhubKeybind = "Enum.KeyCode.Y"
		ui_bind = getgenv().SkyhubKeybind
		task.wait()
		if writefile then
			updatesaves()
			task.wait()
			loadsettings()
		else
			Library.Notify("DOG SHIT EXECUTOR", "Doesnt have file functions lol", 5)
		end
		if not IsOnMobile then
			Library.Notify("New Keybind: " .. tostring(getgenv().SkyhubKeybind), "Your new keybind to toggle the gui is: " .. tostring(getgenv().SkyhubKeybind), 5)
		end
	elseif currentoption == "U" then
		getgenv().SkyhubKeybind = "Enum.KeyCode.U"
		ui_bind = getgenv().SkyhubKeybind
		task.wait()
		if writefile then
			updatesaves()
			task.wait()
			loadsettings()
		else
			Library.Notify("DOG SHIT EXECUTOR", "Doesnt have file functions lol", 5)
		end
		if not IsOnMobile then
			Library.Notify("New Keybind: " .. tostring(getgenv().SkyhubKeybind), "Your new keybind to toggle the gui is: " .. tostring(getgenv().SkyhubKeybind), 5)
		end
	elseif currentoption == "P" then
		getgenv().SkyhubKeybind = "Enum.KeyCode.P"
		ui_bind = getgenv().SkyhubKeybind
		task.wait()
		if writefile then
			updatesaves()
			task.wait()
			loadsettings()
		else
			Library.Notify("DOG SHIT EXECUTOR", "Doesnt have file functions lol", 5)
		end
		if not IsOnMobile then
			Library.Notify("New Keybind: " .. tostring(getgenv().SkyhubKeybind), "Your new keybind to toggle the gui is: " .. tostring(getgenv().SkyhubKeybind), 5)
		end
	elseif currentoption == "Z" then
		getgenv().SkyhubKeybind = "Enum.KeyCode.Z"
		ui_bind = getgenv().SkyhubKeybind
		task.wait()
		if writefile then
			updatesaves()
			task.wait()
			loadsettings()
		else
			Library.Notify("DOG SHIT EXECUTOR", "Doesnt have file functions lol", 5)
		end
		if not IsOnMobile then
			Library.Notify("New Keybind: " .. tostring(getgenv().SkyhubKeybind), "Your new keybind to toggle the gui is: " .. tostring(getgenv().SkyhubKeybind), 5)
		end
	elseif currentoption == "X" then
		getgenv().SkyhubKeybind = "Enum.KeyCode.X"
		ui_bind = getgenv().SkyhubKeybind
		task.wait()
		if writefile then
			updatesaves()
			task.wait()
			loadsettings()
		else
			Library.Notify("DOG SHIT EXECUTOR", "Doesnt have file functions lol", 5)
		end
		if not IsOnMobile then
			Library.Notify("New Keybind: " .. tostring(getgenv().SkyhubKeybind), "Your new keybind to toggle the gui is: " .. tostring(getgenv().SkyhubKeybind), 5)
		end
	elseif currentoption == "M" then
		getgenv().SkyhubKeybind = "Enum.KeyCode.M"
		ui_bind = getgenv().SkyhubKeybind
		task.wait()
		if writefile then
			updatesaves()
			task.wait()
			loadsettings()
		else
			Library.Notify("DOG SHIT EXECUTOR", "Doesnt have file functions lol", 5)
		end
		if not IsOnMobile then
			Library.Notify("New Keybind: " .. tostring(getgenv().SkyhubKeybind), "Your new keybind to toggle the gui is: " .. tostring(getgenv().SkyhubKeybind), 5)
		end
	elseif currentoption == "V" then
		getgenv().SkyhubKeybind = "Enum.KeyCode.V"
		ui_bind = getgenv().SkyhubKeybind
		task.wait()
		if writefile then
			updatesaves()
			task.wait()
			loadsettings()
		else
			Library.Notify("DOG SHIT EXECUTOR", "Doesnt have file functions lol", 5)
		end
		if not IsOnMobile then
			Library.Notify("New Keybind: " .. tostring(getgenv().SkyhubKeybind), "Your new keybind to toggle the gui is: " .. tostring(getgenv().SkyhubKeybind), 5)
		end
	elseif currentoption == "N" then
		getgenv().SkyhubKeybind = "Enum.KeyCode.N"
		ui_bind = getgenv().SkyhubKeybind
		task.wait()
		if writefile then
			updatesaves()
			task.wait()
			loadsettings()
		else
			Library.Notify("DOG SHIT EXECUTOR", "Doesnt have file functions lol", 5)
		end
		if not IsOnMobile then
			Library.Notify("New Keybind: " .. tostring(getgenv().SkyhubKeybind), "Your new keybind to toggle the gui is: " .. tostring(getgenv().SkyhubKeybind), 5)
		end
	elseif currentoption == "." then
		getgenv().SkyhubKeybind = "Enum.KeyCode.Period"
		ui_bind = getgenv().SkyhubKeybind
		task.wait()
		if writefile then
			updatesaves()
			task.wait()
			loadsettings()
		else
			Library.Notify("DOG SHIT EXECUTOR", "Doesnt have file functions lol", 5)
		end
		if not IsOnMobile then
			Library.Notify("New Keybind: " .. tostring(getgenv().SkyhubKeybind), "Your new keybind to toggle the gui is: " .. tostring(getgenv().SkyhubKeybind), 5)
		end
	end
end)
SettingssSection:NewSlider("Blur/Opaque Intensitiy", "Changes blurryness", 1, 0, function(v)
	getgenv().BlurIntes = v
	opaque = getgenv().BlurIntes
	task.wait()
	if writefile then
		updatesaves()
		task.wait()
		loadsettings()
	else
		Library.Notify("DOG SHIT EXECUTOR", "Doesnt have file functions lol", 5)
	end
end)
SettingssSection:NewButton("Save Game", "Saves game MUST HAVE saveinstance()", function()
	local SSSSSS = ""
	if identifyexecutor then
		SSSSSS = select(1, identifyexecutor())
	end
	if SSSSSS == "Krampus" then
		saveplace({
			FileName = "SkyHubSavedGame",
			CopyToClipboard = true
		})
		return
	end
	if saveplace then
		saveplace({
			FileName = "SkyHubSavedGame"
		})
	end
	if saveinstance then
		saveinstance()
	else
		Library.Notify("Your executor doesnt have a saveinstance() function try Save Game 2", "", 10)
	end
end)
SettingssSection:NewButton("Save Game 2", "Saves game dont need saveinstance()", function()
	getgenv().saveinstance = nil
	loadstring(game:HttpGet("https://github.com/MuhXd/Roblox-mobile-script/blob/main/Arecus-X-Neo/Saveinstance.lua?raw=true"))();
end)
local Games = Window:NewTab("Games", 12689980465)
local GamesSection = Games:NewSection("Games")
	
local gamedata = loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/tpgames.lua"))()

for _, v in ipairs(gamedata) do
	GamesSection:NewButton(v.name, "Teleports you to game", function()
		queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/SkyHub.txt'))()")
		game:GetService("TeleportService"):Teleport(v.placeId, game:GetService("Players").LocalPlayer)
	end)
end
