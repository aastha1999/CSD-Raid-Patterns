for level in 0 1 4 5; do
    writes = `./raid.py -L $level -t -n 100 -c -w 100 -W seq | tail -n 2 | cut -d ' ' -f3`
    reads = `./raid.py -L $level -t -n 100 -c -w 0 -W seq | tail -n 2 | cut -d ' ' -f3`
    echo "Level" $level "\nWrite time = "$writes "\n Read time = "$reads"\n";
done