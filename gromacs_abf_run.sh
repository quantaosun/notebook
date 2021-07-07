for (( a = 0; a <=2; a++ ))
   do
     for (( b = 6; b <10; b++ ))
          do
          cd lambda.$a.$b
          mkdir ENMIN
          cd ENMIN
          gmx grompp -f ../../MDP/ENMIN/enmin.$a.$b.mdp -c ../../solv_ions.gro -p ../../topol.top -n ../../index_jz4.ndx -o enmin.tpr
           gmx mdrun -v -stepout 1000 -s enmin.tpr -deffnm enmin -nb gpu
           cd ../
           mkdir NVT
           cd NVT
            gmx grompp -f ../../MDP/NVT/nvt.$a.$b.mdp -c ../ENMIN/enmin.gro -p ../../topol.top -n ../../index.ndx -o nvt.tpr -r ../../solv_ions.gro
           gmx mdrun -stepout 1000 -s nvt.tpr -deffnm nvt -nb gpu
           cd ../
           mkdir NPT
            cd NPT
            gmx grompp -f ../../MDP/NPT/npt.$a.$b.mdp -c ../NVT/nvt.gro -t ../NVT/nvt.cpt -p ../../topol.top -n ../../index.ndx -o npt.tpr -r ../../solv_ions.gro
            gmx mdrun -stepout 1000 -s npt.tpr -deffnm npt -nb gpu
             cd ../
            mkdir PROD
            cd PROD
            gmx grompp -f ../../MDP/PROD/prod.$a.$b.mdp -c ../NPT/npt.gro -t ../NPT/npt.cpt -p ../../topol.top -n ../../index.ndx -o prod.tpr
            gmx mdrun -stepout 1000 -s prod.tpr -deffnm prod -dhdl dhdl -nb gpu

            cd ../../
            done
      done
