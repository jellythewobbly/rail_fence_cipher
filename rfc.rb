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

topg = 0
middleg = 0
bottomg = 0

str = []

top.times do
    str << input[0+topg]
    topg += 4
end

middle.times do
    str << input[1+middleg]
    middleg += 2
end

bottom.times do
    str << input[2+bottomg]
    bottomg += 4
end

puts str.join('')