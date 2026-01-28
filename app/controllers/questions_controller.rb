class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @answer = ' '
    @user_question = ' '

    if params[:user_question].present?
      @user_question = params[:user_question]
      if @user_question.end_with?("?")
        @answer = 'Silly question, get dressed and go to work!'
      elsif @user_question.downcase == "i am going to work"
        @answer = 'Great!'
      else
        @answer = 'I do not care, get dressed and go to work!'
      end
    end

  end
end
