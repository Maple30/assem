
head = int(input("head="))
end = int(input("end"))
jump = int(input("jump"))
sum = 0
for num in range(head,end,jump):
    sum +=num

print(sum)