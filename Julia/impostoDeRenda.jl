begin
    function impostoRetido(rendimento)
        aliquotas = [0.0, 7.5, 15.0, 22.5, 27.5]
        deducao = [0.0, 142.80, 354.80, 636.13, 869.36]
        limites = [0.0, 1903.99, 2826.66, 3751.06, 4664.69]
        faixa = 5;
        for i in 1:length(aliquotas)-1
            if limites[i] <= rendimento < limites[i+1]
                faixa = i
            end
        end
        IrRetido = (rendimento * aliquotas[faixa] / 100 - deducao[faixa])
        println(IrRetido)
        println(rendimento - IrRetido)
    end

    function contribuicaoINSS(rendimento)
        limites = [0.0, 1100.01, 2203.46, 3305.23, 6433.58]
        aliquotaINSS = [7.5,9.0, 12.0, 14.0] / 100
        desconto = 0.0
        base = min(rendimento, limites[end] -0.01)
        for i in 1:length(limites)-1
            if base > limites[i]
                desconto += min(base - limites[i],
                    limites[i+1] - limites[i]) * aliquotaINSS[i]
            end
        end
        println(desconto)
    end
end


rendimento = 5000
impostoRetido(rendimento)
contribuicaoINSS(rendimento)