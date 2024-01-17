local Prompt_proximidade = Instance.new("ProximityPrompt")
Prompt_proximidade.Parent = script.Parent
local plr = game.Players.LocalPlayer
local obj = script.Parent
--CONFIGURAÇÕES DO PROMPT
Prompt_proximidade.ActionText = "Pegar"
Prompt_proximidade.ObjectText = "Item" --Mude a sua preferencia o nome do item
Prompt_proximidade.HoldDuration = 1 --Tempo de segurar a tecla! mude para sua preferencia
Prompt_proximidade.MaxActivationDistance = 20 --Quanto voçe quer que a prompt apareca

Prompt_proximidade.Triggered:Connect(function(plr)
	local itemEquipado = plr.Character:FindFirstChildWhichIsA("Tool")
	if(itemEquipado)then
		local clone = itemEquipado:Clone()
		clone.Parent = plr.Backpack  
		itemEquipado:Remove()
		local itemMochila = plr.Backpack:FindFirstChildWhichIsA("Tool")
		
		if(obj.Decal.Texture == "http://www.roblox.com/asset/?id=15558862920") then
			if(itemMochila.Name=="Solido")then
				obj.Decal.Texture = "rbxassetid://15177194321"
				plr.Backpack:ClearAllChildren()
			elseif(itemMochila.Name == "Liquido")then
				obj.Decal.Texture = "rbxassetid://15177207526"
				plr.Backpack:ClearAllChildren()
			elseif(itemMochila.Name== "Gasoso")then
				obj.Decal.Texture = "rbxassetid://15177208468"
				plr.Backpack:ClearAllChildren()
			end  		
		else
			local screenGui = Instance.new("ScreenGui")
			screenGui.Parent = plr:FindFirstChild("PlayerGui") or plr:WaitForChild("Backpack")
			clone.Parent = plr.Character
			-- Crie um objeto "TextLabel" com a mensagem
			local mensagem = Instance.new("TextLabel")
			mensagem.Size = UDim2.new(0, 800, 0, 50) -- Tamanho da mensagem
			mensagem.Position = UDim2.new(0.5, -100, 0.5, -25) -- Posição central
			mensagem.BackgroundColor3 = Color3.new(0, 0, 0) -- Cor de fundo
			mensagem.TextColor3 = Color3.new(1, 1, 1) -- Cor do texto
			mensagem.FontSize = Enum.FontSize.Size24
			mensagem.Text = "Já existe um Objeto aqui, posicione em outro local" -- Texto da mensagem
			mensagem.Parent = screenGui

			-- Remova a mensagem após um tempo (opcional)
			wait(5) -- Espera por 5 segundos
			mensagem:Remove() -- Remove a mensagem
		end
	end
	
end)