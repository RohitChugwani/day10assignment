read -p "enter first number" a
read -p "enter second number" b
read -p "enter third number" c
declare -A dict
declare -a array
declare -a arraydes
dict[exp1]=$((a+b*c))
dict[exp2]=$((a*b+c))
dict[exp3]=$((c+a/b))
dict[exp4]=$((a%b+c))
array[0]=${dict[exp1]}
array[1]=${dict[exp2]}
array[2]=${dict[exp3]}
array[3]=${dict[exp4]}
for((j=1;j<4;j++))
do
key=${array[j]}
i=$((j-1))
while(( i>=0 && ${array[i]}>key))
do
array[$((i+1))]=${array[i]}
i=$((i-1))
done
array[$((i+1))]=$key
done
echo "array in ascending order" ${array[@]}
