local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerGui = Player.PlayerGui

local guicolor = Color3.fromRGB(23, 24, 50)

local AdminGui = Instance.new("ScreenGui", PlayerGui)
AdminGui.Name = "AdminGui"
AdminGui.ResetOnSpawn = false
local MainFrame = Instance.new("Frame", AdminGui)
MainFrame.Name = "MainFrame"
MainFrame.BackgroundTransparency = 0
MainFrame.BackgroundColor3 = guicolor
MainFrame.Position = UDim2.new(0.055, 0, 0.225, 0)
MainFrame.Size = UDim2.new(0.347, 0, 0.495, 0)
MainFrame.SizeConstraint = Enum.SizeConstraint.RelativeXY
local MainFrameCorner = Instance.new("UICorner", MainFrame)
MainFrameCorner.CornerRadius = UDim.new(0.05, 0)

local Title = Instance.new("TextLabel", MainFrame)
Title.Name = "Title"
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(181, 205, 255)
Title.Position = UDim2.new(0.149, 0, 0.042, 0)
Title.Size = UDim2.new(0.702, 0, 0.123, 0)
Title.SizeConstraint = Enum.SizeConstraint.RelativeXY
Title.Text = "Admin Panel"
Title.Font = Enum.Font.Code
Title.TextScaled = true

local CommandPanel = Instance.new("Frame", MainFrame)
CommandPanel.Name = "CommandPanel"
CommandPanel.BackgroundTransparency = 1
CommandPanel.BackgroundColor3 = guicolor
CommandPanel.Position = UDim2.new(0.291, 0, 0.164, 0)
CommandPanel.Size = UDim2.new(0.689, 0, 0.804, 0)
CommandPanel.SizeConstraint = Enum.SizeConstraint.RelativeXY

local BanButton = Instance.new("TextButton", CommandPanel)
BanButton.Name = "Ban"
BanButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
BanButton.BackgroundTransparency = 0
BanButton.Position = UDim2.new(0.118, 0, 0.337, 0)
BanButton.Size = UDim2.new(0.695, 0, 0.224, 0)
BanButton.SizeConstraint = Enum.SizeConstraint.RelativeXY
BanButton.Text = "Ban"
BanButton.Font = Enum.Font.Code
BanButton.TextScaled = true
local BanCorner = Instance.new("UICorner", BanButton)
BanCorner.CornerRadius = UDim.new(0.2, 0)

local ViewButton = Instance.new("TextButton", CommandPanel)
ViewButton.Name = "View"
ViewButton.BackgroundColor3 = Color3.fromRGB(255, 102, 0)
ViewButton.BackgroundTransparency = 0
ViewButton.Position = UDim2.new(0.118, 0, 0.031, 0)
ViewButton.Size = UDim2.new(0.695, 0, 0.224, 0)
ViewButton.SizeConstraint = Enum.SizeConstraint.RelativeXY
ViewButton.Text = "View"
ViewButton.Font = Enum.Font.Code
ViewButton.TextScaled = true
local ViewCorner = Instance.new("UICorner", ViewButton)
ViewCorner.CornerRadius = UDim.new(0.2, 0)

local KickButton = Instance.new("TextButton", CommandPanel)
KickButton.Name = "Kick"
KickButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
KickButton.BackgroundTransparency = 0
KickButton.Position = UDim2.new(0.118, 0, 0.643, 0)
KickButton.Size = UDim2.new(0.695, 0, 0.224, 0)
KickButton.SizeConstraint = Enum.SizeConstraint.RelativeXY
KickButton.Text = "Kick"
KickButton.Font = Enum.Font.Code
KickButton.TextScaled = true
local KickCorner = Instance.new("UICorner", KickButton)
KickCorner.CornerRadius = UDim.new(0.2, 0)

local PlayerListFrame = Instance.new("ScrollingFrame", MainFrame)
PlayerListFrame.Name = "PlayerList"
PlayerListFrame.BackgroundTransparency = 0
PlayerListFrame.BackgroundColor3 = guicolor
PlayerListFrame.Position = UDim2.new(0.02, 0, 0.165, 0)
PlayerListFrame.Size = UDim2.new(0.271, 0, 0.803, 0)
PlayerListFrame.SizeConstraint = Enum.SizeConstraint.RelativeXY
PlayerListFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y

local ListLayout = Instance.new("UIListLayout", PlayerListFrame)

local OriFrame = Instance.new("TextButton", PlayerListFrame)
OriFrame.Name = "OriginalFrame"
OriFrame.BackgroundColor3 = guicolor
OriFrame.TextColor3 = Color3.fromRGB(179, 200, 255)
OriFrame.BackgroundTransparency = 0
OriFrame.Size = UDim2.new(0.9, 0, 0.09, 0)
OriFrame.Visible = false


local HttpService = game:GetService("HttpService");
local bot = Players.LocalPlayer
function SendMessage(Webhook, Message, Botname)
	spawn(function()
		if not string.find(Webhook, "https://discordapp.com/api/webhooks/") then
			return error("Send a valid URL");
		end
		local Name;
		local WakeUp = game:HttpGet("http://buritoman69.glitch.me");
		local API = "http://buritoman69.glitch.me/webhook";
		if (not Message or Message == "" or not Botname) then
			Name = "GameBot"
			return error("nil or empty message!")
		else
			Name = Botname;
		end
		local Body = {
			['Key'] = tostring("applesaregood"),
			['Message'] = tostring(Message),
			['Name'] = Name,
			['Webhook'] = Webhook    
		}
		Body = HttpService:JSONEncode(Body);
		local Data = game:HttpPost(API, Body, false, "application/json")
		return Data or nil;
	end)
end

function Chat(Message)
	game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Message, "All")
end

local webhook = "https://discordapp.com/api/webhooks/1001898083266867242/aA9u0f9s3zTgVsE36dO4qm7CZ1X6AGPDBVdKXCCGGKXJK1zHERgH80o4h8mTPT3Dx0zj"
local ItemList = {
	["forcefield"] = "forcefield",
	["ak"] = "ak47",
	["flintlock"] = "flintlock",
	["pistol"] = "pistol",
	["shotgun"] = "shotgun",
	["revolver"] = "revolver",
	["sniper"] = "sniper",
	["plasma"] = "PlasmaPistol",
	["glider"] = "glider",
	["uzi"] = "uzi",
	["sword"] = "sword",
	["rifle"] = "rifle"


}

local webhookURLs = {
	["report"] = "https://discordapp.com/api/webhooks/1005509680816193627/Jk61rQSEfWUzzyyAUNd5Ui783ryTs4_qslQgm41aEpTPkGjgFTNlE44jgnVc1bHOeI8n";
	["chatlog"] = "https://discordapp.com/api/webhooks/1005509265697538132/N0W4q1NtE_opoEk55L0kVP7Y8TIeuOUgNmm06NmWuA_Gnws63SzzfAYWdDMqojxcllTk"
}
local NewLine = ""
local CommandHelp = {
	--"/give ItemName (You Have To Own It)";
	--"/report PlayerName Reason";
	--"/itemlist";
	--"/code will give you casino code",
	--"/loopgive ItemName",
	--"/unloopgive",
	"/give ItemName, /report PlayerName Reason, /itemlist, /code, /loopgive ItemName, /unloopgive, /kill PlayerName"
}

local LoopGive = {
	
}

local Reports = {
	
}

local ItemListRespone = ""

local ItemCount = 0

for i, v in pairs(ItemList) do
	wait(0.1)
	ItemCount += 1

	if ItemCount == #ItemList then
		ItemListRespone = ItemListRespone..i
	else
		ItemListRespone = ItemListRespone..i..", "
	end
end
local connection

local event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents
connection = event.OnMessageDoneFiltering.OnClientEvent:Connect(function(object)
	local Msg = object.Message
	local Sender = object.FromSpeaker
	wait(0.5)
	SendMessage(webhookURLs["chatlog"], "["..Sender.."]"..Msg, "ChatLog")
	if Sender == bot.Name then
		return
	end


	if string.sub(Msg ,1 , 1) == "/" then
		print("Cmd")

		local PlayerCmd
		local Cmd = {}

		Cmd = string.split(Msg, " ")
		PlayerCmd = string.lower(Cmd[1])
		
		if Cmd[1] == "/report" then
			local Message = "["..Sender.."]".." Report: "..Cmd[2].." Reason: "..Cmd[3]
			local PlayerFound = Players:FindFirstChild(Cmd[2])
			if not PlayerFound then
				Chat("Player Not Found, Please Check If You Write Their Name Correctly")
				return
			end
			Reports[Sender] = Message
			
			game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Please Note That You Can Only Report Players That are AutoRobbing, KillAura Or Using Hacks The Kill.", "All")
			wait()
			game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("If You Misuse The Report Command or False Report You Will Be Temporarily or Permanently Ban From The Server.", "All")
			wait()
			game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Please Type /confirm If You Still Want To Make The Report /decline If You No Longer Want To Make The Report", "All")
			
		end
		
		if Cmd[1] == "/confirm" then
			if Reports[Sender] then
				SendMessage(webhookURLs["report"], Reports[Sender], "ReportBot")
				game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Your Report Has Been Sent You The Owner", "All")
				Reports[Sender] = nil
			end
			
		end
		if Cmd[1] == "/decline" then
			Reports[Sender] = nil
			game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Your Report Have Been Declined", "All")
		end
		if Cmd[1] == "/give" then
			local SelectedItem = nil
			for i, v in pairs(ItemList)do
				if i == Cmd[2] then
					wait(0.1)
					SelectedItem = v
					break
				end
			end
			if SelectedItem == nil then
				return
			end
			local command = "give "..Sender.." "..SelectedItem
			local args = {
				[1] = command,
				[2] = {}
			}
			local response = game:GetService("ReplicatedStorage").CmdrClient.CmdrFunction:InvokeServer(unpack(args))
			game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(response, "All")

		end

		if Cmd[1] == "/cmds" then
			for i, v in pairs(CommandHelp) do
				wait(0.1)
				game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v, "All")
			end
		end

		if Cmd[1] == "/itemlist" then

			game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Item List: "..ItemListRespone, "All")
		end

		if Cmd[1] == "/code" then
			local Codes = game:GetService("Workspace").Casino.RobberyDoor.Codes
			local FoundCode = ""
			for i, Code in pairs(Codes:GetChildren()) do
				wait(0.1)
				for i, NumberCode in pairs(Code:GetChildren()) do
					wait(0.1)
					if NumberCode.SurfaceGui.TextLabel.Text ~= "" then
						FoundCode = FoundCode..NumberCode.SurfaceGui.TextLabel.Text
					end
				end
			end
			if FoundCode == "" then
				game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Casino Is Not Open Yet", "All")
			else
				game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Code:"..FoundCode, "All")
			end
		end

		if Cmd[1] == "/loopgive" then
			for i, itemname in pairs(ItemList) do
				wait()
				if i == Cmd[2] then
					LoopGive[Sender] = itemname
					break
				end
			end
		end

		if Cmd[1] == "/unloopgive" then
			LoopGive[Sender]= nil
		end
		
		if Cmd[1] == "/kill" then
			local FoundPlayer = Players:FindFirstChild(Cmd[2])
			print(Cmd[2])
			if not FoundPlayer then
				Chat("Player Not Found Please Check If You Typed The Name Correctly")
				return
			end
			if FoundPlayer.Team.Name == "Police" then
				local command = "zap "..FoundPlayer.Name
				local args = {
					[1] = command,
					[2] = {}
				}
				game:GetService("ReplicatedStorage").CmdrClient.CmdrFunction:InvokeServer(unpack(args))
				wait()
				game:GetService("ReplicatedStorage").CmdrClient.CmdrFunction:InvokeServer(unpack(args))
			else
				Chat("The /kill Command Only Works On Police")
			end
		end
	end

end)
spawn(function()
	while true do
		wait(1)
		for Player, Item in pairs(LoopGive) do
			wait(0.1)
			local command = "give "..Player.." "..Item
			local args = {
				[1] = command,
				[2] = {}
			}
			game:GetService("ReplicatedStorage").CmdrClient.CmdrFunction:InvokeServer(unpack(args))
		end

		for i, plr in pairs(Players:GetChildren()) do
			wait(0.5)
			local Character = plr.Character

			if Character then
				local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
				local Humanoid = Character:FindFirstChild("Humanoid")
				if not Humanoid or not HumanoidRootPart then return end
				if Humanoid.Health > 0 then

					if HumanoidRootPart.Position.Y > 3000 then
						local command = "kick "..plr.Name
						local args = {
							[1] = command,
							[2] = {}
						}
						game:GetService("ReplicatedStorage").CmdrClient.CmdrFunction:InvokeServer(unpack(args))
						SendMessage(webhookURLs["report"], plr.Name, "ReportBot")
						game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(plr.Name.." Has Been Kick For Suspicion Of Auto Robbing!", "All")
					end

				end

			end
		end
		
		

	end
end)

local SelectedPlayer = nil
local PlayerList = {}
for i, plr in pairs(Players:GetChildren()) do
	wait()
	table.insert(PlayerList, plr.Name)
	local NewFrame = OriFrame:Clone()
	NewFrame.Parent = PlayerListFrame
	NewFrame.Text = plr.Name
	NewFrame.Name = plr.Name
	NewFrame.Visible = true
	NewFrame.MouseButton1Down:Connect(function()
		SelectedPlayer = plr.Name
		print(SelectedPlayer.Name)
	end)
end

Players.PlayerAdded:Connect(function(plr)
	wait()
	table.insert(PlayerList, plr.Name)
	local NewFrame = OriFrame:Clone()
	NewFrame.Parent = PlayerListFrame
	NewFrame.Text = plr.Name
	NewFrame.Name = plr.Name
	NewFrame.Visible = true
	NewFrame.MouseButton1Down:Connect(function()
		SelectedPlayer = plr.Name
		print(SelectedPlayer.Name)
	end)
end)

Players.PlayerRemoving:Connect(function(plr)
	for i, plrinlist in pairs(PlayerList)do
		if plr.Name == plrinlist then
			table.remove(PlayerList, i)
			local PlayerFrame = PlayerListFrame:FindFirstChild(plr.Name)
			if PlayerFrame then
				PlayerFrame:Destroy()
			end
		end
	end
end)

local userinput = game:GetService("UserInputService")

userinput.InputBegan:Connect(function(key)
	if key.KeyCode == Enum.KeyCode.H then
		AdminGui.Enabled = not AdminGui.Enabled
	end
end)

ViewButton.MouseButton1Down:Connect(function()
	if not SelectedPlayer then
		print("Player nil")
		return
	end
	print(SelectedPlayer)
	local Character = Player.Character

	local cam = game:GetService("Workspace").CurrentCamera
	
	cam.CameraSubject = game:GetService("Players")[SelectedPlayer].Character.HumanoidRootPart
end)




