class Word < ActiveRecord::Base

  def self.find_word(word)
    self.find_by(name: word)
  end
end
