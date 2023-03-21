## display a number
ssd_0=126;
ssd_1=48;
ssd_2=109;
ssd_3=121;
ssd_4=51;
ssd_5=91;
ssd_6=95;
ssd_7=112;
ssd_8=127;
ssd_9=123;
ssd_10=119;
ssd_11=31;
ssd_12=78;
ssd_13=61;
ssd_14=79;
ssd_15=71;

## state definition 0: stop, 1: count down (2hz), 2: count up (1hz)
start_value=0
state=0

display() # function display
{
    value=$1 # the first argument is the number to be shown on SSD
    echo $2 > /sys/class/gpio/gpio93/value; 
    # the second argument determines which digit is used (GPIO ID 93 is ssdcat)

    value=$(($value%16)) # one hexadecimal digit
    sig=$((ssd_$value)) # convert the value to pmod format

    for i in 0 1 2 3 4 5 6;
    do
        pin=$((92-$i)); # JB: 90~92
        if [ $i -gt 2 ];
        then
        pin=$(($pin-4)); # JA:82~85
        fi;
    echo $(($sig&0x01)) > /sys/class/gpio/gpio$pin/value; 
    sig=$(($sig/2)); 
    # write to the corresponding segment
    done;
}

check_btnc()
{
    ## check btnc
    btnc=$(cat /sys/class/gpio/gpio81/value)
    if [[ $btnc -eq 1 ]]
    then
        echo 1
    else
        echo 0
    fi
}

check_btnd()
{
    ## check btnd
    btnd=$(cat /sys/class/gpio/gpio80/value)
    if [[ $btnd -eq 1 ]]
    then
        echo 1
    else
        echo 0
    fi
}

check_btnu()
{
    ## check btnu
    btnu=$(cat /sys/class/gpio/gpio79/value)
    if [[ $btnu -eq 1 ]]
    then
        echo 1
    else
        echo 0
    fi
}

## stop state behaviour
stop_state()
{
    ## parameter
    cur_value=$start_value
    rate=0.01
    displaying=0

    ## stop state
    while [[ $state -eq 0 ]]
    do
        ## read_sw and display it for a little while
        start_value=$(read_sw | awk '{print $2}')
        let "displaying= 1 - displaying"
        if [[ $displaying -eq 1 ]]
        then
            display $(($start_value/16)) $displaying
        else
            display $start_value $displaying
        fi

        ## checkingbutton and change the state
        if [[ $(check_btnd) -eq 1 ]] 
        then 
            state=1
        elif [[ $(check_btnu) -eq 1 ]] 
        then 
            state=2
        fi
    done
}

## count down state behaviour
countdown_state()
{
    ## parameter
    start_value=$1
    cur_value=$start_value
    elapsed=0
    rate=0.01

    ## countdown
    while [[ $state -eq 1 ]]
    do
        echo $cur_value >&2
        let "displaying= 1 - displaying"
        if [[ $displaying -eq 1 ]]
        then
            display $(($cur_value/16)) $displaying
        else
            display $cur_value $displaying
        fi

        let "elapsed++"
        if [[ $elapsed -eq 25 ]]
        then
            elapsed=0        
            let "cur_value--"
            if [[ $cur_value -lt 0 ]]
            then
                cur_value=$start_value
            fi
        fi

        ## checkingbutton and change the state
        if [[ $(check_btnc) -eq 1 ]] 
        then 
            state=0
        fi

        sleep $rate
    done
}

## count up state behaviour
countup_state()
{
    ## parameter
    start_value=$1
    cur_value=$start_value
    elapsed=0
    rate=0.01

    ## countdown
    while [[ $state -eq 2 ]]
    do
        echo $cur_value >&2
        let "displaying= 1 - displaying"
        if [[ $displaying -eq 1 ]]
        then
            display $(($cur_value/16)) $displaying
        else
            display $cur_value $displaying
        fi

        let "elapsed++"
        if [[ $elapsed -eq 50 ]]
        then
            elapsed=0        
            let "cur_value++"
            if [[ $cur_value -gt 255 ]]
            then
                cur_value=$start_value
            fi
        fi

        ## checkingbutton and change the state
        if [[ $(check_btnc) -eq 1 ]] 
        then 
            state=0
        fi

        sleep $rate
    done
}

# Main logic
while [[ 1 ]] 
do
    if [[ $state -eq 0 ]]
    then
        stop_state
    elif [[ $state -eq 1 ]]
    then
        countdown_state $start_value
    elif [[ $state -eq 2 ]]
    then
        countup_state $start_value
    else
        stop_state
    fi

    sleep 0
done
