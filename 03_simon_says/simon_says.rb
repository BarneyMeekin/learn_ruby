def echo(input)
    input
end

def shout(input)
    input.upcase
end

def repeat(input, num = 2)
    ([input] * num).join " "
end

def start_of_word(input, num)
    input[0...num]
end

def first_word(input)
    input.split(" ").first
end

def titleize(input)
    words = input.split.map do |word|
        if %w(the and over is an it).include?(word)
            word
        else
            word.capitalize
        end
    end
    words.first.capitalize!
    words.join(" ")
end
