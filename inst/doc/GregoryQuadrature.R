## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(GregoryQuadrature)

## -----------------------------------------------------------------------------
# define number of abscissas
n_nodes = 11

# define order of evaluation
order = 8

# calculate step-size
h = 2/(n_nodes-1)

# evaluate the integrand
x = pracma::linspace(-1, 1, n_nodes)
f = exp(x)

# determine weights
w = Gregory_weights(n_nodes, h, order)

# calculate the integral
int = f %*% w

# calculate the error for known integrals
exact = exp(1) - exp(-1)
error = int - exact

print(error)

