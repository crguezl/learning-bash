a="hello"
echo ${#a} # length of the string
echo $a
echo ${a:1}
echo ${a:1:1}
echo ${a:4:5}
# An array
month=("Jan" "Feb" "Mar" "Apr" "May" "Jun" "Jul" "Aug" "Sep" "Oct" "Nov" "Dec")
echo ${#month[@]]} # 12 
echo ${#month[*]]} # 12 
echo ${month[3]}