echo "level,disk,time"
for level in 0 1 4 5; do
    for disks in $(seq 10 10 100); do
        time=`python3 raid.py -L $level -t -c -n 100 -D $disks | grep totalTime | cut -d ' ' -f3`
        echo "$level, $disks, $time"
    done
done