#!/bin/bash
touch ~/it_works_for_real.txt

#copies the crontab's errorlog out to the Drive
rclone copy ~/errorlog.txt gdrive:

#Timestamp test to see if I can create a new file and push it as of January 10
date > timestamp.txt
uptime >> timestamp.txt
rclone copy timestamp.txt gdrive:

#canary
rclone copy diskspace.dat gdrive:

#rm ~/cam1/2022*.jpg
#rm ~/cam2/2022*.jpg #Already executed, January 2025
#rm ~/cam1/2023*.jpg
#rm ~/cam2/2023*.jpg #Attempting to execute, August 2025
#rm ~/cam1/2024*.jpg
#rm ~/cam2/2024*.jpg #Attempting to execute, August 2025



#Disk-space tracking
df -h --total > diskspace.txt
ls ~/ >> diskspace.txt
date >> diskspace.txt
rclone copy diskspace.txt gdrive:

#Dmesg error-reporting
dmesg | tail > dmesg.txt
date >> dmesg.txt
rclone copy dmesg.txt gdrive:

#Camera-operation monitoring
echo "Version 202501010 12:18pm: Cam 1" > last_images.txt
ls -1 ~/cam1/ | tail -1 >> last_images.txt
echo "Cam 2" >> last_images.txt
ls -1 ~/cam2/ | tail -1 >> last_images.txt
dmesg | tail >> last_images.txt
date >> last_images.txt
rclone copy last_images.txt gdrive:

#Uncomment below to update the acquire script from the repo prototype.
#cp ~/acquire.sh ~/acquire-`date`
#cp ~/booster-cmd/acquire.sh.prototype ~/acquire.sh
#chmod a+x ~/acquire.sh
