input = ARGV[0].to_s

if (input.length - 1) % 4 == 0
    top = ((input.length - 1) / 4) + 1
    bottom = (input.length - 1) / 4
    middle = (input.length - 1) / 2
elsif input.length % 4 == 0
    top = input.length / 4
    bottom = input.length / 4
    middle = input.length / 2
elsif (input.length + 1) % 4 == 0
    top = (input.length + 1) / 4
    bottom = (input.length + 1) / 4
    middle = (input.length - 1) / 2
end

toprow = input[0, top]
middlerow = input[toprow.length, middle]
bottomrow = input[toprow.length + middlerow.length, bottom]

str = []
i = 0
j = 0

while str.length <= input.length do
    str << toprow[i]
    str << middlerow[i+j]
    str << bottomrow[i]
    j += 1
    str << middlerow[i+j]
    i += 1
end

puts str.join('')