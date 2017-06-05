class QuestionsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index

    if session[:count] == nil
      session[:count] = 0
    end

    session[:count] += 1
    @visit_count = session[:count]

    @questions = Question.all.order('created_at desc')

    search_term = params[:search_term]

    if search_term
      @questions = @questions.where(
                                  "title iLIKE ? OR problem iLIKE ? OR status iLIKE ?", 
                                  "%#{search_term}%",
                                  "%#{search_term}%",
                                  "%#{search_term}%"
                                  )
    else
      # flash[:warning] = "No matching questions could be found. Create a question now!"
      # redirect_to '/questions/new'
    end
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(
                                title: params[:title],
                                problem: params[:problem],
                                answer_id: params[:answer_id],
                                status: params[:status],
                                user_id: current_user.id)
    if @question.save
      flash[:success] = "Great question!"
      redirect_to '/questions/#{@question.id}'
    else
      render "new.html.erb"
    end
  end

  def show
    @question = Question.find_by(id: params[:id])
    redirect_to '/' unless current_user
  end

  def edit
    @question = Question.find_by(id: params[:id])
  end

  def update
    @question = Question.find_by(id: params[:id])
    @question.update(
                    title: params[:title],
                    problem: params[:problem],
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
