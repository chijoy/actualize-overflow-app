class ResponsesController < ApplicationController

  def index
    @responses = Response.all
  end

  def new
    @response = Response.new
  end

  def create
    @response = Response.new(
                            response: params[:response],
                            answer_id: params[:answer_id],
                            user_id: current_user.id
                            )
    if @response.save
      flash[:success] = "Nice comment!"
      redirect_to "/questions/#{params[:question_id]}"
    else
      @response.errors.full_messages
      render 'new.html.erb'
    end
  end

  def show
    @response = Response.find_by(id: params[:id])
  end

  def edit
    @response = Response.find_by(id: params[:id])
  end

  def update
    @response = Response.find_by(id: params[:id])
    @response.update(
                    response: params[:response])
    flash[:success] = "Your comment has been updated."
    redirect_to "/"
  end

  def destroy
    @response = Response.find_by(id: params[:id])
    @response.destroy

    flash[:success] = "Your comment was deleted. :("
    redirect_to '/'
  end
end
