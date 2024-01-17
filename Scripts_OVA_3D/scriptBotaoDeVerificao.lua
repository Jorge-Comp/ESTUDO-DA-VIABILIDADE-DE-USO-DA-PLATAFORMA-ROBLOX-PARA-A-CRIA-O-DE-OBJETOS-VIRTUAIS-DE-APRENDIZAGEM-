local Prompt_proximidade = Instance.new("ProximityPrompt")
Prompt_proximidade.Parent = script.Parent
local plr = game.Players.LocalPlayer
--CONFIGURAÇÕES DO PROMPT

Prompt_proximidade.ActionText = "Pegar"
Prompt_proximidade.ObjectText = "Item" --Mude a sua preferencia o nome do item
Prompt_proximidade.HoldDuration = 1 --Tempo de segurar a tecla! mude para sua preferencia
Prompt_proximidade.MaxActivationDistance = 20 --Quanto voçe quer que a prompt apareca


Prompt_proximidade.Triggered:Connect(function(plr)
	local gasoso = script.Parent.Parent:FindFirstChild("SoltarGasoso")
	local liquido = script.Parent.Parent:FindFirstChild("SoltarLiquido")
	local solido = script.Parent.Parent:FindFirstChild("SoltarSolido")
	local pegarSolido = script.Parent.Parent:FindFirstChild("ObjetoPegarSolido")
	local pegarLiquido = script.Parent.Parent:FindFirstChild("ObjetoPegarLiquido")
	local pegarGasoso = script.Parent.Parent:FindFirstChild("ObjetoPegarGasoso")
	
	if(gasoso.Decal.Texture ~= "http://www.roblox.com/asset/?id=15558862920" and liquido.Decal.Texture ~= "http://www.roblox.com/asset/?id=15558862920" and solido.Decal.Texture ~= "http://www.roblox.com/asset/?id=15558862920") then 
		
		if(gasoso.Decal.Texture =="rbxassetid://15177208468")then
			gasoso.Decal.Color3 =  Color3.new(0, 1, 0)
		else
			gasoso.Decal.Color3 =  Color3.new(1, 0, 0)
		end
		
		if(liquido.Decal.Texture =="rbxassetid://15177207526")then
			liquido.Decal.Color3 =  Color3.new(0, 1, 0)
		else
			liquido.Decal.Color3 =  Color3.new(1, 0, 0)
		end
		
		if(solido.Decal.Texture =="rbxassetid://15177194321")then
			solido.Decal.Color3 =  Color3.new(0, 1, 0)
		else
			solido.Decal.Color3 =  Color3.new(1, 0, 0)
		end
	
		wait(3)
		
		
		pegarGasoso.ProximityPrompt.Enabled = true
		pegarSolido.ProximityPrompt.Enabled = true
		pegarLiquido.ProximityPrompt.Enabled = true
		
		
		local pais = {} 
		table.insert(pais, pegarGasoso["Meshes/Block 1"])
		table.insert(pais, pegarSolido["Meshes/Block 1"])
		table.insert(pais, pegarLiquido["Meshes/Block 1"])
		
		
		script.Parent.Transparency = 0
		for _, pai in pairs(pais) do
			pai.Transparency = 0
			for _, filho in pairs(pai:GetChildren()) do
				if filho:IsA("Decal") then
					filho.Transparency = 0
				end
			end
		end 
		
		gasoso.Decal.Texture =""
		liquido.Decal.Texture =""
		solido.Decal.Texture = ""
		solido.Decal.Color3 = Color3.new(0.898039, 0.898039, 0.898039)
		liquido.Decal.Color3= Color3.new(0.898039, 0.898039, 0.898039)
		gasoso.Decal.Color3= Color3.new(0.898039, 0.898039, 0.898039)
	end
end)