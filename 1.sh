for level in 0 1 4 5; do
    value=`./raid.py -L $level -t -n 100 -c | tail -n 2 | cut -d ' ' -f3`
    echo "For level =" $level "\nValue =" $value "\n";
done