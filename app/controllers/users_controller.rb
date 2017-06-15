class UsersController < ApplicationController

  def index
    @users = User.all.order('created_at desc')
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(
                      name: params[:name],
                      email: params[:email],
                      team: params[:team],
                      type: params[:type],
                      password: params[:password],
                      password_confirmation: params[:password_confirmation]
                      )

    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Yay! You created an account!"
      redirect_to '/'
    else
      @user.errors.full_messages
      render 'new.html.erb'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update({
                      name: params[:name],
                      email: params[:email],
                      team: params[:team],
                      type: params[:type],
                      password: params[:password],
                      password_confirmation: params[:password_confirmation],
                      admin: params[:admin]
                      })

    flash[:success] = "Your info is updated."
    redirect_to "/users/#{@user.id}"
    else
      flash[:danger] = @user.errors.full_messages
      render :edit
    end
  end

  def destroy
  end

end
