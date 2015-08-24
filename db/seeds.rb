# read word file
# each words, insert into db

file = File.open("db/words")

file.each do |w|
  c = w.strip.downcase.chars.sort.join
  Word.create! ( {anagram: w.strip, canonical: c} )
end