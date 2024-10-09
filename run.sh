#!/bin/bash
touch ~/it_works_for_real.txt

df -h --total > diskspace.dat
rclone copy diskspace.dat gdrive:

#rm ~/cam1/2022*.jpg
#rm ~/cam2/2022*.jpg

#Uncomment below to update the acquire script from the repo prototype.
#cp ~/acquire.sh ~/acquire-`date`
#cp ~/booster-cmd/acquire.sh.prototype ~/acquire.sh
#chmod a+x ~/acquire.sh
