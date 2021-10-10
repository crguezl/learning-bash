string="hello-world"
prefix="hell"
suffix="ld"
foo=${string#"$prefix"}
foo=${foo%"$suffix"}
foo=${foo#o-}
echo "${foo}"