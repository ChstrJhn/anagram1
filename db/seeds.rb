# read word file
# each words, insert into db

file = File.open("db/words")

file.each do |w|
  Word.create! ( {anagram: w.strip} )
end