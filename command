
ls -li --> to show inode
stat filename --> to find no of hard links for the file
ln [file to make hardlink] [newHardlinkName] --> make new hardlink 
find . -inum [inode number] --> to find hardlinks for given inode number
find /usr/ -type f -links +1 -ls --> find all files in /usr that have more than 1 hardlinks

ln -s fileToRefer newSymLinkName --> create softlink



Note: hardlinks cant refer to partitions/directories , softlinks can.
But if you move the file being referred softlinks are broken.
