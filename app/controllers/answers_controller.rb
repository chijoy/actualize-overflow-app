class AnswersController < ApplicationController
  def edit
    @answer = Answer.find_by(id: params[:id])
  end

  def update
    @answer = Answer.find_by(id: params[:id])
    @answer.update(solution: params[:solution])
  end
end
