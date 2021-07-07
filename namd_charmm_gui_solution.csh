#!/bin/csh
#

# Generated by CHARMM-GUI (http://www.charmm-gui.org) v3.5
#
# The following shell script assumes your NAMD executable is namd2 and that
# the NAMD inputs are located in the current directory.
#
# Only one processor is used below. To parallelize NAMD, use this scheme:
#     charmrun namd2 +p4 input_file.inp > output_file.out
# where the "4" in "+p4" is replaced with the actual number of processors you
# intend to use.

set equi_prefix = step4_equilibration
set prod_prefix = step5_production
set prod_step   = step5

# Running equilibration step
namd2 ${equi_prefix}.inp > ${equi_prefix}.out

# Running production for 10 nanoseconds
set cnt    = 1
set cntmax = 10

while ( ${cnt} <= ${cntmax} )
    # create appropriate input file using ${prod_prefix}.inp as template
    if ( ${cnt} == 1 ) then
        set outputname = "${prod_step}_${cnt}"
        # change only the output name
        sed "s/${prod_prefix}/${outputname}/" ${prod_prefix}.inp > ${prod_step}_run.inp
    else
        @ cntprev = ${cnt} - 1
        set inputname  = "${prod_step}_${cntprev}"
        set outputname = "${prod_step}_${cnt}"
        # change input and output names from template file
        sed "s/${equi_prefix}/${inputname}/" ${prod_prefix}.inp | \
            sed "s/${prod_prefix}/${outputname}/" > ${prod_step}_run.inp
    endif

    # run the simulation for 1 nanosecond
    namd2 ${prod_step}_run.inp > ${outputname}.out

    @ cnt += 1
end


