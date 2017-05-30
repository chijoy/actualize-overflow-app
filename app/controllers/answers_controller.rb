class AnswersController < ApplicationController
  
  def index
    @answers = Answer.all
  end

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

  def show
    @answer = Answer.find_by(id: params[:id])
  end

  def edit
    @answer = Answer.find_by(id: params[:id])
  end

  def update
    @answer = Answer.find_by(id: params[:id])
    @answer.update(
                    solution: params[:solution])
  end

  def destroy
    @answer = Answer.find_by(id: params[:id])
    @answer.destroy

    flash[:success] = "Your answer was deleted."
    redirect_to '/'
  end
end
