class StaticPagesController < ApplicationController

  skip_before_action :require_login, :only => [:coming_soon]

  def coming_soon
  end
end
