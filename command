stat [file] --> show access, modification time
ls -l or -lt -- modification time
ls -lu -- access time
ls -lc -- changed time



to update access,modfction,changed time --> touch  [file]
to update access & changed time --> touch -a [file]
to update modfication & changed time --> touch -m [file]
to update modfication time to certain datetime --> touch -mt [date&time] [file]
to update access & modfication time to certain datetime --> touch -d [date&time] [file]
to change access & modfication time of a file with access &  modfction time of another file --> touch file1 -r file2
