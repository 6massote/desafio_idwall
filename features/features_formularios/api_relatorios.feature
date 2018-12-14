#language:pt
@relatorios
Funcionalidade: Criar Relatórios de novos usuários
  Eu como usuário da API de Relátorios
  Quero registrar novos usuários
  Para extrair os dados dos usuários

  Cenario: Enviar para a API relatório dados de usuários vazio
    Dado que eu envie os dados do cliente data de nascimento ""  nome "" e cpf ""
    Quando eu enviar os dados de usuário
    E eu devo receber uma mensagem "É necessário enviar ao menos um parâmetro para criação do relatório."
    Então eu devo receber o status code "400"

  Cenario: Enviar para a API de relatório dados invalidos do usuário
    Dado que eu envie os dados do cliente data de nascimento "28/09/1988"  nome "Gabriel Oliveira" e cpf "07614917677"
    Quando eu enviar os dados de usuário
    Então eu devo receber o status code "200"
    E gerar o um protocolo de cadastro

  Cenario: Enviar para a API de relatório dados invalidos do usuário
    Dado que eu envie os dados do cliente data de nascimento "25/05/1987"  nome "Gabriel Oliveira" e cpf "07614917677"
    Quando eu enviar os dados de usuário
    Então eu devo receber o status code "200"
    E gerar o um protocolo de cadastro

  Cenario: Enviar para a API de relatório dados validos do usuário
    Dado que eu envie os dados do cliente data de nascimento "data_valida"  nome "nome_valido" e cpf "cpf_valido"
    Quando eu enviar os dados de usuário
    E gerar o um protocolo de cadastro
    E eu devo ver o status de "CONCLUIDO"
    E eu devo ser o nome "nome_valido"
    E eu devo receber uma mensagem "Válido"
    E eu devo ver o resultado como "VALID"
    Então eu devo receber o status code "200"
