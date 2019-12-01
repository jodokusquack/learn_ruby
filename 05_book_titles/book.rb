class Book
  @@test = 2

  attr_accessor :title
  
  def title=(title)
    cons_and_pres = ["and", "or", "but", "yet", "for", "nor", "so", "in", "the", "of", "a", "an"]
    @test = 1
    words = title.scan(/\w+/)
    capitalized_words = words.map.with_index do |word, i|
      if not cons_and_pres.include?(word)
        word.capitalize
      else
        if i == 0
          word.capitalize
        else
          word
        end
      end

      
    end
     @title = capitalized_words.join(" ")
  end

  
end

a = Book.new
a.title = "test"
puts a.title
