% Calculate running sum of a vector until an entry < 0.5
x = rand(1, 10);
s = 0;
for k = 1 : 10
if x(k) < 0.5
break;
end
s = s + x(k);
end
>> x =
0.6787 0.7577 0.7431 0.3922 0.6555
0.1712 0.7060 0.0318 0.2769 0.0462
>> s
s =
2.1796