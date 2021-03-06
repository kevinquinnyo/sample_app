class UsersController < ApplicationController
  
  def show
    @user  = User.find(params[:id])
    @title = User.name    
  end

  def new  
    @user  = User.new
    @title = "Sign Up"
  end

  def create
    @user  = User.new(params[:user])
    if @user.save
      sign_in @user
      redirect_to @user, :flash => { :success  => "Welcome to the Sample App!"}
    else
      @title = "Sign up"
      render 'new'
    end
  end

end
