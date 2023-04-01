println("Hello World!\n");

calculo = 1 + 1;
println(calculo);


println(pi * 1)


function soma(x, y)::Int8
    return x + y
end;

soma(8, 99)

println(count(i->(i<= 100), [1, 2, 3, 4, 5]))

notas = [9,8,9,8]

function media(notas)
    numeroNotas = count(i->(i<= 100), notas)
    somaNotas = 0;
    for i in notas
        somaNotas = somaNotas + i;
    end
    println(somaNotas / numeroNotas)
end

media(notas)
