class QuestionsController < ApplicationController

  def home
  end

  def ask
    @ask = params[:ask]
  end

  def answer
    if params[:ask] == 'I am going to work'
      @answer = 'Great!'
    elsif params[:ask].include? '?'
      @answer = 'Silly question. Get dress and go to work!'
    else
      @answer = "I don't care. Get dress and go to work."
    end
  end
end
