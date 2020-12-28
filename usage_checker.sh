#Total size and used amount of disk
used=`df -h | cut -c 24-26 | head -4 | tail -1`
size=`df -h | cut -c 18-20 | head -4 | tail -1`

#Finding out of values
x=$(expr $used \* 1000)
using_rate=$(expr $x / $size)

echo "Computer has ${size} GB disk space"
echo "Computer is using ${used} GB of system"
echo "Computer is using ${using_rate}% of system"
