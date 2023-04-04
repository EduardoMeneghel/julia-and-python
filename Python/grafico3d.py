from mpl_toolkits.mplot3d import axes3d
import matplotlib.pyplot as plt
 
# Criando a figura e projeção em 3D
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')
 
# Utilizando dados de teste
X, Y, Z = axes3d.get_test_data(0.1)
 
# Criando um Plot básico
ax.plot_wireframe(X, Y, Z, rstride=20, cstride=20)
 
# Exibindo o gráfico criado
plt.show()