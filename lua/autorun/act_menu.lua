if SERVER then --server
	util.AddNetworkString("seriousjustforamenu")
	hook.Add("ShowTeam","f1danceviewmaks",function(ply)
		net.Start("seriousjustforamenu")
		net.Send(ply)
	end)
	return
end

local function createNewButton(text, multip, window)
	local buttond = vgui.Create("DButton",window)
	buttond:SetText(text)
	buttond:SetSize(60,20)
	buttond:SetPos(60*multip+10-60, 30)
	buttond.DoClick = function()
		window:Close()
		RunConsoleCommand("act",string.lower(text))
	end
end

net.Receive("seriousjustforamenu",function()
	local window = vgui.Create("DFrame")
	window:SetSize(1000,60)
	window:Center()
	window:SetTitle("Acting")
	createNewButton("Robot", 1, window)
	createNewButton("Muscle", 2, window)
	createNewButton("Dance", 3, window)
	createNewButton("Laugh", 4, window)
	createNewButton("Bow", 5, window)
	createNewButton("Cheer", 6, window)
	createNewButton("Wave", 7, window)
	createNewButton("Salute", 8, window)
	createNewButton("Becon", 9, window)
	createNewButton("Agree", 10, window)
	createNewButton("Disagree", 11, window)
	createNewButton("Forward", 12, window)
	createNewButton("Group", 13, window)
	createNewButton("Halt", 14, window)
	createNewButton("Zombie", 15, window)
	createNewButton("Pers", 16, window)
	window:MakePopup()
end)