#Declaration of parameters

param n;
param t;
param p{i in 1..n};
param r{i in 1..n};
param m{i in 1..n};

#Declaration of variables

var x {i in 1..n} >=0;

#Objective Function

maximize revenues: sum {i in 1..n} p[i]*x[i] ;

#Constraints

subject to Aval_Time: sum{i in 1..n} (1/r[i])*x[i] <= t;
subject to Max_Flavor {i in 1..n}: x[i]<=m[i];