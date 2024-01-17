-- Conectar o evento MouseButton1Click do botão a uma função
local button = script.Parent
local solidificacao = script.Parent.Parent.ImageLabel:FindFirstChild("LabelSolidificacao")
local fusao = script.Parent.Parent.ImageLabel:FindFirstChild("LabelFusao")
local liquefacao = script.Parent.Parent.ImageLabel:FindFirstChild("LabelLiquefacao")
local vaporizacao = script.Parent.Parent.ImageLabel:FindFirstChild("LabelVaporizacao")
local sublimacao = script.Parent.Parent.ImageLabel:FindFirstChild("LabelSublimacao")
local pontuacao = script.Parent.Parent.Pontos

local function OnButtonClicked()
	solidificacao.Position = UDim2.new(0.166, 0,0.274, 0)
	solidificacao.BackgroundColor3 = Color3.new(1, 1, 1)
	
	fusao.Position = UDim2.new(0.743, 0,0.2, 0)
	fusao.BackgroundColor3 = Color3.new(1, 1, 1)
	
	liquefacao.Position = UDim2.new(0.065, 0,0.199, 0)
	liquefacao.BackgroundColor3 = Color3.new(1, 1, 1)
	
	
	vaporizacao.Position = UDim2.new(0.407, 0,0.274, 0)
	vaporizacao.BackgroundColor3 = Color3.new(1, 1, 1)
	
	sublimacao.Position = UDim2.new(0.645, 0, 0.273, 0)
	sublimacao.BackgroundColor3 = Color3.new(1, 1, 1)
	
	pontuacao.Text = 0
end

button.MouseButton1Click:Connect(OnButtonClicked)
