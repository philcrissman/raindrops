class PersonSessionsController < ApplicationController
  skip_before_action :require_login, :only => [:new, :create]


  def new
    @person = Person.new
  end

  def create
    if @person = login(signin_params[:email], signin_params[:password])
      redirect_back_or_to('/', :notice => "Welcome back")
    else
      @person = Person.new
      render :new, :error => "email and password combination was not correct"
    end
  end

  def destroy
    logout
    redirect_to '/signin'
  end

  private

  def signin_params
    params.require(:person).permit(:email, :password)
  end
end
