class QuizzesController < ApplicationController
  def play
    @quiz_colors = QuizColor.all.sample(3).map do |color|
      {name: color[:name], code_r: color[:code_r], code_g: color[:code_g], code_b: color[:code_b]}
    end
    gon.quiz_colors = @quiz_colors
  end

  def result
    @score_result = JSON.parse(params[:text])
  end

end
