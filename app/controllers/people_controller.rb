class PeopleController < ApplicationController

  def index
  end

  def new
    @person = Person::SignUp.new
  end

  private

  def person_params
    params.require(:person).permit(:email, :username, :password, :password_confirmation)
  end
end
