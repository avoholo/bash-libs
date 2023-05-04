# For Loop

## nested loop

~~~bash
IP_ADDRESS=("13.209.203.112" "3.36.118.94" "52.79.109.239" "3.39.240.191")
PORTS=("8080" "8092" "5601")
cnt=1

for i in "${IP_ADDRESS[@]}"
do
  for j in "${PORTS[@]}"
  do
    ...
    ...
  done
done
~~~

<br>

# While Loop

## always true

~~~bash
while true; do
  port_scan
  sleep 10
done
~~~



<br>

# If statements

## double brackets ( [[ ]] )

**using [[ ]] vs not using it**

~~~bash
# what's the difference between those two?

if ! nc -z $i $j; then
      echo "    IP ADDRESS $cnt - $i:$j CLOSED"

if [[ ! nc -z $i $j ]]; then
      echo "    IP ADDRESS $cnt - $i:$j CLOSED"
~~~

`if ! nc -z $i $j;` : checks exit status

`if [[ ! nc -z $i $j ]];` : checks the ouput

<br>

# Lists

## iterating lists

~~~bash
IP_ADDRESS=("13.209.203.112" "3.36.118.94" "52.79.109.239" "3.39.240.191")
PORTS=("8080" "8092" "5601")

for i in "${IP_ADDRESS[@]}"
~~~

<br>



# Dates

## extract only time

~~~bash
echo "*** Port Scan Executed at $(date -u +%T) ***"

> STRING input과 원하는 output 얻는 방법
% date --date='2021-06-30T05:03:02Z' +"%M %D %h %C %Y %s"
03 06/30/21 Jun 20 2021 1625029382


> timestamp 값을 입력값으로 하기
% date --date='@2147483647'
Tue Jan 19 12:14:07 KST 2038
~~~

<br>