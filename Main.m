function Main()

disp('===========================================');
disp('|          Welcome to MMU hospital         |');
disp('===========================================');

Pnum = input('Enter the number of patients  => ');
k1=[1,2,3,4,0.25,0.25,0.25,0.25];
k1table = tableData(k1);

k2=[2,3,4,5,0.25,0.25,0.25,0.25];
k2table = tableData(k2);

interArrTime = [1,2,3,6,0.30,0.35,0.20,0.15];
ArrTimeTable = tableData(interArrTime);

RNs = []; % random numbers for service time
RNa = []; % random numbers for inter arrival time

printf('\nType of random number generator:\n');
printf('1. Linear Congruential Generator (LCG)\n');
printf('2. Inversive congruential generator \n');
printf('3. Freemat built-in rand() function\n');
Choice = input ('Enter your Choice => ');
RNs = RNG(Pnum,Choice);
RNa = RNG(Pnum-1,Choice);


printf('\nchose the waiting line rule:\n');
printf('1. one by one \n');
printf('2. dependeing on the free one \n');
waitingchose = input ('Enter your Choice => ');
kios =[];
if (waitingchose == 1)







