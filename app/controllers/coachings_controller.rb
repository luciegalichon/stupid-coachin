class CoachingsController < ApplicationController
  def ask
  end

  def answer
    @search_term = params[:search_term]
    @answer = coach_answer(@search_term)
  end

  def coach_answer(your_message)
    if your_message == "I am going to work right now!"
      return ""
    elsif your_message.end_with?("?")
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end


end
