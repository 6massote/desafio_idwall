Dado("que eu envie os dados do cliente data de nascimento {string}  nome {string} e cpf {string}") do |date, name, number_doc|
  @response_body = ReportsFactory.create_reports(date, name, number_doc)
end

Quando("eu enviar os dados de usuário") do
  @response = CriarRelatorio.new.post_criar_relatorio(@response_body)
end

Então("eu devo receber uma mensagem {string}") do |msg|
  expect(@response["message"]).to eq msg
end

Então("eu devo receber o status code {string}") do |code|
  expect(@response.code).to eq code.to_i
end

Então("gerar o um protocolo de cadastro") do
  print "Numero do Protocolo #{@response['result']['numero']}"
  expect(@response["result"]["numero"]).not_to be_empty
  expect(@response["result"]["numero"]).not_to be_nil
end

Quando("eu devo ver o status de {string}") do |status|
  expect(@response["result"]["status"]).to eq status
end

Quando("eu devo ser o nome {string}") do |valid_name|
  expect(@response["result"]["nome"]).to eq valid_name
end

Quando("eu devo ver o resultado como {string}") do |message|
  expect(@response["result"]["mensagem"]).to eq message
end
