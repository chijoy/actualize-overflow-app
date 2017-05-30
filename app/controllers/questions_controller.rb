class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create(
                                title: params[:title],
                                problem: params[:problem],
                                posted_by: params[:posted_by],
                                answer_id: params[:answer_id],
                                status: params[:status])
    flash[:success] = "Great question!"
    redirect_to '/questions/#{@question.id}'
  end

  def show
    @question = Question.find_by(id: params[:id])
  end

  def edit
    @question = Question.find_by(id: params[:id])
  end

  def update
    @question = Question.find_by(id: params[:id])
    @question.update(
                    title: params[:title],
                    problem: params[:problem],
                    posted_by: params[:posted_by],
                    answer_id: params[:answer_id],
                    status: params[:status]) 

    flash[:success] = "Your question has been updated."
    redirect_to "/questions/#{@question.id}"
  end

  def destroy
    @question = Question.find_by(id: params[:id])
    @question.destroy

    flash[:success] = "Your question was deleted."
    redirect_to '/'
  end
end
