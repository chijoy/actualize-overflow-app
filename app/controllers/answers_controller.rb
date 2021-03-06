class AnswersController < ApplicationController
  
  def index
    @answers = Answer.all
  end

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(
                            solution: params[:solution],
                            question_id: params[:question_id],
                            user_id: current_user.id
                            )
    if @answer.save
      flash[:success] = "Great suggestion!"
      redirect_to "/questions/#{params[:question_id]}"
    else
      @errors = answer.errors.full_message
      render "/questions/#{params[:question_id]}"
    end
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
    flash[:success] = "Your answer has been updated."
    redirect_to "/"
  end

  def destroy
    @answer = Answer.find_by(id: params[:id])
    @answer.destroy

    flash[:success] = "Your answer was deleted. :("
    redirect_to '/'
  end
end
