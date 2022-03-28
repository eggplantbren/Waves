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

# Function to compute updated position and velocity
update = function(y_old, v_old, dt=0.001)
{
    y_new = y_old + dt*v_old
    v_new = v_old + dt*y_new
    list(y_new=y_new, v_new=v_new)
}
