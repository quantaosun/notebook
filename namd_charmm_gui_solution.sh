#!/bin/bash
#1.Generate 10 conf files for 10 ns simulation
for (( a=1; a<=10; a++ ))
do
cat step5_production.inp > step5_production.$a.inp
done
#2.In the 1st loop, we will only substitute the output name from "step5_production" to "step5_production.$a", that's all
for (( a=1; a<=10; a++ )); 
do sed -i "s/step5_production/step5_production.$a/" step5_production.$a.inp; 
done
#3.In this for loop we gonna to replace the input file name from "step4equlibration" to "step5_production.$($a-1)" from 2 to 10, while keep the 1st step5_production.1.inp untouched.
for (( a=2; a<=10; a++ )) 
do sed -i "s/step4_equilibration/step5_production.$[a-1]/" step5_production.$a.inp
done
#4.Finally, we could run on AI Studio, in a bash style, not as a csh style.
#with namd2 (modify the+p4 option with your actual CPU numbers) run command inserted inside the loop, something like below:

#5.Equilibration
/home/aistudio/NAMD_Git-2021-05-17_Linux-x86_64-multicore-CUDA/namd2 step4_equilibration.inp > step4_equilibration.out2 &&
#6.Production
for (( a=1; a <=10; a++ ))
do
/home/aistudio/NAMD_Git-2021-05-17_Linux-x86_64-multicore-CUDA/namd2 +p4  step5_production.$a.inp > step5_production.$a.out3
done
