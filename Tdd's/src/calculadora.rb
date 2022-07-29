class Calculadora

  ### METODO DE SOMA ###
    def soma(a, b)
      a + b  
    end


    ### METODO DE SUBTRACAO ###
    def subtracao(a, b)
      if(a < 0 && b < 0)
          a + b
      else
          a - b
      end
    end


    ### METODO DE MULTIPLICACAO ###
    def multiplicacao(a, b)
      a * b
    end


    ### METODO DE DIVISAO ###
    def divisao(a, b)
      a / b
      rescue ZeroDivisionError 
      "ERROR! Náo é possível dividir números por zero"
    end


    ### METODO DE POTENCIA ###
    def potencia(a, b)
      a ** b
    end


    ### METODO DE PORCENTAGEM ###
    def porcentagem(a,b)
      a * b / 100
    end


    ### METODO DE VOLUME ###
    def volume(l, a, c)
      if l < 0 or a < 0 or c < 0
          return "ERROR! Não existe largura, altura ou comprimento com valores negativos!"
      end

      (l * a * c).to_f.round(2)
    end


    ### METODO DE RAIZ ###
    def raiz(a) #metodo de raiz
      Math.sqrt(a).to_f.round(2)
      rescue Math::DomainError
          "ERROR! Não é possível calcular a raiz de um número negativo!"
      end


    ### METODO DE MEDIA ###
    def media(a,b)
        (a + b) / 2
    end


end