class LinksController < ApplicationController
  before_action :find_person, :only => [:index, :show]

  def index
    @links = @person ? @person.links : Link.all
  end

  def new
    @link = current_person.links.new
  end

  def create
    @link = current_person.links.new(link_params)
    if @link.save
      redirect_to link_url(@link)
    else
      render :new
    end
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

  private

  def find_person
    @person = Person.find params[:person_id] unless params[:person_id].nil?
  end

  def link_params
    params.require(:link).permit(:url, :title, :description)
  end
end
