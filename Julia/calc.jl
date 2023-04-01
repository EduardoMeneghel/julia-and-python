function atrator2D(r)
    x = rand()
    X = [x]
    for i in 1:999
    x = r*x*(1-x)
    push!(X, x)
    end
    A = X[1:end-1]
    B = X[2:end]
    p = scatter(A, B, marker=3, legend=false)
    savefig("./Atrator2D.png")
    end

    atrator2D(10)