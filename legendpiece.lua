-- OPEN SOURCE CUZ WHY NOT?? 
-- BROUGHT TO YOU BY PROXO, NEED HELP WITH THE SCRIPT ADD Sintax#4976
-- discord server https://discord.gg/6HXUbCcMc7


local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/miroeramaa/TurtleLib/main/TurtleUiLib.lua"))()
local window = library:Window("Legend Piece by Proxo")
window:Button("Start Auto Farm", function()
   getgenv().SeaFarm = true

while SeaFarm == true do
    if not game:GetService("Workspace").Monster:FindFirstChild("SeaBeast") then
        if game.Players.LocalPlayer.Backpack:FindFirstChild("SeaBeast Orb") then
            game.Players.LocalPlayer.Backpack:FindFirstChild("SeaBeast Orb").Parent = game.Players.LocalPlayer.Character
            firetouchinterest(
                game.Players.LocalPlayer.Character:FindFirstChild("SeaBeast Orb").Handle,
                game:GetService("Workspace").Map.Islands["SeaBeast Island"].Base.Model.PlaceToPutOrb,
                0
            )
        else
            if game.Workspace.Monster:FindFirstChild("SeaSoldier") then
                local args = {
                    [1] = "TakeDamage",
                    [2] = {
                        ["target"] = workspace.Monster.SeaSoldier,
                        ["damage"] = 40000
                    }
                }
                game:GetService("ReplicatedStorage").Remotes.DamageRemoteEvent:FireServer(unpack(args))
            else
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(
                    CFrame.new(Vector3.new(-3188, -12.4886, 753.432))
                )
            end
        end
    else
        local args = {
            [1] = "TakeDamage",
            [2] = {
                ["target"] = workspace.Monster.SeaBeast,
                ["damage"] = 40000
            }
        }
        game:GetService("ReplicatedStorage").Remotes.DamageRemoteEvent:FireServer(unpack(args))
    end
    wait()
end
end)

window:Button("Stop AutoFarm", function()
    
    getgenv().SeaFarm = false

while SeaFarm == true do
    if not game:GetService("Workspace").Monster:FindFirstChild("SeaBeast") then
        if game.Players.LocalPlayer.Backpack:FindFirstChild("SeaBeast Orb") then
            game.Players.LocalPlayer.Backpack:FindFirstChild("SeaBeast Orb").Parent = game.Players.LocalPlayer.Character
            firetouchinterest(
                game.Players.LocalPlayer.Character:FindFirstChild("SeaBeast Orb").Handle,
                game:GetService("Workspace").Map.Islands["SeaBeast Island"].Base.Model.PlaceToPutOrb,
                0
            )
        else
            if game.Workspace.Monster:FindFirstChild("SeaSoldier") then
                local args = {
                    [1] = "TakeDamage",
                    [2] = {
                        ["target"] = workspace.Monster.SeaSoldier,
                        ["damage"] = 40000
                    }
                }
                game:GetService("ReplicatedStorage").Remotes.DamageRemoteEvent:FireServer(unpack(args))
            else
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(
                    CFrame.new(Vector3.new(-3188, -12.4886, 753.432))
                )
            end
        end
    else
        local args = {
            [1] = "TakeDamage",
            [2] = {
                ["target"] = workspace.Monster.SeaBeast,
                ["damage"] = 40000
            }
        }
        game:GetService("ReplicatedStorage").Remotes.DamageRemoteEvent:FireServer(unpack(args))
    end
    wait()
end
    
    end)
