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
local doorsesp_color = Color3.fromRGB(255, 150, 200)
local cabnietsesp_color = Color3.fromRGB(19, 211, 13)
local chestsesp_color = Color3.fromRGB(131, 96, 168)
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TextChatService = game:GetService("TextChatService")
local Lighting = game:GetService("Lighting")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
local Backpack = LocalPlayer.Backpack
local Humanoid = Character:WaitForChild("Humanoid")
local AvatarIcon = Players:GetUserThumbnailAsync(LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
local MainUI = LocalPlayer.PlayerGui.MainUI
local Main_Game = MainUI.Initiator.Main_Game
local Modules = Main_Game.RemoteListener.Modules
local SpeedBoost = 0
local ScreechSafeRooms = {}
local PrimaryPart = Character.PrimaryPart
local CurrentRooms = game:GetService("Workspace").CurrentRooms
local EntityInfo = ReplicatedStorage.EntityInfo
local ClientModules = ReplicatedStorage.ClientModules
local DeathHint = EntityInfo.DeathHint
local CamLock = EntityInfo.CamLock
local MotorReplication = EntityInfo.MotorReplication
local EntityModules = ClientModules.EntityModules
local ItemESP = false
local EntityESP = false
local OtherESP = false
local EyesOnMap = false
local InstantInteract = false
local IncreasedDistance = false
local InteractNoclip = false
local EnableInteractions = false
local DisableDupe = false
local DisableSeek = false
local NoDark = false
local Noclip = false
local DisableTimothy = false
local DisableA90 = false
local NoclipNext = false
local IsExiting = false
local RemoveDeathHint = false
local ClosetExitFix = false
local NoBreaker = false
local DisableEyes = false
local DisableGlitch = false
local DisableSnare = false
local WasteItems = false
local ScreechModule
local CustomScreechModule
local TimothyModule
local CustomTimothyModule
local A90Module
local CustomA90Module
local DoorRange
local SpoofMotor
local ESP_Items = {
	KeyObtain = {
		"Key",
		1.5
	},
	LiveHintBook = {
		"Book",
		1.5
	},
	Lighter = {
		"Lighter",
		1.5
	},
	Lockpick = {
		"Lockpicks",
		1.5
	},
	Vitamins = {
		"Vitamins",
		1.5
	},
	Crucifix = {
		"Crucifix",
		1.5
	},
	CrucifixWall = {
		"Crucifix",
		1.5
	},
	SkeletonKey = {
		"Skeleton Key",
		1.5
	},
	Flashlight = {
		"Flashlight",
		1.5
	},
	Candle = {
		"Candle",
		1.5
	},
	LiveBreakerPolePickup = {
		"Fuse",
		1.5
	},
	Shears = {
		"Shears",
		1.5
	},
	Battery = {
		"Battery",
		1.5
	},
	PickupItem = {
		"Paper",
		1.5
	},
	ElectricalKeyObtain = {
		"Electrical Key",
		1.5
	},
	Shakelight = {
		"Shakelight",
		1.5
	},
	Scanner = {
		"iPad",
		1.5
	}
}
local ESP_Entities = {
	RushMoving = {
		"Rush",
		5
	},
	AmbushMoving = {
		"Ambush",
		5
	},
	FigureRagdoll = {
		"Figure",
		7
	},
	FigureLibrary = {
		"Figure",
		7
	},
	SeekMoving = {
		"Seek",
		5.5
	},
	Screech = {
		"Screech",
		2
	},
	Eyes = {
		"Eyes",
		4
	},
	Snare = {
		"Snare",
		2
	},
	A60 = {
		"A-60",
		10
	},
	A120 = {
		"A-120",
		10
	}
}
local ESP_Other = {
	Door = {
		"Door",
		5
	},
	LeverForGate = {
		"Lever",
		3
	},
	GoldPile = {
		"Gold",
		0.5
	},
	Bandage = {
		"Bandage",
		0.5
	}
}
local MainFrame = MainUI.MainFrame
local GameData = ReplicatedStorage.GameData
local LatestRoom = GameData.LatestRoom
local Floor = GameData.Floor
local OldEnabled = {}
local Module_Events = require(ClientModules.Module_Events)
local ShatterFunction = Module_Events.shatter
local HideTick = tick()
local GlitchModule = EntityModules:WaitForChild("Glitch")
local CustomGlitchModule = GlitchModule:Clone()
local Ranks = {
	Creator = {
		Title = "awesome script creator",
		Color = Color3.new(0, 0.8, 0)
	},
	MrHong = {
		Title = "Mr. Hong",
		Color = Color3.new(0.9, 0, 0)
	},
	Cool = {
		Title = "Cool",
		Color = Color3.new(0, 0.7, 1)
	},
	Greg = {
		Title = "official greg heffley",
		Color = Color3.new(0.3, 0.3, 0.3)
	}
}
local PlayerRanks = {
	["2615068449"] = "Creator",
	["2300945089"] = "MrHong",
	["152169512"] = "Cool",
	["1160958289"] = "Cool",
	["211059753"] = "Greg",
	["47466584"] = "Cool"
}
CustomGlitchModule.Name = "CustomGlitch"
CustomGlitchModule.Parent = GlitchModule.Parent
GlitchModule:Destroy()
EntityInfo.UseEnemyModule.OnClientEvent:Connect(function(Entity, x, ...)
	if Entity == "Glitch" then
		if not DisableGlitch then
			require(CustomGlitchModule).stuff(require(Main_Game), table.unpack({
				...
			}))
		end
	end
end)
DeathHint.OnClientEvent:Connect(function()
	if RemoveDeathHint then
		task.wait()
		firesignal(DeathHint.OnClientEvent, {}, "Blue")
	end
end)
for _, Player in pairs(Players:GetPlayers()) do
	if Player ~= LocalPlayer then
		ESP_Other[Player.Name] = {
			Player.DisplayName,
			4
		}
	end
end
local function ReplacePainting(Painting, NewImage, NewTitle)
	Painting:WaitForChild("Canvas").SurfaceGui.ImageLabel.Image = NewImage
	Painting.Canvas.SurfaceGui.ImageLabel.BackgroundTransparency = 1
	Painting.Canvas.SurfaceGui.ImageLabel.ImageTransparency = 0
	Painting.Canvas.SurfaceGui.ImageLabel.ImageColor3 = Color3.new(1, 1, 1)
	local NewPrompt = Painting:WaitForChild("InteractPrompt"):Clone()
	Painting.InteractPrompt:Destroy()
	NewPrompt.Parent = Painting
	NewPrompt.Triggered:Connect(function()
		require(Main_Game).caption("This painting is titled \"" .. NewTitle .. "\".")
	end)
end
local function ApplyCustoms(DontYield)
	task.wait(DontYield and 0 or 1)
	ScreechModule = Modules:WaitForChild("Screech")
	TimothyModule = Modules.SpiderJumpscare
	A90Module = Modules.A90
	CustomScreechModule = ScreechModule:Clone()
	CustomTimothyModule = TimothyModule:Clone()
	CustomA90Module = A90Module:Clone()
	CustomScreechModule.Name = "CustomScreech"
	CustomTimothyModule.Name = "CustomTimothy"
	CustomA90Module.Name = "CustomA90"
	CustomScreechModule.Parent = ScreechModule.Parent
	CustomTimothyModule.Parent = TimothyModule.Parent
	CustomA90Module.Parent = A90Module.Parent
	ScreechModule:Destroy()
	TimothyModule:Destroy()
	A90Module:Destroy()
end
local function ApplySpeed(Force)
	local Extra = 0
	local Behind = 0
	if Humanoid:GetAttribute("SpeedBoostExtra") then
		Extra = Humanoid:GetAttribute("SpeedBoostExtra")
	end
	if Humanoid:GetAttribute("SpeedBoostBehind") then
		Behind = Humanoid:GetAttribute("SpeedBoostBehind")
	end
	local MaxSpeed = 15 + Humanoid:GetAttribute("SpeedBoost") + Extra + Behind
	if Force then
		local CrouchNerf = 0
		if require(Main_Game).crouching then
			CrouchNerf = 5
		end
		Humanoid.WalkSpeed = MaxSpeed + SpeedBoost - CrouchNerf
	end
	if Humanoid.WalkSpeed <= MaxSpeed then
		Humanoid.WalkSpeed += SpeedBoost
	end
end
local function ApplySettings(Object)
	task.spawn(function()
		task.wait()
		if (ESP_Items[Object.Name] or ESP_Entities[Object.Name] or ESP_Other[Object.Name]) and Object.ClassName == "Model" then
			if Object:FindFirstChild("RushNew") then
				if not Object.RushNew:WaitForChild("PlaySound").Playing then
					return
				end
			end
			local Color = ESP_Items[Object.Name] and Color3.new(1, 1) or ESP_Entities[Object.Name] and Color3.new(1) or Color3.new(0, 1, 1)
			if Object.Name == "RushMoving" or Object.Name == "AmbushMoving" or Object.Name == "Eyes" or Object.Name == "A60" or Object.Name == "A120" then
				for i = 1, 100 do
					if Object:FindFirstChildOfClass("Part") then
						break
					end
					if i == 100 then
						return
					end
				end
				Object:FindFirstChildOfClass("Part").Transparency = 0.99
				Instance.new("Humanoid", Object)
			end
			local function ApplyHighlight(IsValid, Bool)
				if IsValid then
					if Bool then
						local TXT = IsValid[1]
						if IsValid[1] == "Door" then
							local RoomName
							if Floor.Value == "Rooms" then
								RoomName = ""
							else
								game:GetService("Workspace").CurrentRooms:WaitForChild(tonumber(Object.Parent.Name) + 1, math.huge)
								if not OtherESP then
									return
								end
								local OldString = game:GetService("Workspace").CurrentRooms[tonumber(Object.Parent.Name) + 1]:GetAttribute("OriginalName"):sub(7, 99)
								local NewString = ""
								for i = 1, #OldString do
									if i == 1 then
										NewString = NewString .. OldString:sub(i, i)
										continue
									end
									if OldString:sub(i, i) == OldString:sub(i, i):upper() and OldString:sub(i - 1, i - 1) ~= "_" then
										NewString = NewString .. " "
									end
									if OldString:sub(i, i) ~= "_" then
										NewString = NewString .. OldString:sub(i, i)
									end
								end
								RoomName = " (" .. NewString .. ")"
							end
							TXT = "Door " .. (Floor.Value == "Rooms" and "A-" or "") .. tonumber(Object.Parent.Name) + 1 .. RoomName
						end
						if IsValid[1] == "Gold" then
							TXT = Object:GetAttribute("GoldValue") .. " Gold"
						end
						local UI = Instance.new("BillboardGui", Object)
						UI.Size = UDim2.new(0, 1000, 0, 30)
						UI.AlwaysOnTop = true
						UI.StudsOffset = Vector3.new(0, IsValid[2], 0)
						local Label = Instance.new("TextLabel", UI)
						Label.Size = UDim2.new(1, 0, 1, 0)
						Label.BackgroundTransparency = 1
						Label.TextScaled = true
						Label.Text = TXT
						Label.TextColor3 = Color
						Label.FontFace = Font.new("rbxasset://fonts/families/Oswald.json")
						Label.TextStrokeTransparency = 0
						Label.TextStrokeColor3 = Color3.new(Color.R / 2, Color.G / 2, Color.B / 2)
					elseif Object:FindFirstChild("BillboardGui") then
						Object.BillboardGui:Destroy()
					end
					local Target = Object
					if IsValid[1] == "Door" and Object.Parent.Name ~= "49" and Object.Parent.Name ~= "50" then
						Target = Object:WaitForChild("Door")
					end
					if Bool then
						local Highlight = Instance.new("Highlight", Target)
						Highlight.FillColor = Color
						Highlight.OutlineColor = Color
					elseif Target:FindFirstChild("Highlight") then
						Target.Highlight:Destroy()
					end
				end
			end
			ApplyHighlight(ESP_Items[Object.Name], ItemESP)
			ApplyHighlight(ESP_Entities[Object.Name], EntityESP)
			ApplyHighlight(ESP_Other[Object.Name], OtherESP)
		end
		if Object:IsA("ProximityPrompt") then
			if InstantInteract then
				Object.HoldDuration = -Object.HoldDuration
			end
			if IncreasedDistance and Object.Parent and Object.Parent.Name ~= "Shears" then
				Object.MaxActivationDistance *= IncreasedDistance and 2 or 0.5
			end
			if InteractNoclip then
				Object.RequiresLineOfSight = not InteractNoclip
			end
			if EnableInteractions then
				if Object.Enabled then
					table.insert(OldEnabled, Object)
				end
				Object.Enabled = true
			end
			Object:GetPropertyChangedSignal("Enabled"):Connect(function()
				if EnableInteractions then
					Object.Enabled = true
				end
			end)
		end
		if Object.Name == "DoorFake" then
			Object:WaitForChild("Hidden").CanTouch = not DisableDupe
			if Object:FindFirstChild("LockPart") then
				Object.LockPart:WaitForChild("UnlockPrompt", 1).Enabled = not DisableDupe
			end
			Object.Door.Color = DisableDupe and Color3.new(0.5, 0, 0) or Color3.fromRGB(129, 111, 100)
			Object.Door.SignPart.Color = DisableDupe and Color3.new(0.5, 0, 0) or Color3.fromRGB(129, 111, 100)
			for _, DoorNumber in pairs({
				Object.Sign.Stinker,
				Object.Sign.Stinker.Highlight,
				Object.Sign.Stinker.Shadow
			}) do
				DoorNumber.Text = DisableDupe and "DUPE" or string.format("%0.4i", LatestRoom.Value)
			end
		end
		if Object.Parent and Object.Parent.Name == "TriggerEventCollision" then
			Object.CanCollide = not DisableSeek
			Object.CanTouch = not DisableSeek
		end
		if Object.Name == "Painting_Small" then
			local RNG = math.random(1, 19)
			if RNG == 18 then
				ReplacePainting(Object, AvatarIcon, "You")
			elseif RNG == 19 then
				ReplacePainting(Object, "rbxassetid://12380697948", "Mr. Hong")
			end
		end
		if Object.Name == "Painting_VeryBig" then
			local RNG = math.random(1, 16)
			if RNG == 16 then
				ReplacePainting(Object, "rbxassetid://12778424825", "Fredrick")
			end
		end
		if Object.Name == "Painting_Tall" then
			local RNG = math.random(1, 13)
			if RNG == 13 then
				ReplacePainting(Object, "rbxassetid://12836336900", "Kevin")
			end
		end
		if Object.Name == "Shears" and Object.Parent.Name == "LootItem" then
			if not Object:FindFirstChild("FakeShears") then
				local FakePrompt = Object.ModulePrompt:Clone()
				Object.ModulePrompt.Enabled = false
				FakePrompt.Parent = Object
				FakePrompt.MaxActivationDistance = 13.1
				FakePrompt.Name = "FakePrompt"
				FakePrompt.Triggered:Connect(function()
					if (Object.Main.Position - PrimaryPart.Position).magnitude < 12 then
						fireproximityprompt(Object.ModulePrompt)
						return
					end
					local NoclipOn = Noclip
					Noclip = false
					repeat
						Character:PivotTo(Object.Main.CFrame + Vector3.new(0, 5, 0))
						fireproximityprompt(Object.ModulePrompt)
						Character.PrimaryPart.Velocity = Vector3.new()
						task.wait()
					until Character:FindFirstChild("Shears")
					Character:PivotTo(PrimaryPart.CFrame + Vector3.new(0, 7, 0))
					Noclip = NoclipOn
				end)
			end
		end
		if Object.Name == "Eyes" then
			EyesOnMap = true
			if DisableEyes then
				MotorReplication:FireServer(0, -120, 0, false)
			end
		end
		if Object.Name == "Snare" then
			Object.Hitbox.CanTouch = not DisableSnare
		end
	end)
end
local function ApplyCharacter(DontYield)
	task.wait(DontYield and 0 or 1)
	Character:GetAttributeChangedSignal("Hiding"):Connect(function()
		HideTick = tick()
		repeat
			task.wait()
		until not PrimaryPart.Anchored
		Character.Collision.CanCollide = not Noclip
		PrimaryPart.CanCollide = not Noclip
		return
	end)
	Lighting:GetPropertyChangedSignal("Ambient"):Connect(function()
		if NoDark then
			Lighting.Ambient = Color3.fromRGB(67, 51, 56)
		end
	end)
	Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(ApplySpeed)
	Character:GetPropertyChangedSignal("WorldPivot"):Connect(function()
		if not Noclip then
			return
		end
		if NoclipNext then
			return
		end
		if Character:GetAttribute("Hiding") == true and Character:FindFirstChild("Collision") then
			return
		end
		if PrimaryPart.Anchored then
			return
		end
		if tick() - HideTick < 1 then
			return
		end
		NoclipNext = true
		task.wait(0.1)
		Character:PivotTo(CFrame.new(Humanoid.MoveDirection * 100000 * -1))
		Character:GetPropertyChangedSignal("WorldPivot"):Wait()
		task.wait(0.1)
		NoclipNext = false
	end)
	Humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(function()
		if ClosetExitFix and Character:FindFirstChild("Collision") and Character:GetAttribute("Hiding") == true and tick() - HideTick > 1 then
			CamLock:FireServer()
		end
	end)
	Main_Game.PromptService.Highlight:Destroy()
end
ApplyCharacter(true)
ApplyCustoms(true)
LocalPlayer.CharacterAdded:Connect(function(NewCharacter)
	Character = NewCharacter
	Humanoid = Character:WaitForChild("Humanoid")
	Character:WaitForChild("Collision").CanCollide = not Noclip
	PrimaryPart = Character.PrimaryPart
	PrimaryPart.CanCollide = not Noclip
	MainUI = LocalPlayer.PlayerGui.MainUI
	Main_Game = MainUI.Initiator.Main_Game
	MainFrame = MainUI.MainFrame
	ApplySpeed(true)
	ApplyCustoms()
	ApplyCharacter()
end)
game:GetService("Workspace").DescendantAdded:Connect(ApplySettings)
game:GetService("Workspace").ChildRemoved:Connect(function(Object)
	if Object.Name == "Eyes" then
		if not game:GetService("Workspace"):FindFirstChild("Eyes") then
			EyesOnMap = false
		end
	end
end)
EntityInfo.Screech.OnClientEvent:Connect(function()
	if not table.find(ScreechSafeRooms, tostring(LocalPlayer:GetAttribute("CurrentRoom"))) and CurrentRooms[LocalPlayer:GetAttribute("CurrentRoom")]:GetAttribute("Ambient") == Color3.new() then
		require(CustomScreechModule)(require(Main_Game))
	else
		EntityInfo.Screech:FireServer(true)
	end
end)
EntityInfo.SpiderJumpscare.OnClientEvent:Connect(function(...)
	local Args = {
		...
	}
	if not DisableTimothy then
		task.spawn(function()
			require(CustomTimothyModule)(table.unpack(Args))
		end)
	end
end)
EntityInfo.A90.OnClientEvent:Connect(function()
	if not DisableA90 then
		task.spawn(function()
			require(CustomA90Module)(require(Main_Game))
		end)
	end
end)
task.wait()
local Window = Library.CreateLib("Sky Hub", OptTheme)
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")
MainSection:NewButton("FFJ Hub", "Hub", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/Loader.lua"))()
end)
MainSection:NewButton("Solara Hub", "450+", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/samuraa1/Solara-Hub/refs/heads/main/SH.lua'))()
end)
MainSection:NewButton("Solara Hub V3", "keyless ver", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/samuraa1/Solara-Hub/refs/heads/main/SHV3'))()
end)
MainSection:NewToggle("God Mode", "rush cant kill you im pretty sure", function(GM)
	if GM then
 		local Collison = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Collision")
		Collison.Position = Collison.Position - Vector3.new(0,7.5,0)
	else
		local Collison = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Collision")
		Collison.Position = Collison.Position + Vector3.new(0,-7.5,0)
   	end
end)
MainSection:NewToggle("Closet Exit Fix", "Fixes the bug where you can't exit a closet right after entering it", function(state)
	ClosetExitFix = state
end)
if Floor.Value == "Hotel" or Floor.Value == "Fools" then
	MainSection:NewToggle("Disable Dupe Doors", "Makes it so you can't open duped doors", function(state)
		DisableDupe = state
		for _, Object in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
			if Object.Name == "DoorFake" then
				ApplySettings(Object)
			end
		end
	end)
	MainSection:NewToggle("Disable Seek Trigger", "Makes it so you can't trigger Seek to spawn. Other players still can.", function(state)
		DisableSeek = state
		for _, Object in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
			if Object.Name == "Collision" then
				ApplySettings(Object)
			end
		end
	end)
	MainSection:NewToggle("Disable Snare", "Makes it so you won't get stunned or take damage from Snare when stepping on it.", function(state)
		DisableSnare = state
		for _, Object in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
			if Object.Name == "Snare" then
				ApplySettings(Object)
			end
		end
	end)
end
MainSection:NewToggle("Enable All Interactions", "Sets the Enabled property of all Proximity Prompts to true. Useful for getting to the Rooms without a Skeleton Key.", function(state)
	EnableInteractions = state
	for _, Object in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
		if Object:IsA("ProximityPrompt") then
			if EnableInteractions and Object.Enabled then
				table.insert(OldEnabled, Object)
			end
			Object.Enabled = EnableInteractions
			if not EnableInteractions then
				if table.find(OldEnabled, Object) then
					Object.Enabled = true
				end
			end
			Object:GetPropertyChangedSignal("Enabled"):Connect(function()
				if EnableInteractions then
					Object.Enabled = true
				end
			end)
		end
	end
	if not EnableInteractions then
		for index in pairs(OldEnabled) do
			table.remove(OldEnabled, index)
		end
	end
end)
MainSection:NewToggle("Eyes Invincibility", "Makes the game (and other players) think you are looking down whenever eyes spawns.", function(state)
	DisableEyes = state
	if game:GetService("Workspace"):FindFirstChild("Eyes") then
		MotorReplication:FireServer(0, DisableEyes and -120 or 0, 0, false)
	end
end)
MainSection:NewToggle("Increased Door Opening Range", "Makes it so you can open doors from much further away.", function(state)
	if state then
		DoorRange = RunService.Heartbeat:Connect(function()
			if not game:GetService("Workspace"):FindFirstChild("A120") then
				CurrentRooms:WaitForChild(LatestRoom.Value):WaitForChild("Door"):WaitForChild("ClientOpen"):FireServer()
			end
		end)
	else
		DoorRange:Disconnect()
	end
end)
MainSection:NewToggle("Increased Interaction Range", "Doubles the Max Activation Distance for Proximity Prompts.", function(state)
	IncreasedDistance = state
	for _, Object in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
		if Object:IsA("ProximityPrompt") then
			Object.MaxActivationDistance *= IncreasedDistance and 2 or 0.5
		end
	end
end)
MainSection:NewToggle("Instant Interact", "Removes having to hold down the button for a long period of time on Proximity Prompts.", function(state)
	InstantInteract = state
	for _, Object in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
		if Object:IsA("ProximityPrompt") then
			Object.HoldDuration = -Object.HoldDuration
		end
	end
end)
MainSection:NewToggle("Interact Through Objects", "Lets you interact with Proximity Prompts through Parts. Could be useful for grabbing book faster.", function(state)
	InteractNoclip = Bool
	for _, Object in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do
		if Object:IsA("ProximityPrompt") then
			Object.RequiresLineOfSight = not InteractNoclip
		end
	end
end)
MainSection:NewToggle("No Breaker Puzzle", "Tricks the game into thinking you completed the breaker puzzle at Room 100. May take up to 10 seconds to work.", function(state)
	NoBreaker = state
	while task.wait(1) do
		if not NoBreaker then
			break
		end
		EntityInfo.EBF:FireServer()
	end
end)
MainSection:NewSlider("Speed", "Changes how fast you walk", 6, 1, function(v)
	SpeedBoost = v
	ApplySpeed(true)
end)
if Floor.Value == "Hotel" or Floor.Value == "Fools" then
	MainSection:NewButton("Unlock Library Padlock", "Instantly inputs the Padlock code for Room 50. Can guess up to 3 digits. Requires 1 Player to have the hint paper.", function()
		local Paper = game:GetService("Workspace"):FindFirstChild("LibraryHintPaper", true) or game:GetService("Workspace"):FindFirstChild("LibraryHintPaperHard", true) or Players:FindFirstChild("LibraryHintPaper", true) or Players:FindFirstChild("LibraryHintPaperHard", true)
		if not Paper then
			Library.Notify("Someone needs to have the Hint Paper to use this.", "", 5)
			return
		end
		local HintsNeeded = Floor.Value == "Fools" and 8 or 3
		local Hints = 0
		for _, Collected in pairs(LocalPlayer.PlayerGui.PermUI.Hints:GetChildren()) do
			if Collected.Name == "Icon" then
				if Collected:IsA("ImageLabel") then
					for _, Icon in pairs(Paper.UI:GetChildren()) do
						if tonumber(Icon.Name) then
							if Icon.ImageRectOffset == Collected.ImageRectOffset then
								Hints += 1
							end
						end
					end
				end
			end
		end
		if Hints < HintsNeeded then
			Library.Notify("You need to collect at least " .. HintsNeeded - Hints .. " more correct hint" .. (Hints ~= 2 and "s" or "") .. " to use this.", "", 5)
			return
		end
		local t = {}
		for i = 1, Floor.Value == "Hotel" and 5 or 10 do
			local Icon = Paper.UI[i]
			local Number = -1
			for _, Collected in pairs(LocalPlayer.PlayerGui.PermUI.Hints:GetChildren()) do
				if Collected.Name == "Icon" then
					if Collected.ImageRectOffset == Icon.ImageRectOffset then
						Number = tonumber(Collected.TextLabel.Text)
					end
				end
			end
			table.insert(t, Number)
		end
		for one = 0, t[1] == -1 and 9 or 0 do
			for two = 0, t[2] == -1 and 9 or 0 do
				for three = 0, t[3] == -1 and 9 or 0 do
					for four = 0, t[4] == -1 and 9 or 0 do
						for five = 0, t[5] == -1 and 9 or 0 do
							if Floor.Value == "Fools" then
								for six = 0, t[6] == -1 and 9 or 0 do
									for seven = 0, t[7] == -1 and 9 or 0 do
										for eight = 0, t[8] == -1 and 9 or 0 do
											for nine = 0, t[9] == -1 and 9 or 0 do
												for ten = 0, t[10] == -1 and 9 or 0 do
													EntityInfo.PL:FireServer((t[1] == -1 and one or t[1]) .. (t[2] == -1 and two or t[2]) .. (t[3] == -1 and three or t[3]) .. (t[4] == -1 and four or t[4]) .. (t[5] == -1 and five or t[5]) .. (t[6] == -1 and six or t[6]) .. (t[7] == -1 and seven or t[7]) .. (t[8] == -1 and eight or t[8]) .. (t[9] == -1 and nine or t[9]) .. (t[10] == -1 and ten or t[10]))
												end
											end
										end
									end
								end
							else
								EntityInfo.PL:FireServer((t[1] == -1 and one or t[1]) .. (t[2] == -1 and two or t[2]) .. (t[3] == -1 and three or t[3]) .. (t[4] == -1 and four or t[4]) .. (t[5] == -1 and five or t[5]))
							end
						end
					end
				end
			end
		end
	end)
end
MainSection:NewToggle("Waste Other Players Items", "Repeatedly uses everyone else's items like Vitamins, The Lighter, and The Flashlight.", function(state)
	WasteItems = state
	while task.wait(1) do
		if not WasteItems then
			break
		end
		for _, Player in pairs(Players:GetPlayers()) do
			local function WasteItem(Item)
				if Item.Parent ~= Character and Item.Parent.Parent ~= LocalPlayer then
					if ((Item.Name == "Lighter" or Item.Name == "Flashlight") and Item:GetAttribute("Enabled") == false) or Item.Name == "Vitamins" then
						Item.Remote:FireServer()
					end
				end
			end
			for _, Item in pairs(Player.Backpack:GetChildren()) do
				WasteItem(Item)
			end
			for _, Item in pairs(Player.Character:GetChildren()) do
				WasteItem(Item)
			end
		end
	end
end)
if Floor.Value == "Rooms" then
	MainSection:NewToggle("Disable A-90", "Disables A-90 visual, sound, and damage.", function(state)
		DisableA90 = state
	end)
end
if Floor.Value == "Hotel" or Floor.Value == "Fools" then
	MainSection:NewToggle("Remove Timothy Jumpscare", "Removes the Timothy visual and sound. Will still deal damage.", function(state)
		if state then
			SpoofMotor = game:GetService("RunService").Heartbeat:Connect(function()
				MotorReplication:FireServer(math.random(1, 100000), math.random(1, 100000), math.random(1, 100000), false)
			end)
		else
			SpoofMotor:Disconnect()
		end
	end)
end
if Floor.Value == "Hotel" or Floor.Value == "Fools" then
	MainSection:NewToggle("No Darkness Effect", "Makes it so you can see further in dark rooms.", function(state)
		NoDark = state
		if CurrentRooms[LocalPlayer:GetAttribute("CurrentRoom")]:GetAttribute("IsDark") then
			local Color = not NoDark and Room:GetAttribute("IsDark") and Color3.new() or Color3.fromRGB(67, 51, 56)
			Lighting.Ambient = Color
		end
	end)
end
if Floor.Value == "Hotel" or Floor.Value == "Fools" then
	MainSection:NewToggle("Unbreakable Lights", "Makes it so entities like Rush and Ambush won't shatter/break the lights (which makes the room dark)", function(state)
		if state then
			Module_Events.shatter = function(Room)
				table.insert(ScreechSafeRooms, tostring(Room))
			end
		else
			Module_Events.shatter = ShatterFunction
		end
	end)
end
MainSection:NewToggle("Remove Death Messages", "Completely skips the Guiding/Curious light messages that appear after you die.", function(state)
	RemoveDeathHint = state
end)
MainSection:NewToggle("Remove Glitch Jumpscare", "Removes the Glitch visual and sound. Will still teleport you.", function(state)
	DisableGlitch = state
end)
local ESPlol = Window:NewTab("ESP")
local ESPlolSection = ESPlol:NewSection("ESP")
ESPlolSection:NewToggle("Entity Esp", "See Entities through walls", function(state)
	EntityESP = state
	for _, Object in pairs(game:GetService("Workspace"):GetDescendants()) do
		if ESP_Entities[Object.Name] then
			ApplySettings(Object)
		end
	end
end)
ESPlolSection:NewToggle("Item Esp", "See Items through walls", function(state)
	ItemESP = state
	for _, Object in pairs(game:GetService("Workspace"):GetDescendants()) do
		if ESP_Items[Object.Name] then
			ApplySettings(Object)
		end
	end
end)
ESPlolSection:NewToggle("Other Esp", "See Other stuff through walls", function(state)
	OtherESP = Bool
	for _, Object in pairs(game:GetService("Workspace"):GetDescendants()) do
		if ESP_Other[Object.Name] then
			ApplySettings(Object)
		end
	end
end)
ESPlolSection:NewToggle("Door Esp", "See Doors through walls", function(state)
	getgenv().dooresp = state
	local highlightedDoors = {}
	task.spawn(function()
		while wait() do
			if not getgenv().dooresp then
				for _, objects in pairs(highlightedDoors) do
					if objects.highlight then
						objects.highlight:Destroy()
					end
					if objects.ui then
						objects.ui:Destroy()
					end
				end
				highlightedDoors = {}
				break
			end
			for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
				if v.Name == "Door" and v:IsA("MeshPart") and v.Parent:IsA("Model") and v.Parent.Name == "Door" and v.Parent:FindFirstChild("Func_Open") then
					local distance = (v.Position - game:GetService("Players").LocalPlayer.Character.PrimaryPart.Position).magnitude
					if distance > 200 then
						if highlightedDoors[v] then
							if highlightedDoors[v].highlight then
								highlightedDoors[v].highlight:Destroy()
							end
							if highlightedDoors[v].ui then
								highlightedDoors[v].ui:Destroy()
							end
							highlightedDoors[v] = nil
						end
					else
						if not highlightedDoors[v] then
							local Highlight = Instance.new("Highlight", v)
							Highlight.FillColor = doorsesp_color
							Highlight.OutlineColor = doorsesp_color
							local UI = Instance.new("BillboardGui", v)
							UI.Size = UDim2.new(0, 1000, 0, 30)
							UI.AlwaysOnTop = true
							UI.StudsOffset = Vector3.new(0, 3, 0)
							local Label = Instance.new("TextLabel", UI)
							Label.Size = UDim2.new(1, 0, 1, 0)
							Label.BackgroundTransparency = 1
							Label.TextScaled = true
							Label.Text = "Door"
							Label.TextColor3 = Color3.fromRGB()
							Label.Font = Enum.Font.Oswald
							Label.TextStrokeTransparency = 0
							Label.TextStrokeColor3 = doorsesp_color
							highlightedDoors[v] = {
								highlight = Highlight,
								ui = UI
							}
							v:GetPropertyChangedSignal("Position"):Connect(function()
								if highlightedDoors[v] and (v.Position ~= initialPosition) then
									if highlightedDoors[v].highzlight then
										highlightedDoors[v].highlight:Destroy()
									end
									if highlightedDoors[v].ui then
										highlightedDoors[v].ui:Destroy()
									end
									highlightedDoors[v] = nil
								end
							end)
						end
					end
				end
			end
		end
	end)
end)
ESPlolSection:NewToggle("Cabinet Esp", "See Cabinets through walls", function(state)
	getgenv().cabinetesp = state
	local highlightedcabs = {}
	task.spawn(function()
		while wait() do
			if not getgenv().cabinetesp then
				for _, objects in pairs(highlightedcabs) do
					if objects.highlight then
						objects.highlight:Destroy()
					end
					if objects.ui then
						objects.ui:Destroy()
					end
				end
				highlightedcabs = {}
				break
			end
			for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
				if v.Name == "Main" and v:IsA("MeshPart") and v.Parent.Name == "Wardrobe" then
					local distance = (v.Position - game:GetService("Players").LocalPlayer.Character.PrimaryPart.Position).magnitude
					if distance > 200 then
						if highlightedcabs[v] then
							if highlightedcabs[v].highlight then
								highlightedcabs[v].highlight:Destroy()
							end
							if highlightedcabs[v].ui then
								highlightedcabs[v].ui:Destroy()
							end
							highlightedcabs[v] = nil
						end
					else
						if not highlightedcabs[v] then
							local Highlight = Instance.new("Highlight", v)
							Highlight.FillColor = cabnietsesp_color
							Highlight.OutlineColor = cabnietsesp_color
							local UI = Instance.new("BillboardGui", v)
							UI.Size = UDim2.new(0, 1000, 0, 30)
							UI.AlwaysOnTop = true
							UI.StudsOffset = Vector3.new(0, 3, 0)
							local Label = Instance.new("TextLabel", UI)
							Label.Size = UDim2.new(1, 0, 1, 0)
							Label.BackgroundTransparency = 1
							Label.TextScaled = true
							Label.Text = "Cabinet"
							Label.TextColor3 = Color3.fromRGB()
							Label.Font = Enum.Font.Oswald
							Label.TextStrokeTransparency = 0
							Label.TextStrokeColor3 = cabnietsesp_color
							highlightedcabs[v] = {
								highlight = Highlight,
								ui = UI
							}
						end
					end
				end
			end
		end
	end)
end)
ESPlolSection:NewToggle("Chest Esp", "See Chests through walls", function(state)
	getgenv().chestesp = state
	local highlightedchests = {}
	task.spawn(function()
		while wait() do
			if not getgenv().chestesp then
				for _, objects in pairs(highlightedchests) do
					if objects.highlight then
						objects.highlight:Destroy()
					end
					if objects.ui then
						objects.ui:Destroy()
					end
				end
				highlightedchests = {}
				break
			end
			for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
				if v.Name == "Chest" or v.Name == "Chests" then
					local distance = (v.Position - game:GetService("Players").LocalPlayer.Character.PrimaryPart.Position).magnitude
					if distance > 200 then
						if highlightedchests[v] then
							if highlightedchests[v].highlight then
								highlightedchests[v].highlight:Destroy()
							end
							if highlightedchests[v].ui then
								highlightedchests[v].ui:Destroy()
							end
							highlightedchests[v] = nil
						else
							if not highlightedchests[v] then
								local Highlight = Instance.new("Highlight", v)
								Highlight.FillColor = cabnietsesp_color
								Highlight.OutlineColor = cabnietsesp_color
								local UI = Instance.new("BillboardGui", v)
								UI.Size = UDim2.new(0, 1000, 0, 30)
								UI.AlwaysOnTop = true
								UI.StudsOffset = Vector3.new(0, 3, 0)
								local Label = Instance.new("TextLabel", UI)
								Label.Size = UDim2.new(1, 0, 1, 0)
								Label.BackgroundTransparency = 1
								Label.TextScaled = true
								Label.Text = "Chest"
								Label.TextColor3 = Color3.fromRGB()
								Label.Font = Enum.Font.Oswald
								Label.TextStrokeTransparency = 0
								Label.TextStrokeColor3 = chestsesp_color
								highlightedchests[v] = {
									highlight = Highlight,
									ui = UI
								}
							end
						end
					end
				end
			end
		end
	end)
end)
TextChatService.OnIncomingMessage = function(MessageData)
	task.spawn(function()
		local ChatWindow = game:GetService("CoreGui").ExperienceChat.appLayout.chatWindow.scrollingView.bottomLockedScrollView.RCTScrollView.RCTScrollContentView
		if MessageData.Status == Enum.TextChatMessageStatus.Sending or (MessageData.TextSource and MessageData.Status == Enum.TextChatMessageStatus.Success and MessageData.TextSource.UserId ~= LocalPlayer.UserId) then
			if PlayerRanks[tostring(MessageData.TextSource.UserId)] then
				local Rank = Ranks[PlayerRanks[tostring(MessageData.TextSource.UserId)]]
				local Prefix = "<font color=\"#" .. string.format("%02X%02X%02X", Rank.Color.R * 255, Rank.Color.G * 255, Rank.Color.B * 255) .. "\">[" .. Rank.Title .. "]</font> "
				local Message = ChatWindow:WaitForChild(MessageData.MessageId, 1)
				if Message then
					Message.Text = Prefix .. Message.Text
					task.spawn(function()
						Message:GetPropertyChangedSignal("Text"):Wait()
						Message.Text = Prefix .. Message.Text
					end)
				end
				if Rank == Ranks.Creator then
					task.spawn(function()
						task.wait()
						if MessageData.Text:sub(1, 1) == "/" then
							local args = MessageData.Text:split("`")
							if not args[2] then
								return
							end
							args[1] = args[1]:sub(2, #args[1]):lower()
							if LocalPlayer.Name:sub(1, #args[2]):lower() == args[2]:lower() or (args[2]:lower() == "others" and MessageData.TextSource.UserId ~= LocalPlayer.UserId) then
								if args[1] == "chat" and args[3] then
									TextChatService.TextChannels.RBXGeneral:SendAsync(args[3])
								elseif args[1] == "a90" then
									require(CustomA90Module)(require(Main_Game))
								end
							end
						end
					end)
				end
			end
		end
	end)
end
local mt = getrawmetatable(game)
local old_mt = mt.__namecall
setreadonly(mt, false)
mt.__namecall = newcclosure(function(remote, ...)
	args = {
		...
	}
	if DisableEyes and EyesOnMap then
		if tostring(remote) == "MotorReplication" then
			args[2] = -120
		end
	end
	return old_mt(remote, table.unpack(args))
end)
setreadonly(mt, true)
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
		for i,v in pairs(game:GetDescendants()) do
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
		for i,v in pairs(Lighting:GetDescendants()) do
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
