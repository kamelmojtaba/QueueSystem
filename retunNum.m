function x=retunNum(y,n)
 
    for(i=1:4)
  
    if (n <=20)
        x=i;
        break;
    else if (n <=y(5,i) && n>y(5,(i-1)))
            x=i;
        
            break;
        end
end
end