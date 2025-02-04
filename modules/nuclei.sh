#!/bin/bash
#Nuclei Scanner

url=$1

echo "Nuclei Scan" >> /app/results/$url-output.txt
printf "\n\n" >> /app/results/$url-output.txt

/app/modules/binaries/nuclei -u $url -t /app/modules/nuclei-template/ -severity critical,high,medium,low | tee -a /app/results/$url-output.txt

printf "\n\n\n" >> /app/results/$url-output.txt
printf "##########################################################################################\n" >> /app/results/$url-output.txt
printf "##########################################################################################" >> /app/results/$url-output.txt
printf "\n\n\n" >> /app/results/$url-output.txt
