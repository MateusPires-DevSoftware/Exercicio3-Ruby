class Pessoa
  attr_accessor :nome, :idade, :sexo, :profissao

  def initialize(nome, idade, sexo, profissao)
    @nome = nome
    @idade = idade
    @sexo = sexo
    @profissao = profissao
  end

  def imprimir_dados
    puts "Nome: #{@nome}"
    puts "Idade: #{@idade}"
    puts "Sexo: #{@sexo}"
    puts "Profissão: #{@profissao}"
  end

  def idade_em_meses
    meses = @idade * 12
    puts "#{@nome} tem #{meses} meses de idade."
  end

  def mudar_profissao(nova_profissao)
    @profissao = nova_profissao
    puts "#{@nome} agora trabalha como #{@profissao}."
  end
end

pessoa = Pessoa.new("João", 30, "Masculino", "Programador")


pessoa.imprimir_dados


pessoa.idade_em_meses


pessoa.mudar_profissao("Engenheiro")