function y = LCGInversive(Pnum) 
    RN=[];
    x = floor(1+99*rand(1));
    a = floor(1+99*rand(1,Pnum));
    c = floor(1+99*rand(1,Pnum));
    for (i=1:Pnum)
        el = ceil(mod((a(i)*x^(-1) + c(i)), 100) + 1);
        RN(i) = el;
       x = el;
    end;
  	y = RN;