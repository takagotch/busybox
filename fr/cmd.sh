./busybox ls -l
./busybox ps
./busybox seq 1 5

./busybox
./busybox zcip --help

ln -s busybox pwd
./pwd

mkdir bbdir
for i in $(busybox --list)
do
  ln -s busybox bbdir/sh
done

PATH=$(pwd)/bbdir bbdir/sh

make defconfig 
make

/bin/echo $PATH
echo $PATH



