data {
  int<lower=0> N;
  real dbh[N]; 
  real h[N];
  real v[N];
}

parameters {
  real<lower=0, upper=2> theta_0;
  real<lower=0, upper=2> theta_1;
  real<lower=0, upper=2> theta_2;
  real<lower=0.01, upper=1> sigma;
}

model{
  real mu[N];
  for (i in 1:N)
  {
    mu[i]=log(theta_0*(dbh[i]^theta_1)*(h[i]^theta_2));
  }
  v ~ lognormal(mu, sigma);
  theta_0 ~ gamma(0.01, 0.01);
  theta_1 ~ gamma(0.01, 0.01);
  theta_2 ~ gamma(0.01, 0.01);
  sigma ~ gamma(0.01, 0.01);
}
