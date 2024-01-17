-- Referências aos objetos
local screenGui = script.Parent -- A ScreenGui que contém as TextLabels
local mouse = game.Players.LocalPlayer:GetMouse() -- Objeto mouse
local sublimacao = script.Parent.Sublimacao
-- Tabela para armazenar informações de arrasto para cada TextLabel
local draggingInfo = {}
local fusao = script.Parent.Fusao
local solidificacao = script.Parent.Solidificacao
local liquefacao = script.Parent.Liquefacao
local vaporizacao = script.Parent.Vaporizacao


-- Obtém a resolução da tela do jogador
local player = game.Players.LocalPlayer
local screenWidth = player.PlayerGui.ScreenGui.AbsoluteSize.X
local screenHeight = player.PlayerGui.ScreenGui.AbsoluteSize.Y

-- Configura o tamanho da ImageLabel para cobrir toda a tela
local imageLabel = script.Parent -- Assumindo que o script está dentro da ImageLabel
imageLabel.Size = UDim2.new(0, screenWidth, 0, screenHeight)

-- Funções para manipulação do arrasto
local function onMouseButton1Down(label)
	local offset = label.Position - UDim2.new(0, mouse.X, 0, mouse.Y)
	draggingInfo[label] = {
		isDragging = true,
		offset = offset
	}
end

local function onMouseButton1Up(label)
	draggingInfo[label] = nil
end

local function onMouseMove()
	for label, info in pairs(draggingInfo) do
		if info.isDragging then
			local newPosition = UDim2.new(0, mouse.X, 0, mouse.Y) + info.offset
			label.Position = newPosition
			sublimacao.BackgroundColor3 = Color3.new(0.827451, 0.827451, 0.827451)
			fusao.BackgroundColor3 = Color3.new(0.827451, 0.827451, 0.827451)
			solidificacao.BackgroundColor3 = Color3.new(0.827451, 0.827451, 0.827451)
			liquefacao.BackgroundColor3 = Color3.new(0.827451, 0.827451, 0.827451)
			vaporizacao.BackgroundColor3 = Color3.new(0.827451, 0.827451, 0.827451)
		end
	end
end


-- Conectar eventos para cada TextLabel
for _, label in ipairs(screenGui:GetDescendants()) do
	if label:IsA("TextLabel") then
		label.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				onMouseButton1Down(label)
				
			end
		end)

		label.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				onMouseButton1Up(label)
				sublimacao.BackgroundColor3 = Color3.new(1, 1, 1)
				fusao.BackgroundColor3 = Color3.new(1, 1, 1)
				solidificacao.BackgroundColor3 = Color3.new(1, 1, 1)
				liquefacao.BackgroundColor3 = Color3.new(1, 1, 1)
				vaporizacao.BackgroundColor3 = Color3.new(1, 1, 1)
			end
		end)
	end
end

mouse.Move:Connect(onMouseMove)
