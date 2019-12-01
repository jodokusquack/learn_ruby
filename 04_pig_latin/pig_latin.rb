#write your code here


def translate sentence
  vowels = ["a", "e", "i", "o", "u"]
  punctuation = [".", "?", "!"]

  words = sentence.scan(/[\w\.!?]+/)
  
   new = words.map do |word|
    if vowels.include?(word[0].downcase)
      word.concat("ay")
    elsif punctuation.include?(word[0])
      word = word
    else
      first_vowel = word.index(/(?<![q])[aeiou]/)   # Negative lookbehind (meaning it looks behind and if it matches it doesn't count!). This only matches u's NOT preceded by a q
      word[first_vowel..].concat(word[0..first_vowel-1],"ay")
      
    end
  end
  return new.join(" ")
end

print translate "I am the wolf."
