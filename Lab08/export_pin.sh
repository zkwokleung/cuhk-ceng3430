# echo "++Exporting Pmod connector JAs & JBs"

for i in 0 1 2 3;
do
    # GPIO IDs refer to the system.ucf file, remember add 54 offset due to the first 54 IDs are used for MIO
    # GPIO IDs of JA and JB Pmods are not continous, so we need to export them separately as follows
    ja=$(($i+82)); 
    jb=$(($i+90)); 
    
    echo $ja > /sys/class/gpio/export; # write to the export script to export the new GPIO
    echo $jb > /sys/class/gpio/export;
    echo out > /sys/class/gpio/gpio$ja/direction; # set the GPIO as output pin 
    echo out > /sys/class/gpio/gpio$jb/direction;
done;

# buttons
echo 81 > /sys/class/gpio/export;
echo 80 > /sys/class/gpio/export;
echo 79 > /sys/class/gpio/export; # write to the export script to export the new GPIO
echo in > /sys/class/gpio/gpio81/direction; # set the GPIO as output pin 
echo in > /sys/class/gpio/gpio80/direction;
echo in > /sys/class/gpio/gpio79/direction;


