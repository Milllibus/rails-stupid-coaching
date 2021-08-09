# frozen_string_literal: true

# Class controller
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @answer = coach_answer(params[:question])
  end

  private

  def coach_answer(question)
    if question.downcase == 'i am going to work right now!'
      'Great!'
    elsif question.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
