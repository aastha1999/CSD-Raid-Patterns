# CSD-Raid-Patterns

This homework is based on the simulator provided by the OSTEP book.

https://github.com/remzi-arpacidusseau/ostep-homework/blob/master/file-raid/raid.py (Links to an external site.)

Get familiar with the simulator:

./raid.py -h

For example the command 

./raid.py -n 5 -R 20  -D 4 -C 8k -w 50 -L 5 -c 

Simulates 5 I/O requests (with range 20 blocks) on 4 Disks with Chunk size 8K  with 50% write and explains which request is served by which disk under raid 5. Notice that Writes cause multiple reads and write. 

Use the simulator to perform some basic RAID mapping tests. Run with different levels (0, 1, 4, 5) and see if you can figure out the mappings of a set of requests. For RAID-5, see if you can figure out the difference between left-symmetric and left-asymmetric layouts. Use some different random seeds to generate different problems than above.

Do the same as the first problem, but this time vary the chunk size with -C. How does chunk size change the mappings?

Answer the following questions:

Use the timing mode of the simulator (-t) to estimate the performance of 100 random reads to the RAID, while varying the RAID levels, using 4 disks.

Do the same as above, but increase the number of disks. How does the performance of each RAID level scale as the number of disks increases? Make a plot.

Do the same as above, but use all writes (-w 100) instead of reads. How does the performance of each RAID level scale now? Can you do a rough estimate of the time it will take to complete the workload of 100 random writes?

Run the timing mode one last time, but this time with a sequential workload (-W sequential). How does the performance vary with RAID level, and when doing reads versus writes? How about when varying the size of each request? What size should you write to a RAID when using RAID-4 or RAID-5?

Suppose you have a workload of Sequential Writes and Random reads, with Write to read ratio of 90:10. Can you use the simulator to find out which RAID level is the best to use? You can make assumptions and set other parameters?
