
find . -name todo.txt -- file named todo.txt in current directory, add -i for case insensitivity
find . -name todo.* ---> find using pattern
find . -name todo.* -delete   ---> find and delete wo confirmation
find . -name todo.* -ls   ---> find and list
find /etc -type d 	--> find directories in /etc , use -maxdepth 2 --> for 2 lvels depth
find /var -type f -size 100k -ls	--> find by size, or +10M -->greater than 10M
find /var -type f -mtime 0  -ls	--> find files modiFied within 24hrs
find /var -type f -atime 1  -ls	--> find files accessed at lease 2 days ago
find /var -type f -user joe  -ls	--> find files that belongs to user joe
find /var -type f -not -group root  -ls	--> find files that not belongs to group root




