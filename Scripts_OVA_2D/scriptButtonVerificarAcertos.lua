-- Conectar o evento MouseButton1Click do botão a uma função
local button = script.Parent
local solidificacao = script.Parent.Parent.ImageLabel:FindFirstChild("LabelSolidificacao")
local fusao = script.Parent.Parent.ImageLabel:FindFirstChild("LabelFusao")
local liquefacao = script.Parent.Parent.ImageLabel:FindFirstChild("LabelLiquefacao")
local vaporizacao = script.Parent.Parent.ImageLabel:FindFirstChild("LabelVaporizacao")
local sublimacao = script.Parent.Parent.ImageLabel:FindFirstChild("LabelSublimacao")
local pontos = 0
local pontuacao = script.Parent.Parent.Pontos

local function OnButtonClicked()
	pontos = 0
	if(solidificacao.Position == UDim2.new(0.232, 0,0.451, 0))then
		solidificacao.BackgroundColor3 = Color3.new(0, 1, 0)
		pontos = pontos+1
	else
		solidificacao.BackgroundColor3 = Color3.new(1, 0, 0)
	end
	if(fusao.Position == UDim2.new(0.311, 0,0.730, 0))then
		fusao.BackgroundColor3 = Color3.new(0, 1, 0)
		pontos = pontos+1
	else
		fusao.BackgroundColor3 = Color3.new(1, 0, 0)
	end
	if(liquefacao.Position == UDim2.new(0.59, 0,0.46, 0))then
		liquefacao.BackgroundColor3 = Color3.new(0, 1, 0)
		pontos = pontos+1
	else
		liquefacao.BackgroundColor3 = Color3.new(1, 0, 0)
	end
	if(vaporizacao.Position == UDim2.new(0.63, 0,0.73, 0))then
		vaporizacao.BackgroundColor3 = Color3.new(0, 1, 0)
		pontos = pontos+1
	else
		vaporizacao.BackgroundColor3 = Color3.new(1, 0, 0)
	end
	if(sublimacao.Position == UDim2.new(0.431, 0, 0.857, 0))then
		sublimacao.BackgroundColor3 = Color3.new(0, 1, 0)
		pontos = pontos+1
	else
		sublimacao.BackgroundColor3 = Color3.new(1, 0, 0)
	end
	
	pontuacao.Text = pontos
	
end

button.MouseButton1Click:Connect(OnButtonClicked)
