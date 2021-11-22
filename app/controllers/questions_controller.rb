# require 'pry-byebug'

class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:ask]
    @answer = logic
  end

  def logic
    # binding.pry
    if @ask.include?('?') == true
      'Silly question, get dressed and go to work!'
    elsif @ask == 'I am going to work'
      'Great!'
    else
      'I don\'t care, get dressed and go to work!'
    end
  # If the message is I am going to work, the coach will answer Great!
  # If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
  # Otherwise the coach will answer I don't care, get dressed and go to work!
  end
end
