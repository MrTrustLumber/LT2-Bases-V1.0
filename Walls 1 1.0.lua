local Colour1 = game.CoreGui.MTL_Gui.MTLBaseColour1.Text
local PlayerName = game.CoreGui.MTL_Gui.MTLBaseUser0.Text

-- Script:
local Tag
for i,v in pairs(Workspace.Properties:GetChildren()) do
if v.Owner.Value == game.Players[PlayerName] then
Tag = v.OriginSquare.CFrame
end
end

local ItsCFrame
local Remote = game.ReplicatedStorage.PlaceStructure.ClientPlacedStructure
for i,v in pairs(game.Workspace.PlayerModels:GetChildren()) do
if v:FindFirstChild("Owner") and v.Owner.Value == game.Players[PlayerName] then
if v:FindFirstChild("Type") and v.Type.Value == "Blueprint" then
if v:FindFirstChild("MainCFrame") then
else
ItsCFrame = v.PrimaryPart.CFrame
end
if v ~= nil then
Remote:FireServer(v.Name, ItsCFrame, game.Players.LocalPlayer, "", v, false)
end
end
end
end

local Vec = Vector3.new
local Ang = CFrame.Angles
local Plr = game.Players.LocalPlayer
function SetBp(WT, Count)
local Remote = game.ReplicatedStorage.PlaceStructure.ClientPlacedStructure
repeat
wait(2)
game:GetService("RunService").RenderStepped:wait(0.3)
local ItsCFrame = 0
for i,v in pairs(game.Workspace.PlayerModels:GetChildren()) do
if v:FindFirstChild("Owner") and v.Owner.Value == game.Players[PlayerName] then
if v:FindFirstChild("Type") and v.Type.Value == "Blueprint" then
if v:FindFirstChild("MainCFrame") then
else
ItsCFrame = ItsCFrame  + 1
end
end
end
end
until ItsCFrame == Count
local ItsCFrame
local Remote = game.ReplicatedStorage.PlaceStructure.ClientPlacedStructure
for i,v in pairs(game.Workspace.PlayerModels:GetChildren()) do
if v:FindFirstChild("Owner") and v.Owner.Value == game.Players[PlayerName] then
if v:FindFirstChild("Type") and v.Type.Value == "Blueprint" then
if v:FindFirstChild("MainCFrame") then
ItsCFrame = v.MainCFrame.Value
else
ItsCFrame = v.PrimaryPart.CFrame
end
if v ~= nil then
Remote:FireServer(v.Name, ItsCFrame, game.Players.LocalPlayer, WT, v, false)
end
end
end
end
end

function Sbp(A_1, A_2, A_3)
game.ReplicatedStorage.PlaceStructure.ClientPlacedBlueprint:FireServer(A_1, A_2, A_3)
if (math.random(1,20) == 1) then
game:GetService("RunService").RenderStepped:wait()
end
end

Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, -96), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, -72), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, -88), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, -48), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, -56), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, -40), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, -24), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, -80), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, -8), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, -32), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, -0), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, -16), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, 8), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, 32), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, 24), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, 16), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, 40), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, 72), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, 64), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, 96), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, 80), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, 48), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, 56), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(-96, 4.0999999046326, 99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, 88), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(-99.900024414063, 4.0999999046326, -64), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(-96, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(-88, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(-80, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(-72, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(-56, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(-64, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(-48, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(-40, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(-32, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(-24, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(-16, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(8, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(16, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(-8, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(-0, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(24, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(40, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(32, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(56, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(48, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(64, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(72, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(80, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(88, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, -0, -0) + Vec(96, 4.0999999046326, -99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(-64, 4.0999999046326, 99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(-72, 4.0999999046326, 99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(-88, 4.0999999046326, 99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(-48, 4.0999999046326, 99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(-80, 4.0999999046326, 99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(-32, 4.0999999046326, 99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(-40, 4.0999999046326, 99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(-24, 4.0999999046326, 99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(-16, 4.0999999046326, 99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(16, 4.0999999046326, 99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(-0, 4.0999999046326, 99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(8, 4.0999999046326, 99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(24, 4.0999999046326, 99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(-8, 4.0999999046326, 99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(40, 4.0999999046326, 99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(56, 4.0999999046326, 99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(48, 4.0999999046326, 99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(64, 4.0999999046326, 99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(32, 4.0999999046326, 99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(72, 4.0999999046326, 99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(80, 4.0999999046326, 99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(88, 4.0999999046326, 99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(96, 4.0999999046326, 99.100006103516), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, 88), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, 80), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, 96), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, 72), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, 56), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, 48), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, 64), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, 16), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, 32), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, 24), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, 8), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, 40), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, -0), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, -8), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, -24), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, -16), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, -48), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, -32), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, -56), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, -40), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, -64), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, -72), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, -80), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, -88), Plr)
Sbp('Floor1Large',Tag*Ang(1.5707963705063, 0, -1.5707963705063) + Vec(99.099975585938, 4.0999999046326, -96), Plr)
Sbp('Floor1Large',Tag*Ang(-1.5707963705063, 0, -3.1415927410126) + Vec(-56, 4.0999999046326, 99.100006103516), Plr)
wait(1.3571428571429)SetBp(Colour1, 100)
