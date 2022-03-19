function y=wait2(Pnum,A,k1,k2)

ch =[];


% first row in the system to kios 1 
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
    x=0; % KIOS 1
    c=0; % KIOS 2 
    while (ch(7,i-x) ~= 1)
          if (x+1 == i) 
   break;
          else
           x=x+1;
          end
        end 
      if (A(6,i) >= ch(3,i-x) && ch(7,i-x) == 1)
      ch(1,i) = A(6,i);
      ch(2,i) = retunNum(k1,RNs(i));
      ch(3,i) = ch(1,i) + ch(2,i);

      ch(4,i)= -1;
      ch(5,i) = -1;
      ch(6,i)= -1;

      ch(7,i) = 1;
      ch(8,i) = 0;
      elseif(A(6,i) < ch(3,i-x) && ch(7,i-x) == 1)
              while (ch(7,i-c) ~= 2)
                  if (c+1==i)
                  break;
         else
           c=c+1;
              end
        end 
            if (ch(7,i-c) == 2 && A(6,i) >= ch(6,i-c))
            
            A(1,i)= -1;
            A(2,i) = -1;
            A(3,i)= -1;

            ch(4,i) = A(6,i);
            ch(5,i) = retunNum(k2,RNs(i));
            ch(6,i) = ch(4,i) + ch(5,i);
            ch(7,i) = 2;
            ch(8,i) = 0;
        end
      else
            time = A(1,i-x) - A(6,i); 
            ch(1,i) = A(6,i) + time;
            ch(2,i) = retunNum(k1,RNs(i));
            ch(3,i) = A(1,i) + A(2,i);
            ch(4,i)= -1;
            ch(5,i) = -1;
            ch(6,i)= -1;
            ch(7,i) = 1;
            ch(8,i) = time;
                  
      end
end
y = ch;
           
