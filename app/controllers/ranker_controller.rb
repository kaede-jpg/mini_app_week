class RankerController < ApplicationController
  def create
    ranker = Ranker.new(ranker_params)
    ranker.save
  end

  private
  def ranker_params
    params.require(:ranker).permit(:nickname, :score)
  end
end
