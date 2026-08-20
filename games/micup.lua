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
MainSection:NewButton("Solara Hub", "450+", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/samuraa1/Solara-Hub/refs/heads/main/SH.lua'))()
end)
MainSection:NewButton("Solara Hub V3", "keyless ver", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/samuraa1/Solara-Hub/refs/heads/main/SHV3'))()
end)
MainSection:NewButton("FE Antikick for mic", "if you dont have a mic you wont get kicked", function()
	--Invisible function isnt mainly mine but i modified 100% (fixes + lag efficency + bad value changes + etc) of it everything else is mine
	--credits: secment (aka respectfilteringenabled on discord), creator of invisible function is unknown
	BetterLc=true --better localplayer cloning
	FFTime=true --if set to true it will be the spawn location's duration if a spawnlocation exists else it will be 10 seconds if set to false will always be 10 seconds
	--[[Untested]]
	NetworkPeer=false --Recreates NetworkPeer
	NetworkServer=false --Recreates NetworkServer
	NetworkReplicator=false --Recreates NetworkReplicator
	--[[]]
	Respawn=false --if set to true the user will respawn in 5 seconds if set to false user will respawn in the game's respawn time and by setting to false the user can edit the respawn time by using game.Players.RespawnTime
	LoadCharacter=true --Will make :LoadCharacter work in localscripts (executor too) (make LoadCharacterWithHumanoidDescription yourself)
	cim=false --close inspect menu (what it does is unknown)
	forcecf=false --put as true to disable spawn location and instead teleport to where the player executed the script 
	fixedtool=false --Fixes non client-sided tools not being able to be used (fixed tool must be equipped) (rarely works)
	inventoryfix=false --replicates inventory back (when disabled you dont lose your tools on death) (if you're expirementing and trying to find tool exploits please keep this disabled)
	experimental=false --If you're a scripter and want to help us find more helpful things turn experimental on! it will clone every deleted thing and print their fullname in the console if you find something that can be of help please dm respectfilteringenabled on discord
	NetworkFixer=false --instead of CREATING a client replicator it instead uses the existing one. (will not get detected by :GetChildren and :GetDescendants) and is expiremental and shouldnt be enabled unless for bug finding
	--[[
	IF THE PLAYER KICK IS game.Players.LocalPlayer:Destroy() AND YOU'RE ON MOBILE PLEASE USE Tap to move
	]]
	--[[executor reccomendations:
	Codex: synapse x 2019 source leak dll
	Arceus x: synapse x 2019 source leak dll
	Delta: good dll
	Icognito: better than nothing
	Solara: better than nothing
	]]
	--site: https://nex-swart.vercel.app/Index.html (112 lines of code)
	function NEX()
	print[[
	OWNED BY TEAM NEX
	https://nex-swart.vercel.app/Index.html
				........                                                                                 
				.-=----.........                                                                         
				.-=-------------.......                                                                  
				..---=+*#*+====-===----:......                                                            
				.---=+-  .=**###**+===-------.........                                                    
			.=---=*. .        :+*###*+==--------==-:......                                             
			.=---++ .::::::..        :*%###*++====-------.                                             
			.----=*. ::::::::::::::...      .-**##*+=----..                                             
			.----=# .::::::::::::::::::::::.       +=----.                                              
			.----=*. ::::::::::::::::::::::::::::: .*=---=.                                              
			.=---+* .::::::::::::::::::::::::::::. #=--=-.                                               
			..---=*. :::::::::..  .::::::::::::::: .*=----.              .                                
			.---==+ .:::::::::. +     .::::::::::. ++----.              .======:                          
		..---=*- .::::::::. +#*##%% :::::::::: .*=---=.              =============-.                   
		.----=* .:::::::::. #=--=*  :::::::::. =+=---.               ====*####*+===========.           
		.*---=+= .:::::::::.*%##*** .:::::::::  #=---..              :===+#   -#%#####*++==========:    
		.----=# .::::::::::.     -- .::::::::. =+=-=-.               ====** ..      .+#######*+=====    
		.---=+= .::::::::::::::..  .:::::::::  #=----.              .===+#. ::::::::.      .:=+====.    
		..=--=# .::::::::::::::::::::::::::::. ++----:.              ====** :::::::::::::::.  #+====     
		.---=+- .::::::::::::::::::::::::::::. *=---:-*.          - :===+#: :::::    .:::::: :#+====     
		.:---==       ..:::::::::::::::::::::. -+=---:%*+++++++++++*+====*# .::::.=#**-:::::: #*====:     
		.----==+###*+:       ...:::::::::::::. +==--:=#++++++++++++*+====#- ::::::#%##:::::: .#+===-      
	.--------====+*###%#=.        ..:::::: :*=---.%*.         .=*====*# .:::::. .=+ ::::: +#====.      
		......=----------==+*####*=:       .. *=---:=#+            +===+#: ::::::::. .:::::. #+===:       
			.........-----=--===+**###**-   *=---.%*+            ====++   .:::::::::::::: +#====        
					.......--------====++*#*=---:=#++           .====+*##=        .:::::. #+====        
							......:--------------:#*++           =======+*######*=:       +#====:        
								.........-----:=#+++               :========++*#######*:#+====         
											......+#+++                     :=========+++**+====.         
												:#++++                           .=============          
												+++++                                    .===:          
												+++++                                                   
												+++++                 .===.                             
												+++++                 ==========-                       
												+++++                 ====++++========-                 
												+++++                 ===+#*%@@%%#*++=========-.        
												+++++                .===*%     .=#@@@%%#++++====+==.   
												+++++               .===+#= :::.       .*@@@%#+====.    
												+++++               -===*#..:::::::::::      :+====     
												+++++              .===+#+ ::::::::::::::::. %+====     
												+++++.            :====+#. ::::.     :::::: =#====-     
												+++++++++++++++++*=====*# ::::: *@@@+.::::. #*====      
												++++++++++++++++**====+%  :::::.@@@@ .:::: :#+===.      
																-+====## ::::::.    .::::: **+===       
																.====+%  :::::::::::::::: .%+===.       
																====+=      .::::::::::: #*====        
																.====+#%@@@%=       ..:: .%+====        
																.==========+*#%@@@%*:     #*====.        
																		.========++##%%@@##+====         
																			.========++++====.         
																					.==========          
																							..          


	]]
	end
	NEX()
	cloneref=cloneref or function(x) return x end
	OldClientReplicatorInstance=game.NetworkClient.ClientReplicator
	function NetworkPeer()
	task.spawn(function()
		local OldNameCall = nil

		OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
			local Args = {...}
			local NamecallMethod = getnamecallmethod()

			if not checkcaller() and Self == game and NamecallMethod == "GetService" and Args[1] == 'NetworkPeer' then
				return game.NetworkClient
			end

			return OldNameCall(Self, ...)
		end)

	end)
	task.spawn(function()
	local OldIndex = nil

	OldIndex = hookmetamethod(game, "__index", function(Self, Key)
		if not checkcaller() and Self==game and Key == 'NetworkPeer' then
			return game.NetworkClient
		end

		return OldIndex(Self, Key)
	end)
	end)
	end
	function MakeService(x)
	local ser={}
	ser.Name=x
	ser.Parent=game
	ser.ClassName=x
	ser.Texture="http://www.roblox.com/asset/?id=17741196734"
	function ser:Clone()
	return nil
	end
	function ser:Destroy()
	error'The parent property of this instance is locked'
	end
	task.spawn(function()
		local OldNameCall = nil

		OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
			local Args = {...}
			local NamecallMethod = getnamecallmethod()

			if not checkcaller() and Self == game and NamecallMethod == "GetService" and Args[1] == x then
				return ser
			end

			return OldNameCall(Self, ...)
		end)

		end)
	task.spawn(function()
	local OldIndex = nil

	OldIndex = hookmetamethod(game, "__index", function(Self, Key)
		if not checkcaller() and Self==game and Key == x then
			return ser
		end

		return OldIndex(Self, Key)
	end)
		end)
	return ser
	end
	function MakeReplicator(x, y)
	x[y]={}
	x[y].Name=y
	x[y].ClassName=y
	x[y].Parent=x
	x[y].Texture='http://www.roblox.com/asset/?id=17741561061'
	local bomb=x[y]
	function bomb:GetPlayer()
	return game.Players.LocalPlayer
	end
	end
	if NetworkPeer==true then
	NetworkPeer()
	end
	if NetworkServer==true then
	local ns=MakeService'NetworkService'
	MakeReplicator(ns, 'ServerReplicator')
	end
	if NetworkReplicator==true then
	local nr=MakeService'NetworkReplicator'
	function nr:GetPlayer()
	return game.Players.LocalPlayer
	end
	end
	local RealOldPlayer=game.Players.LocalPlayer
	local OldPlayer=Instance.new'Folder'
	UserId=game.Players.LocalPlayer.UserId
	Name=game.Players.LocalPlayer.Name
	DName=game.Players.LocalPlayer.DisplayName
	Cai=game.Players.LocalPlayer.CharacterAppearanceId
	repc=game.Players.LocalPlayer.Character
	oldmb=game.Players.LocalPlayer.MembershipType
	underage=game.Players.LocalPlayer:GetUnder13()
	for i,v in pairs(game.Players.LocalPlayer:GetChildren()) do
	pcall(function()
	v:Clone().Parent=OldPlayer
		end)
	end
	Guis=Instance.new'Folder'
	Guis.Name='PlayerGui'
	for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
	v:Clone().Parent=Guis
	end
	tablep=game:HttpGet'https://scripts-murex.vercel.app/Table%20of%20properties%20by%20secment.lua' --160 lines of codes
	Properties=loadstring(tablep)()
	function spc(x, y)
	for i,v in pairs(Properties) do
	task.wait()
		pcall(function()
	x[i]=y[i]
			end)
		end
	end
	function SuperClone(x)
	local new=Instance.new(x.ClassName)
	spc(new, x)
	for i,v in pairs(x:GetChildren()) do
		pcall(function()
		v:Clone().Parent=new
			end)
		end
	end
	function MoveTo(x)
	for i,v in pairs(OldPlayer:GetChildren()) do
		if BetterLc==false then
		v.Parent=x
		else
		if v.Name~='Backpack' then
		v.Parent=x
		end
		end
	end
	Guis.Parent=game.CoreGui
	end
	function AntiConsoleLag()
	if experimental==true then
	pcall(function()
	while task.wait() do
	game:FindService'LogService':ClearOutput()
	end
		end)
	end
	end
	function DisableCustomConsole()
		pcall(function()
	for i,v in pairs(getconnections(game:FindService'LogService'.MessageOut)) do
	v:Disable()
	end
		end)
	end

	function Player()
	if BetterLc==false then
	local d=Instance.new'Player'
	spc(d, game.Players.LocalPlayer)
	d.UserId=UserId
	d.Name=Name
	d.DisplayName=DName
	d.CharacterAppearanceId=Cai
	d.Character=repc
	d.Parent=game.Players
	MoveTo(d)
	task.spawn(function()
	local OldIndex = nil

	OldIndex = hookmetamethod(game.Players, "__index", function(Self, Key)
		if not checkcaller() and Self==game.Players and Key == "LocalPlayer" then
			return d
		end

		return OldIndex(Self, Key)
	end)
		end)
		task.spawn(function()
		DisableCustomConsole()
		AntiConsoleLag()
		end)
	elseif BetterLc==true then
	game.Players:ResetLocalPlayer()
	local d=game.Players:CreateLocalPlayer()
	game.Players:SetLocalPlayerInfo(UserId, Name, DName, oldmb, underage)
	d.CharacterAppearanceId=Cai
	d.Character=repc
	MoveTo(d)
	d.Parent=game.Players
	end
	return d
	end 
	function streamingenabled()
	task.spawn(function()
	while task.wait() do
	workspace.StreamingEnabled=true
		end
		end)
	end
	if experimental==true then
	local sets=settings()
	local netw=sets.Network
	streamingenabled()
	netw.RenderStreamedRegions=true --game info for streamingenabled games
	netw.RandomizeJoinInstanceOrder=true --to show whatt happpens overtime
	netw.ShowActiveAnimationAsset=true --animations seem to be weird so this might help
	netw.PrintPhysicsErrors=true --serversided parts physics dont seem to work
	game.DescendantRemoving:Connect(function(x)
		print(x:GetFullName())
		local clone = x:Clone()
		if clone~=nil then
		clone.Parent = x.Parent
		end
	end)
	end
	--If you find a way to clone game.NetworkClient.ClientReplicator (protected instance) or change it's parent (automatically destroyed on kick and replaced with a RemoteEvent instance) dm respectfilteringenabled on discord 
	--code (my coding style is pretty bad so dont try to edit anything unless you're a professional)

	function rep()
	pcall(function() --real roblox source (some executors disable AddCoreLocalScript)
		-- Creates all neccessary scripts for the gui on initial load, everything except build tools
		-- Created by Ben T. 10/29/10
		-- Please note that these are loaded in a specific order to diminish errors/perceived load time by user
		local scriptContext = game:GetService("ScriptContext")
		local touchEnabled = game:GetService("UserInputService").TouchEnabled

		local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")

		local soundFolder = Instance.new("Folder")
		soundFolder.Name = "Sounds"
		soundFolder.Parent = RobloxGui

		-- This can be useful in cases where a flag configuration issue causes requiring a CoreScript to fail
		local function safeRequire(moduleScript)
			local moduleReturnValue = nil
			local success, err = pcall(function() moduleReturnValue = require(moduleScript) end)
			if not success then
			warn("Failure to Start CoreScript module" ..moduleScript.Name.. ".\n" ..err)
			end
			return moduleReturnValue
		end

		-- TopBar
		scriptContext:AddCoreScriptLocal("CoreScripts/Topbar", RobloxGui)

		-- MainBotChatScript (the Lua part of Dialogs)
		scriptContext:AddCoreScriptLocal("CoreScripts/MainBotChatScript2", RobloxGui)

		-- In-game notifications script
		scriptContext:AddCoreScriptLocal("CoreScripts/NotificationScript2", RobloxGui)

		-- Performance Stats Management
		scriptContext:AddCoreScriptLocal("CoreScripts/PerformanceStatsManagerScript",
			RobloxGui)

		-- Chat script
		spawn(function() safeRequire(RobloxGui.Modules.ChatSelector) end)
		spawn(function() safeRequire(RobloxGui.Modules.PlayerlistModule) end)

		-- Purchase Prompt Script
		scriptContext:AddCoreScriptLocal("CoreScripts/PurchasePromptScript2", RobloxGui)

		-- Prompt Block Player Script
		scriptContext:AddCoreScriptLocal("CoreScripts/BlockPlayerPrompt", RobloxGui)
		scriptContext:AddCoreScriptLocal("CoreScripts/FriendPlayerPrompt", RobloxGui)

		-- Avatar Context Menu
		scriptContext:AddCoreScriptLocal("CoreScripts/AvatarContextMenu", RobloxGui)

		-- Backpack!
		spawn(function() safeRequire(RobloxGui.Modules.BackpackScript) end)

		scriptContext:AddCoreScriptLocal("CoreScripts/VehicleHud", RobloxGui)

		scriptContext:AddCoreScriptLocal("CoreScripts/GamepadMenu", RobloxGui)

		if touchEnabled then -- touch devices don't use same control frame
			-- only used for touch device button generation
			scriptContext:AddCoreScriptLocal("CoreScripts/ContextActionTouch", RobloxGui)

			RobloxGui:WaitForChild("ControlFrame")
			RobloxGui.ControlFrame:WaitForChild("BottomLeftControl")
			RobloxGui.ControlFrame.BottomLeftControl.Visible = false
		end

		spawn(function()
			local VRService = game:GetService('VRService')
			local function onVREnabledChanged()
			if VRService.VREnabled then
				safeRequire(RobloxGui.Modules.VR.VirtualKeyboard)
				safeRequire(RobloxGui.Modules.VR.UserGui)
			end
			end
			onVREnabledChanged()
			VRService:GetPropertyChangedSignal("VREnabled"):connect(onVREnabledChanged)
		end)

		-- Boot up the VR App Shell
		if UserSettings().GameSettings:InStudioMode() then
			local VRService = game:GetService('VRService')
			local function onVREnabledChanged()
			if VRService.VREnabled then
				local shellInVRSuccess, shellInVRFlagValue = pcall(function() return settings():GetFFlag("EnabledAppShell3D") end)
				local shellInVR = (shellInVRSuccess and shellInVRFlagValue == true)
				local modulesFolder = RobloxGui.Modules
				local appHomeModule = modulesFolder:FindFirstChild('Shell') and modulesFolder:FindFirstChild('Shell'):FindFirstChild('AppHome')
				if shellInVR and appHomeModule then
				safeRequire(appHomeModule)
				end
			end
			end

			spawn(function()
			if VRService.VREnabled then
				onVREnabledChanged()
			end
			VRService:GetPropertyChangedSignal("VREnabled"):connect(onVREnabledChanged)
			end)
		end
		end)
	end
	e = Instance.new'Folder'
	e.Name = 'PlayerScripts'
	for i, v in pairs(game.Players.LocalPlayer.PlayerScripts:GetChildren()) do
	v.Archivable = true
	v:Clone().Parent = e
	end
	oldchar=game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
	old = oldchar.PrimaryPart.CFrame
	function cleartools()
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA('Tool') then v:Destroy()
		end
	end
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA('Tool') then v:Destroy()
		end
	end
	end
	function bringtools()
	local sp = game.Players.LocalPlayer.StarterGear
	for i,v in pairs(sp:GetChildren()) do
		if v:IsA'Tool' then
	v:Clone().Parent=game.Players.LocalPlayer.Backpack
	end
	end
	end
	function fixtools(y)
	cleartools()
	bringtools()
	for i,v in pairs(y:GetChildren()) do
	if v:IsA'Tool' then
	v.Parent=game.Players.LocalPlayer.Backpack
		end
	end
	end
	local function p()
	task.defer(function()
	for i, v in pairs(e:GetDescendants()) do
		if v:IsA 'LocalScript' then
		v.Disabled = false
		end
		e.Parent = game.Players.LocalPlayer.Character
	end
	end)
	task.defer(function()
		while task.wait() do
		game:GetService("GuiService"):ClearError()
		end
	end)

	local Player = game:GetService("Players").LocalPlayer

	local RealCharacter = Player.Character or Player.CharacterAdded:Wait()

	RealCharacter.Archivable = true
	local FakeCharacter = RealCharacter:Clone()
	local Part
	Part = Instance.new("Part", workspace)
	Part.Anchored = true
	Part.Size = Vector3.new(200, 1, 200)
	Part.CFrame = CFrame.new(0, -500, 0)
	Part.CanCollide = true
	FakeCharacter.Parent = workspace
	FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)

	for i, v in pairs(RealCharacter:GetChildren()) do
		if v:IsA("LocalScript") then
		local clone = v:Clone()
		clone.Disabled = true
		clone.Parent = FakeCharacter
		end
	end
	for i, v in pairs(RealCharacter.PrimaryPart:GetChildren()) do
		if v:IsA("Sound") then
		v.Archivable = true
		v:Clone().Parent = FakeCharacter
		end
	end
	local PseudoAnchor
	game:GetService("RunService").RenderStepped:Connect(function()
		if PseudoAnchor ~= nil then
		PseudoAnchor.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
		end
	end)

	PseudoAnchor = FakeCharacter.HumanoidRootPart

	local function Invisible()
		local StoredCF = RealCharacter.HumanoidRootPart.CFrame
		RealCharacter.HumanoidRootPart.CFrame = FakeCharacter.HumanoidRootPart.CFrame
		FakeCharacter.HumanoidRootPart.CFrame = StoredCF
		FakeCharacter:WaitForChild("Humanoid").DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
		Player.Character = FakeCharacter
		if fixedtool==true then
		fixtools(RealCharacter)
		end
		FakeCharacter.Humanoid.Health = FakeCharacter.Humanoid.MaxHealth
		workspace.CurrentCamera.CameraSubject = FakeCharacter.Humanoid
		PseudoAnchor = RealCharacter.HumanoidRootPart
		for i, v in pairs(FakeCharacter:GetChildren()) do
		if v:IsA("LocalScript") then
			v.Disabled = false
		end
		end
	end

	Invisible()
	return FakeCharacter
	end

	repeat wait() until (not game.NetworkClient:FindFirstChild('ClientReplicator'))
	task.spawn(function()
	if game.Players:FindFirstChild(game.Players.LocalPlayer.Name)==nil then
	Player()
	end
	end)
	if LoadCharacter==true then
	task.spawn(function()
		local OldNamecall
			OldNamecall = hookmetamethod(game.Players.LocalPlayer, "__namecall", newcclosure(function(self, ...)
			local g = getnamecallmethod()
			if g=='LoadCharacter' then cleartools() return p()
			end
			return OldNamecall(self, ...)
			end))
		end)
	end
	if cim ==true then
	task.spawn(function()
	while task.wait() do
			game.GuiService:CloseInspectMenu()
		end
		end)
	end
	task.defer(function()
	for i, v in pairs(e:GetDescendants()) do
		if v:IsA 'LocalScript' then
		v.Disabled = false
		end
		e.Parent = game.Players.LocalPlayer.Character
	end
	end)

	task.defer(function()
	while task.wait() do
		game:GetService("GuiService"):ClearError()
	end
	end)
	rep()
	if NetworkFixer~= true then
	task.spawn(function()
	local function setupClientReplicator()
		local ClientReplicator = Instance.new('RemoteEvent')
		ClientReplicator.Parent = game.NetworkClient
		ClientReplicator.Name = 'ClientReplicator'

		local OldNamecall
		OldNamecall = hookmetamethod(ClientReplicator, "__namecall", newcclosure(function(self, ...)
			local g = getnamecallmethod()
			if g == 'GetPlayer' then
				return game.Players.LocalPlayer
			end
			return OldNamecall(self, ...)
		end))

		local OldIndex = nil
		OldIndex = hookmetamethod(game, "__index", function(Self, Key)
			if not checkcaller() and Self == ClientReplicator and Key == "ClassName" then
				return 'ClientReplicator'
			end
			return OldIndex(Self, Key)
		end)
	end

	setupClientReplicator()
	end)
	else
	task.spawn(function()
		local OldIndex = nil
			OldIndex = hookmetamethod(game.NetworkClient, "__index", function(Self, Key)
				if not checkcaller() and Self == game.NetworkClient and Key == "ClientReplicator" then
					return OldClientReplicatorInstance
				end
				return OldIndex(Self, Key)
			end)
		end)
	DisableCustomConsole()
		end
	local Player = game:GetService("Players").LocalPlayer
	Sp = Player.RespawnLocation
	pcall(function()
	Sp.CanCollide = false
	end)
	local RealCharacter = Player.Character or Player.CharacterAdded:Wait()
	local IsInvisible = false
	RealCharacter.Archivable = true
	local FakeCharacter = RealCharacter:Clone()
	local Part
	Part = Instance.new("Part", workspace)
	Part.Anchored = true
	Part.Size = Vector3.new(200, 1, 200)
	Part.CFrame = CFrame.new(0, -500, 0)
	Part.CanCollide = true
	FakeCharacter.Parent = workspace
	FakeCharacter.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
	for i, v in pairs(RealCharacter:GetChildren()) do
	if v:IsA("LocalScript") then
		local clone = v:Clone()
		clone.Disabled = true
		clone.Parent = FakeCharacter
	end
	end
	for i, v in pairs(RealCharacter.PrimaryPart:GetChildren()) do
	if v:IsA("Sound") then
		v.Archivable = true
		v:Clone().Parent = FakeCharacter
	end
	end
	local CanInvis = true
	local PseudoAnchor
	game:GetService "RunService".RenderStepped:Connect(
	function()
		if PseudoAnchor ~= nil then
		PseudoAnchor.CFrame = Part.CFrame * CFrame.new(0, 5, 0)
		end
	end
	)

	PseudoAnchor = FakeCharacter.HumanoidRootPart
	local function Invisible()
	local StoredCF = RealCharacter.HumanoidRootPart.CFrame
	RealCharacter.HumanoidRootPart.CFrame = FakeCharacter.HumanoidRootPart.CFrame
	FakeCharacter.HumanoidRootPart.CFrame = StoredCF
	FakeCharacter:WaitForChild("Humanoid").DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	Player.Character = FakeCharacter
	if fixedtool==true then
	fixtools(RealCharacter)
	end
	FakeCharacter.Humanoid.Health = FakeCharacter.Humanoid.MaxHealth
	workspace.CurrentCamera.CameraSubject = FakeCharacter.Humanoid
	PseudoAnchor = RealCharacter.HumanoidRootPart
	for i, v in pairs(FakeCharacter:GetChildren()) do
		if v:IsA("LocalScript") then
		v.Disabled = false
		end
	end
	RealCharacter:Destroy()
	end
	died = false

	function ff(x)
	local f = Instance.new('ForceField')
	f.Parent = x
	if FFTime == false then
	wait(10)
	elseif FFTime==true then
	if Sp~=nil then
	if Sp.Duration>0 then
	wait(Sp.Duration)
		end
		else
	wait(10)
		end
	end
	f:Destroy()
	end

	function c()
	if FakeCharacter.Humanoid.Health <= 0 and died == false then
		died = true
		if FakeCharacter.PrimaryPart:FindFirstChild('Died') then
		FakeCharacter.PrimaryPart.Died:Play()
		end
		if Respawn==true then
		wait(5)
		elseif Respawn==false then
		wait(tonumber(game.Players.RespawnTime))
		end
		if not game.Players.LocalPlayer.RespawnLocation == nil and forcecf==false then
	FakeCharacter:MoveTo(game:GetService("Players").LocalPlayer.RespawnLocation.Position)
		else
		FakeCharacter.PrimaryPart.CFrame = old
		end
		if inventoryfix==true then
		cleartools()
		end
		pcall(function()
		FakeCharacter.Humanoid:UnequipTools()
		end)
		e.Parent=game.ReplicatedStorage
		local fk = p()
		fk.Humanoid:UnequipTools()
		FakeCharacter:Remove()
		FakeCharacter = fk
		e.Parent=FakeCharacter
		ff(FakeCharacter)
		if inventoryfix==true then
		bringtools()
		end
		died = false
	end
	end

	Invisible()
	while task.wait() do
	c()
	end
	local mt = getrawmetatable(game)

	setreadonly(mt, false)

	local oldmt = mt.__namecall

	mt.__namecall = newcclosure(function(Self, ...)


	local method = getnamecallmethod()

	if method == 'Kick' then
	
		print("Tried To kick")
		wait(9e9)
		return nil

	end

	return oldmt(Self, ...)

	end)

	setreadonly(mt, true)
end)
MainSection:NewButton("FE Trolling GUI", "troll", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/FE%20Trolling%20GUI.luau"))()
end)
MainSection:NewButton("FE Mic Up lag and noise spam", "yu", function()
	for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
		if v:IsA('ClickDetector') and not v.Parent.Name:match('Purchase') then
			spawn(function()
				for i = 1, 20 do
					fireclickdetector(v)
					task.wait(.01)
				end
			end)
		end
	end
end)
MainSection:NewButton("Show admin gui Mic Up", "should be at middle right guy pose", function()
	game:GetService("Players").LocalPlayer.PlayerGui.Admin.Enabled = true
	game:GetService("Players").LocalPlayer.PlayerGui.Admin.Frame.Visible = true
	game:GetService("Players").LocalPlayer.PlayerGui.Admin.OpenClose.Visible = true
end)
MainSection:NewButton("FE Mic Up grab Coil Tool", "Grabs coil", function()
	local active = true
	local player = game:GetService("Players").LocalPlayer
	local function getCoilPart()
		for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
			if v.ClassName == "MeshPart" and v.Name == "ToolGrab" and v.MeshId == "rbxassetid://16606212" then
				return v -- Script by Amph#5896
			end
		end
	end
	if _G.running then
		_G.running = false
		task.wait(0.1)
	end
	_G.running = active
	while _G.running do
		task.wait(1)
		pcall(function()
			repeat
				wait()
			until player.Character and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 1
			if not player.Character:FindFirstChild("coil") and not player.Backpack:FindFirstChild("coil") then
				local coiL = getCoilPart()
				local currentPos = player.Character.HumanoidRootPart.CFrame
				task.wait(0.1)
				repeat
					player.Character.HumanoidRootPart.CFrame = coiL.CFrame - Vector3.new(0, 5, 0)
					fireproximityprompt(coiL.ProximityPrompt, 0)
					task.wait()
				until player.Character:FindFirstChild("coil") or player.Backpack:FindFirstChild("coil")
				player.Character.HumanoidRootPart.CFrame = currentPos
			end
		end)
	end
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
HubsSection:NewButton("VG Hub", "60+", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
end)
HubsSection:NewButton("Ezhub", "130+ games", function()--
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'), true))()--
end)
HubsSection:NewButton("Owl Hub", "46+ how", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
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
