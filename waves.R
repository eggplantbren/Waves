# Wave question
# Part (a)
dx = 0.001
x = seq(0, 1, by=dx)

# The initial conditions of the wave
v = rep(0, length(x))
y = dnorm(x, 0.5, 0.1)

# Part (b)
D = diag(length(x))
D = -2*D
D[row(D) == col(D) - 1] = 1
D[row(D) == col(D) + 1] = 1
D = D/dx^2
