function y =  RNG(Pnum,Choice)
RN = [];
if (Choice ==1)
    RN = LCG(Pnum);
elseif (Choice == 2)
    RN = LCGInversive(Pnum);
elseif (Choice == 3)
    RN = ExpG(Pnum);
end;  
y = RN;

