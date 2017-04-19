
class String
  define_method(:find_replace) do |old_word, new_word|
    # self.gsub!(old_word, new_word)
    # answer = self.gsub!(/\s(#{old_word})\s/, " "+new_word+" ")
    # answer
    split = self.split(" ")
    answer = []
    split.each() do |word|
      if word.downcase()==old_word.downcase()
        answer.push(new_word)
      else
        answer.push(word)
      end
    end
    answer.join(" ")
  end
end
