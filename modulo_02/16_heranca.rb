class Pessoa
    attr_accessor :nome, :email
  end
  
  class PessoaFisica < Pessoa
    attr_accessor :cpf
  
    def falar(texto)
      texto
    end
  end
  
  class PessoaJuridica < Pessoa
    attr_accessor :cnpj
  
    def pagar_fornecedor
      "Pagando fornecedor..."
    end
  end
  
  p1 = Pessoa.new 

  p1.nome = "Jackson"
  p1.email = "jackson@jack.com"
  
  puts p1.nome
  puts p1.email
  puts "------------------------"
  
  p2 = PessoaFisica.new
  p2.nome = "Joao"
  p2.email = "joao@joao.com"
  p2.cpf = "28382819"
  
  puts p2.nome
  puts p2.email
  puts p2.cpf
  
  puts p2.falar("Hello!")
  puts "------------------------"
  
  
  p2 = PessoaJuridica.new

  p2.nome = "Vídeos de Ti"
  p2.email = "vit@vti.com"
  p2.cnpj = "50213319876-0001"
  
  puts p2.nome
  puts p2.email
  puts p2.cnpj
  
  puts p2.pagar_fornecedor
  puts "------------------------"