set -x
a=4
b=$a+1
echo $b # 4+1
((b=$a+1))
echo $b # 5