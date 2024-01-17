local meuFrame = script.Parent
local TemLabel = meuFrame.TemLabel
local labels = {}  -- Crie uma tabela para armazenar todas as labels que voc� deseja controlar
-- Adicione todas as labels que voc� deseja controlar � tabela "labels"
table.insert(labels, meuFrame.Parent:FindFirstChild("LabelFusao"))  
table.insert(labels, meuFrame.Parent:FindFirstChild("LabelSolidificacao"))  
table.insert(labels, meuFrame.Parent:FindFirstChild("LabelLiquefacao")) 
table.insert(labels, meuFrame.Parent:FindFirstChild("LabelSublimacao")) 
table.insert(labels, meuFrame.Parent:FindFirstChild("LabelVaporizacao")) 

-- Fun��o para ajustar a posi��o de uma label espec�fica
local function ajustarPosicao(label)
	label.Position = UDim2.new(0.311, 0,0.730, 0)
end

-- Fun��o para verificar se a label est� dentro do frame
local function verificarLabelNoFrame(label)
	local labelScreenPosition = label.AbsolutePosition
	local labelSize = label.AbsoluteSize
	local frameScreenPosition = meuFrame.AbsolutePosition
	local frameSize = meuFrame.AbsoluteSize

	if (labelScreenPosition.X >= frameScreenPosition.X and
		labelScreenPosition.X + labelSize.X <= frameScreenPosition.X + frameSize.X and
		labelScreenPosition.Y >= frameScreenPosition.Y and
		labelScreenPosition.Y + labelSize.Y <= frameScreenPosition.Y + frameSize.Y) then
		-- A label est� dentro do frame
		if(TemLabel.Value == false)then
			ajustarPosicao(label)
			TemLabel.Value = true
		else if (TemLabel.Value== true) then
				if(label.Position ~= UDim2.new(0.311, 0,0.730, 0))then

					if(TemLabel.Value==true and label.Name == 'LabelFusao')then
						label.Position = UDim2.new(0.743, 0,0.2, 0)
					else if(TemLabel.Value==true and label.Name == 'LabelSolidificacao')then
							label.Position = UDim2.new(0.166, 0,0.274, 0)
						else if(TemLabel.Value==true and label.Name == 'LabelLiquefacao')then
								label.Position = UDim2.new(0.065, 0,0.199, 0)
							else if(TemLabel.Value==true and label.Name == 'LabelSublimacao')then
									label.Position = UDim2.new(0.645, 0, 0.273, 0)
								else if(TemLabel.Value==true and label.Name == 'LabelVaporizacao')then
										label.Position = UDim2.new(0.407, 0,0.274, 0)
									end

								end
							end
						end
					end

					TemLabel.Value=false
				end
			end
		end

	end
end

-- Conecte a fun��o verificarLabelNoFrame ao evento MouseMove
game:GetService("UserInputService").InputChanged:Connect(function(input, gameProcessedEvent)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		for _, label in pairs(labels) do
			verificarLabelNoFrame(label)
		end
	end
end)