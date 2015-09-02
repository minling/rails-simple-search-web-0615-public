class Search

  def self.for(word)
    words = Word.arel_table
    fuzzy_words = Word.where(words[:name].matches("%#{word}%"))
  end

end
