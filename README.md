
# notebook

Note, for the notebook called “smina” docking, I just uploaded it here for my convenience when I need it since I am bad at managing files, I do not have any credit on this notebook at all, you should visit https://www.linkedin.com/pulse/using-google-colab-protein-ligand-docking-leela-sriram-dodda for its original link.

If you can't get access to run.sh and analysis python script when using ABFE notebook, you may want to download it here

https://qutesun.ml/post18.html

19/04/2021

-----------------------------------------------------------------------
This is mainly for my purpose of doing molecular modeling, so there might be some Chinese inside the notebook
if you can't understand that, you could write an email to quantaosun@gmail.com， potentially, I may be able to provide all English versions.

Many of the codes inside the notebooks are other people's brilliant ideas which I just borrowed from them, I have tried to claim all possible sources where they come from either in English or in Chinese, in most cases you can get to the source by a URL link.

The purpose of my notebooks is similar to many others, that is to democratize the wall of doing molecular modeling, reduce the cost of drug design and make people's life easier.

The format may be not ideal, I will continue to improve that part.

for the  conda_rdkit_openmm_on_google_colab_modified_by_Tao.ipynb, you may want to use it with the following two links open in your browse
https://github.com/openmm/openmm/blob/master/examples/input.pdb 
http://docs.openmm.org/latest/userguide/application.html#a-first-example

for the ABFE which is to calculate the absolute free energy of a protein and a ligand, you may want to use it with these two links open 
http://www.alchemistry.org/wiki/Absolute_Binding_Free_Energy_-_Gromacs_2016
http://www.mdtutorials.com/gmx/complex/index.html
Note that the ABFE needs quite a lot of computer resources, you may want to split your job into several sub-jobs.

for the RBFE which is to calculate the relative free energy of two ligands, you may want to use it with the links below,
https://siremol.org/tutorials/ligandswap/README.html (2021-04-18)

For my FEP_by_NAMD notebook, you could head to have a look at my blog as well
https://qutesun.ml/post6.html 2021-04-21

For the Namd-charmm GUI notebook, it is derived from a youtube channel, which I will attach the link soon. 2021-04-21

For the ipymol notebook, it is copied from another source which I list inside the notebook. 2021-04-29

The job control bash script "gromacs_abf_run.sh" was added for The ABFE ipynb for gromacs simulation, gpu command improved. 
Two "namd_charm_gui_solution_md.csh/sh" files added, for the purpose of doing a normal protein-ligand simulation, based on the input generator of Charmm GUI. The coreponding workflow is not provided here, so you should go to Charmm GUI and read how to do a proper solution simulation. But why there are two  script in csh, and sh respectively ? Well, the csh one is the default one come with Charmm GUI, it is handy to be used on google colab, but for my personal use, I sometime need to run the job on some other clound platform that I can't install a proper csh shell, so the bash/sh version is provided here for that purpose. If you want to know more about how to convert the csh script to a bash script, you might want to visit my site https://quantaosun.github.io/post23.html    2021-07-07


Quantao

quantaosun@gmail.com
