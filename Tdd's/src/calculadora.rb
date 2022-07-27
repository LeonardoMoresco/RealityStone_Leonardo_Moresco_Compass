class Calculadora

    def soma(a, b)
      a + b  
    end


    def subtracao(a, b)
      if(a < 0 && b < 0)
          a + b
      else
          a - b
      end
    end


    def multiplicacao(a, b)
      a * b
    end


    def divisao(a, b)
      a / b
      rescue ZeroDivisionError 
      "ERROR! Náo é possível dividir números por zero"
    end


    def potencia(a, b)
      a ** b
    end


    def porcentagem(a,b)
      a * b / 100
    end


    def volume(l, a, c)
      if l < 0 or a < 0 or c < 0
          return "Volume ERROR! Não existe largura, altura ou comprimento com valores negativos!"
      end

      (l * a * c).to_f.round(2)
    end

end