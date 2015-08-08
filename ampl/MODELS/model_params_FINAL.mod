
param n;

param income_median{j in 1..n};

param dist_util{i in 1..n};

param zip{j in 1..n};

var store_iterator, integer;
subject to Max: store_iterator <= n;
subject to Min: store_iterator >= 1;

var distance;
subject to Max_dist: distance <= 13;
subject to Min_dist: distance >= 0;

var ave_income;
subject to ave: ave_income = sum {i in 1..n} (income_median[i])/n;

var x{1..n};
subject to value_x {i in 1..n}: x[i] = 3 -(dist_util[i])/2738.81 + sum {j in 1..n} ((0 -(20/(0.0396573*income_median[j])) - ave_income*abs(income_median[j] - income_median[i])/(683746*income_median[j])));

var y;
subject to max_y: y = max {i in 1..n} x[i];