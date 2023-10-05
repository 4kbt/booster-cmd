#!/bin/bash
touch ~/it_works_for_real.txt

cp ~/acquire.sh ~/acquire-`date`
cp ~/booster-cmd/acquire.sh.prototype ~/acquire.sh
chmod a+x ~/acquire.sh
