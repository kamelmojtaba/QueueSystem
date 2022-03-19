function x=control(choice,Pnum,RNs,RNa,k1,k2,interArrTime)
    A=[];

for (i=1:Pnum)
% the first column for the cust number 
    A(1,i)=i;
end

A(2,1)=0;
for (i=1:Pnum-1)
A(2,i+1)= RNa(i);   % the second column for RNa 
end 

A(3,1)=0;
for (i=1:Pnum-1)
A(3,i+1)= retunNum(interArrTime,RNa(i));
end 


A(4,1)=0;
for (i=2:Pnum)
    A(4,i)=A(4,i-1)+ A(3,i);
end

for (i=1:Pnum)
    A(5,i)=RNs(i);
end

for(i=1:Pnum)
A(6,i) = A(4,i);
end

if (choice == 1)
    x=wait1(Pnum,A,k1,k2);
elseif(choice == 2)

    x=A;
    