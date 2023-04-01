import Pkg; 
Pkg.add("GLMakie")
GLMakie.activate!()
grid = zeros(2000, 2000)
fig = Figure(resolution=(2000, 2000))
ax = Axis(fig[1, 1], aspect=DataAspect())
hm = heatmap!(ax, grid)
record(fig, "renderlines.mp4", 1:500; framerate=30) do i
    grid[1:10:2000, i] .= 1
    grid[i, 1:10:2000] .= 1
    hm[3][] = grid
end