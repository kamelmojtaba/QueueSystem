function y=ExpG(Pnum)
RN =[];
for(i=1:Pnum)
    e = exprnd(100,Pnum,1);
    RN(i) = e;
end;
y = RN;
