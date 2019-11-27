#write your code here
def echo word
  word
end

def shout word
  word.upcase
end

def repeat(word, number = 2)
  ([word]*number).join(" ")
end

def start_of_word(word, pos)
  word[0..pos-1]
end

def first_word(sentence)
  return sentence.scan(/\w+/)[0]
end

def titleize title
   new_title = title.scan(/\w+/)
   new_title.each_with_index do |word, index|
    next if ["and", "the", "over"].include?(word) unless index == 0
    new_title[index] = word.capitalize
  end
  return new_title.join(" ")

end
