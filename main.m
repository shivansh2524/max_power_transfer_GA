%this is the main function
v=input('Enter v:');
r1=input('Enter r1:');
n=input('Enter Popln size:');
m=input('Chromosome Length:');
ppn=randi(2,n,m)-1;
k=0;
fit=zeros(n,1);
while k==0
    for i=1:n
        fit(i,1)=fit_func(ppn(i,:),m,v,r1);
    end
    temp=[fit,ppn];
    temp=sortrows(temp,-1);
    disp(temp);
    ppn=temp(:,2:m+1);
    ppn=crossover(ppn,n,m);
    ppn=mutation(ppn,n,m);
    k=input('Enter k:');
end