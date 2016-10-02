class Book
   attr_reader :title
   def title=(name)
      name = name.split(" ")
      name[0].capitalize!
      name.each do |word|
         little_words = ['a','an','the','at','by','for','in','of','on','to','up',
   		'and','as','but','it','or','nor','over']
         if little_words.include? word
            word
         else
            word.capitalize!
         end
      end
      @title = name.join(" ")
    end
end
