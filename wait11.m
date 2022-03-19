function y=wait1(Pnum,A,k1,k2)

ch =[];

ch(1,1) = A(6,1);
ch(2,1) = retunNum(k1,RNs(1)); % first kios 
ch(3,1) = ch(1,1) + ch(2,1);


ch(4,1)= -1;
ch(5,1) = -1; % second kios 
ch(6,1)= -1;

ch(7,1) = 1;
ch(8,1) = 0;

% second row to kios 2 
ch(1,2) = -1;
ch(2,2) = -1;
ch(3,2) = -1;

ch(4,2)= A(6,2);
ch(5,2) = retunNum(k2,RNs(2)); ;
ch(6,2)= ch(,2) + A(13,2);

ch(7,2) = 2;
ch(8,1) = 0;

for (i=3:Pnum)
if (rem(i,2)==0)
if (ch(4,i) > ch(6,i-2))
ch(4,i) = A(6,i);
else 
time = ch(4,i) - ch(6,i-2);
ch(4,i) = ch(4,i) + time;
end 
ch(1,i)= -1;
ch(2,i) = -1; % first
ch(3,i)= -1;

ch(5,i) = retunNum(k2,RNs(i)); % second kios 
ch(6,i) = ch(4,i) + ch(5,i);

ch(7,i) = 2;
ch(8,i) = time;
end
end
else
if (ch(1,i) > ch(3,i-2))
ch(1,i) = A(6,i);
else 
time = ch(i,1) - ch(3,i-2);
ch(1,i) = ch(1,i) + time;
end 
ch(2,i) = retunNum(k1,RNs(i)); % first kios 
ch(3,i) = ch(1,i) + ch(2,i);
ch(4,i)= -1;
ch(5,i) = -1; % second kios 
ch(6,i)= -1;
ch(7,i) = 1;
ch(8,i) = time;
end
end
end
y = ch;
           
