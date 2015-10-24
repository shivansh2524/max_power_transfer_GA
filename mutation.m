function ppn=mutation(ppn,n,m)
for i=1:n
    c=randi(m,1);
    if ppn(i,c)==1
        ppn(i,c)=0;
    else
        ppn(i,c)=1;
    end
end
end