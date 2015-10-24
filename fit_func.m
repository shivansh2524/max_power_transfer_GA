function fit_val=fit_func(chromo,m,v,r1)
r2=0;
for i=1:m
    r2=r2+chromo(1,i)*2^(m-i);
end
fit_val=calc_power(v,r1,r2);
end