__author__ = 'Tanja'

with open('input4.txt') as f:
    content = f.readlines()

content = [x.strip('\n') for x in content]

sum = 0
for i in range(len(content)):
    words = content[i].split()
    count = 0
    for w in words:
        count += words.count(w)
    if count == len(words):
        sum += 1

print(sum)