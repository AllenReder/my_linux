# 获取总内存和已用内存
total=$(free | grep Mem | awk '{print $2}')
used=$(free | grep Mem | awk '{print $3}')

# 计算占用率
rate=$(echo "scale=2; $used / $total * 100" | bc)

echo "Memory Usage: $rate%"
