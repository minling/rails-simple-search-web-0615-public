class SearchController < ApplicationController

  def index
    @keyword = params[:keyword]
    @word = Word.find_word(@keyword)
    if Word.find_word(@keyword) != nil
      redirect_to "/words/#{@word.id}"
    elsif Word.find_word(@keyword) == nil
      @fuzzy_words = Search.for(@keyword)
    end
  end

end
