class LinksController < ApplicationController
  def index
  end

  def new
  end

  def create
    redirect_to link_url(:id => 1)
  end

  def show
  end

  def edit
  end

  def update
    redirect_to link_url(:id => 1)
  end

  def destroy
    redirect_to links_url
  end
end
