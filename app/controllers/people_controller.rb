class PeopleController < ApplicationController
  skip_before_action :require_login, :only => [:new, :create]

  def index
  end

  def show
  end

  def new
    @person = Person::SignUp.new
  end

  def create
    @person = Person::SignUp.new(person_params)
    if @person.save
      auto_login @person
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def person_params
    params.require(:person).permit(:email, :username, :password, :password_confirmation)
  end
end
