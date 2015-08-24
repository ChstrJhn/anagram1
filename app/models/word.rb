class Word < ActiveRecord::Base
  # Remember to create a migration!

  def self.canonical (word)
    word.downcase.split('').sort.join
  end

  # def self.is_anagram? (word1, word2)
  #   #make same case
  #   #split array
  #   #sort array
  #   #join array
  #   #compare words
  #   #word1.downcase.split('').sort.join == word2.downcase.split('').sort.join
  #   self.canonical(word1) == self.canonical(word2)
  # end

  def self.anagrams (word)
    # get length of word
    # get all words in db with same length
    # check is_anagram?, if match anagram, save into array
    # return array of Word

    word_canonical = self.canonical(word)

    Word.where( { canonical: word_canonical } )

    # word_length = word.length
    # dic = []

    # Word.all.each do |w|
    #   if w.anagram.length == word_length
    #     # puts "#{w.anagram.length} - #{w.anagram}"
    #     if self.is_anagram?(word, w.anagram)
    #       dic << w
    #     end
    #   end
    # end

    # dic

  end

end
