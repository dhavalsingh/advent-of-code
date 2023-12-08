import re
sample = """1abc2
pqr3stu8vwx
a1b2c3d4e5f
treb7uchet"""

lines = sample.split('\n')
print (lines)

def part_a(lines):
    for line in lines:
        numbers = re.findall(r'\b\d\b', line)
        number = f"{numbers[0]}{numbers[-1]}"
        print (number)

print (part_a(lines))
