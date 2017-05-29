class AnswersController < ApplicationController
  
  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.create(
                            solution: params[:solution]
                            )
    flash[:success] = "Great suggestion!"
    redirect_to '/answers/#{@answer.id}'
  end

  def edit
    @answer = Answer.find_by(id: params[:id])
  end

  def update
    @answer = Answer.find_by(id: params[:id])
    @answer.update(solution: params[:solution])
  end
end
