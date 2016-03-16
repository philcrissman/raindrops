class PeopleController < ApplicationController

  def index
  end

  private

  def person_params
    params.require(:person).permit(:email, :username, :password, :password_confirmation)
  end
end
