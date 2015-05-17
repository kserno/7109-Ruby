loop do
nums = gets.strip.split(/\s+/).map(&:to_f)
m =nums[0]
n=nums[1]
if (m!=-1 and n!=-1) then
c=(m/n)
perc=c*100.0
str=""
s= perc.round(0)
nh=20*c
pc=20-(s.to_s.length+1)
for i in 0..19 
	if (i<nh) then str[i]="*" else str[i] = "-" end
end
case pc
when 18
	str[9..10]=s.to_s+"%"
when 17
	str[9..11]=s.to_s+"%"
when 16
	str[8..11]=s.to_s+"%"
end
puts str
else
break
end
end