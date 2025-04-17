require 'sinatra'
require_relative 'model/people'

get '/inicio' do
    # Inicializa os valores como vazios
    @nome = ''
    @email = ''
    @cpf = ''
    @senha = ''
    erb :index
end

post '/gerar' do
    # Cria o objeto 'pessoa' e gera os dados
    pessoa = People.new
    pessoa.gerarNome
    pessoa.gerarEmail
    pessoa.gerarCPF
    pessoa.gerarSenha

    # Passa os valores gerados para a view
    @nome = pessoa.getNome
    @email = pessoa.getEmail
    @cpf = pessoa.getCPF
    @senha = pessoa.getSenha

    erb :index
end



