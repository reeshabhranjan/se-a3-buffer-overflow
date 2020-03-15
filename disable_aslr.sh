echo "disabling aslr..."
sudo su <<HERE
echo 0 > /proc/sys/kernel/randomize_va_space
exit
HERE
echo "checking aslr status..."
cat /proc/sys/kernel/randomize_va_space