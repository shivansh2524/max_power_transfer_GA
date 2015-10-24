function nppn=crossover(ppn,n,m)
k=0;
nppn=zeros(size(ppn));
while k<n-1
    k=k+1;
    p=randi(m-1,1);
    nppn(k,:)=[ppn(k,1:p),ppn(k+1,p+1:m)];
end
end