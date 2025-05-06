class Carro
    attr_accessor :modelo, :marca, :ano, :cor, :velocidade_atual, :velocidade_maxima
  
    def initialize(modelo, marca, ano, cor, velocidade_maxima)
      @modelo = modelo
      @marca = marca
      @ano = ano
      @cor = cor
      @velocidade_atual = 0
      @velocidade_maxima = velocidade_maxima
    end
  
    def imprimir_dados
      puts "Modelo: #{@modelo}"
      puts "Marca: #{@marca}"
      puts "Ano: #{@ano}"
      puts "Cor: #{@cor}"
      puts "Velocidade atual: #{@velocidade_atual}"
      puts "Velocidade máxima: #{@velocidade_maxima}"
    end
  
    def acelerar
      if @velocidade_atual < @velocidade_maxima
        @velocidade_atual += 10
      else
        puts "O carro já está na velocidade máxima."
      end
    end
  
    def frear
      if @velocidade_atual > 0
        @velocidade_atual -= 10
      else
        puts "O carro já está parado."
      end
    end
  
    def mudar_cor(nova_cor)
      @cor = nova_cor
      puts "A cor do carro foi alterada para #{@cor}."
    end
  end

  carro = Carro.new("Civic", "Honda", 2022, "Branco", 200)


carro.imprimir_dados


carro.acelerar
carro.imprimir_dados

carro.frear
carro.imprimir_dados


carro.mudar_cor("Preto")
carro.imprimir_dados