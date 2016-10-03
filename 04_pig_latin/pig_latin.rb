def translate(input)
    words = input.downcase.split(' ')
    words = words.map do |word|
        if word.start_with?('a', 'e', 'i', 'o', 'u')
            word << "ay"
        elsif word.start_with?('ch', 'qu', 'br', 'the')
            word.delete(word[0..1]) << word[0..1] << "ay"
        elsif word.start_with?('thr', 'sch', 'squ')
            word.delete(word[0..2]) << word[0..2] << "ay"
        else
            word.delete(word[0]) << word[0] << "ay"
        end
    end
    words.join (' ')
end
