def imc(peso,altura)
    if altura == 0
        return 'Não é possível calcular o IMC com altura  = 0!'
    end
    imc_Calculado = peso / (altura * altura)
    imc_Calculado.round(1) #.ROUND ARREDONDA UMA CASA DECIMAL#
end