class PeopleController < ApplicationController

  def index
  end

  def new
    @person = Person::SignUp.new
  end

  def create
    @person = Person::SignUp.new(person_params)
    if @person.save
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
