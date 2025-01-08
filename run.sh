#!/bin/bash
touch ~/it_works_for_real.txt

#canary
rclone copy diskspace.dat gdrive:

#rm ~/cam1/2022*.jpg
rm ~/cam2/2022*.jpg

#Disk-space tracking
df -h --total > diskspace.txt
date >> diskspace.txt
rclone copy diskspace.txt gdrive:

#Camera-operation monitoring
echo "Version 20250108 10:09am: Cam 1" > last_images.txt
ls -1 ~/cam1/ | tail -1 >> last_images.txt
echo "Cam 2" >> last_images.txt
ls -1 ~/cam2/ | tail -1 >> last_images.txt
date >> last_images.txt
rclone copy last_images.txt gdrive:

#Uncomment below to update the acquire script from the repo prototype.
#cp ~/acquire.sh ~/acquire-`date`
#cp ~/booster-cmd/acquire.sh.prototype ~/acquire.sh
#chmod a+x ~/acquire.sh
