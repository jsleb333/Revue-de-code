#Sequential process
for i in $(seq 1 8)
do
    echo "Hey!"
    sleep 1s
done

#parallel process -- without sleeping completed
for i in $(seq 1 8)
do
     echo "Hey!"
     sleep 2s &
done

#parallel process -- with sleeping completed
for i in $(seq 1 8)
do
     echo "Hey!"
     sleep 2s &
done
wait

#this scheme can create more processes that there are cores
for i in $(seq 1 16)
do
     echo "Hey!"
     sleep 2s &
done
wait

#--------------------------------------------------------------------------
#this might be a problem for large amount of processes : we do not want
#to bust our memory, and anyway, only a number equal to the number of cores
#can be performed in parallel
#--------------------------------------------------------------------------

#a possible scheme
number_of_cores=$(grep -c ^processor /proc/cpuinfo)
for i in $(seq 1 16)
do
    if (( $i % $number_of_cores == 0))
    then
        wait
    fi
    echo "Hey!"
    sleep 2s &
done

#However, working with conditional statements in bash is a mess. A solution is #to use gnu-parallel
