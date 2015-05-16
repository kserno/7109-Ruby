loop do
nums = gets.strip.split(/\s+/).map(&:to_f)
if (nums[0]!=-1 and nums[1]!=-1) then
c=(nums[0]/nums[1])
perc=c*100
str=""
s= perc.round(0)
n= 20*c
pc=20-s.to_s.length
for i in 0..19 
	if (i<n) then str[i]="*" else str[i] = "-" end
end
case pc
when 18
	str[9..10]=s.to_s+"%"
when 17
	str[9..11]=s.to_s+"%"
when 16
	str[8..11]=s.to_s+"%"
end
print str
else
break
end
end