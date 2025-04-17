class People

    attr_reader :nome, :email, :CPF, :senha
    attr_writer :nome, :email, :CPF, :senha

    def initialize
        @nome = ""
        @email = ""
        @CPF = ""
        @senha = ""
    end

## GERANDO NOME
def gerarNome
    listaNomes = ['João Silva', 'Maria Oliveira', 'Pedro Santos', 'Ana Costa', 'Lucas Almeida', 'Juliana Pereira', 'Gabriel Lima', 'Fernanda Rocha', 'Rafael Martins', 'Camila Souza']
    @nome = listaNomes.sample # Seleciona um nome aleatório da lista
end

def getNome
    @nome
end

##GERANDO EMAIL
def gerarEmail
    dominio = ['@gmail.com', '@yahoo.com', '@hotmail.com', '@outlook.com']
    nome_usuario = @nome.downcase.gsub(' ', '_') # Converte o nome para minúsculas e substitui espaços por underscores
    @email = nome_usuario + dominio.sample # Seleciona um domínio aleatório da lista
end

def getEmail
    @email
end

##GERANDO CPF
def gerarCPF
    @CPF = [] # Inicializa como um array

    11.times do
        @CPF << rand(0..9)       
    end

    @CPF = @CPF.join # Converte o array em uma string
    @CPF = @CPF.insert(3, '.').insert(7, '.').insert(11, '-')
end

def getCPF
    @CPF
end

##GERANDO A SENHA
def gerarSenha
    caracteres = ('0'..'9').to_a + ('a'..'z').to_a + ('A'..'Z').to_a # Lista de caracteres (números e letras)
    @senha = Array.new(12) { caracteres.sample }.join # Gera uma senha de 12 caracteres aleatórios
end

def getSenha
    @senha
end

end