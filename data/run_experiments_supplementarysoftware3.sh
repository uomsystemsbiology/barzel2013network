#!/bin/sh

# Set up logfile
log=/home/sbl/barzel_et_al_2013/run_experiments.log

echo This script executes the MATLAB code in the SupplementarySoftware3 directory
echo of https://github.com/baruchbarzel/NatureBiotech-31-720.git

echo Output will be written to /home/sbl/barzel_et_al_2013/code/SupplementarySoftware3/

echo Copying the Barzel et al compiled code into the project directory | tee -a $log
cp -R /home/sbl/barzel_et_al_2013/compiled/SupplementarySoftware3/* -t /home/sbl/barzel_et_al_2013/code/SupplementarySoftware3 
sudo chmod 777 /home/sbl/barzel_et_al_2013/code/SupplementarySoftware3/run_RUN.sh
sudo chmod 777 /home/sbl/barzel_et_al_2013/code/SupplementarySoftware3/RUN

echo Executing SupplementaryScripts3 | tee -a $log
cd /home/sbl/barzel_et_al_2013/code/SupplementarySoftware3
./run_RUN.sh /usr/local/MATLAB/MATLAB_Runtime/v85

#sleep 2
#./Make 2>&1 | tee -a $log

echo Completed analysis | tee -a $log
$SHELL