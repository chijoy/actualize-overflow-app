class UsersController < ApplicationController

  def index
    @users = User.all.order('created_at desc')
  end

  def show
    @users = User.where(user_id: @user.id).order('created_at desc')
  end

  def new
  end

  def create
    user = User.new(name: params[:name],
                    email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation]
                    )

    if user.save
      session[:user_id] = user.id
      flash[:success] = "Yay! You created an account!"
      redirect_to '/'
    else
      flash[:warning] = "Whoa there, something went wrong."
      redirect_to '/signup'
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
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      admin: params[:admin],
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
