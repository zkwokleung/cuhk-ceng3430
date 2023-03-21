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
    btnu=$(cat /sys/class/gpio/gpio81/value)
    if [[ $btnu -eq 1 ]]
    then
        echo 1
    else
        echo 0
    fi
}

## count down at a centain rate
countdown_check()
{
    ## parameter
    start_value=$1
    cur_value=$start_value
    rate=1

    ## countdown
    while [[ 1 ]]
    do
        echo $cur_value >&2
        display $cur_value
        ## checkingbutton and change the state
        if [[ $(check_button $state) -eq 1 ]] 
        then 
            state=0
            return
        fi
        let "cur_value--"
        if [[ $cur_value -lt 0 ]]
        then
            cur_value=$start_value
        fi
        sleep $rate
    done
}

## stop state behaviour
stop_state()
{
    ## parameter
    start_value=$1
    cur_value=$start_value
    rate=1

    ## stop state
    while [[ 1 ]]
    do
        echo $cur_value >&2
        display $cur_value
        ## checkingbutton and change the state
        if [[ $(check_btnd) -eq 1 ]] 
        then 
            state=1
            return
        elif [[ $(check_btnu) -eq 1 ]] 
        then 
            state=2
            return
        fi
        sleep $rate
    done
}

## count down state behaviour
countdown_state()
{
    ## parameter
    start_value=$1
    cur_value=$start_value
    rate=0.5

    ## countdown
    while [[ 1 ]]
    do
        echo $cur_value >&2
        display $cur_value
        ## checkingbutton and change the state
        if [[ $(check_btnc) -eq 1 ]] 
        then 
            state=0
            return
        fi
        let "cur_value--"
        if [[ $cur_value -lt 0 ]]
        then
            cur_value=$start_value
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
    rate=1

    ## countdown
    while [[ 1 ]]
    do
        echo $cur_value >&2
        display $cur_value
        ## checkingbutton and change the state
        if [[ $(check_btnc) -eq 1 ]] 
        then 
            state=0
            return
        fi
        let "cur_value++"
        if [[ $cur_value -gt 15 ]]
        then
            cur_value=$start_value
        fi
        sleep $rate
    done
}

# Main logic

## state definition 0: stop, 1: count down (2hz), 2: count up (1hz)
start_value=0
state=0
while [[ 1 ]] 
do
    case "$state" in
        0)
            stop_state
            ;;
        1)
            ## count down state
            countdown_state
            ;;
        2)
            ## count up state
            countup_state
            ;;
    esac
done