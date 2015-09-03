class SearchController < ApplicationController

  def index
    @keyword = params[:keyword]
    @word = Word.find_word(@keyword)
    if @word
      redirect_to "/words/#{@word.id}"
    else
      @fuzzy_words = Search.for(@keyword)
    end
  end

end
