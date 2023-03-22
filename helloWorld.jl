println("Hello World!\n");

calculo = 1 + 1;
println(calculo);


println(pi * 1)

soma(8, 99)

function soma(x, y)::Int8
    return x + y
end;

println(count(i->(i<= 100), [1, 2, 3, 4, 5]))

media()
function media()
    notas = [9,8,9,8]
    numeroNotas = count(i->(i<= 100), notas)
    somaNotas = 0;
    for i in notas
        somaNotas = somaNotas + i;
    end
    println(somaNotas / numeroNotas)
end