local Prompt_proximidade = script.Parent.ProximityPrompt
Prompt_proximidade.Parent = script.Parent
local plr = game.Players.LocalPlayer
--CONFIGURAÇÕES DO PROMPT
Prompt_proximidade.ActionText = "Pegar"
Prompt_proximidade.ObjectText = "Gasoso" --Mude a sua preferencia o nome do item
Prompt_proximidade.HoldDuration = 1 --Tempo de segurar a tecla! mude para sua preferencia
Prompt_proximidade.MaxActivationDistance = 20 --Quanto voçe quer que a prompt apareca

Prompt_proximidade.Triggered:Connect(function(plr)
	local Item = game:GetService("ReplicatedStorage").Gasoso --Mude aqui para o nome EXATO do item!
    
	local Clone = Item:Clone()
	Clone.Parent = plr.Character

	local pai = script.Parent["Meshes/Block 1"]
	pai.Transparency = 1
	script.Parent.Transparency = 1

	for _, filho in pairs(pai:GetChildren()) do
		if filho:IsA("Decal") then
			filho.Transparency = 1
		end
	end
	Prompt_proximidade.Enabled = false
	
end)

