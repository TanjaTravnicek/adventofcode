__author__ = 'Tanja'

a = 325489
i = 1
count = 0

while (i < a):
    count += 1
    i += (count*8)

x = i - a
y = count*8
while (x > (y/4)):
    i -= (y/4)
    x = i - a

print(x)
