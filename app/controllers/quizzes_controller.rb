class QuizzesController < ApplicationController
  include QuizzesHelper

  def play
    @quiz_colors = QuizColor.all.sample(3).map do |color|
      { name: color[:name], code_r: color[:code_r], code_g: color[:code_g], code_b: color[:code_b] }
    end
    gon.quiz_colors = @quiz_colors
  end

  def result
    @result = JSON.parse(params[:text])
    @score = @result.sum {|h| h["score"]}

    @rankers= Ranker.all.order(score: :desc).limit(10)
  end

end
