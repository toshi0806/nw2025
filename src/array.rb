a=[10, 20, 50, 30]
# int[] a = {10, 20, 50, 30}

# aの要素を全て表示
# for(int i=0; i<a.length; i++) {
#   System.out.println(a[i]);
# }
for i in 0..a.length
  puts a[i]
end

# int i=0
# while(i<a.length) {
#   System.out.println(a[i]);i++;
# }
i=0
while i<a.length
  puts a[i]
  i+=1
end

# for(int i: a) {
#   System.out.println(i);
# }
for i in a
  puts i
end

a.each do |i|
  puts i+1
end

# aの最初の要素が 偶数だったら aから取り除く
# aの全ての要素を表示
a.shift if a[0] % 2 == 0
a.each do |i| puts i end
