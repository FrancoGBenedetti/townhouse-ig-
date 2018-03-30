class PagesController < ApplicationController
  def index
  	@projects = Project.last(2)
  end

  def about
  end

  def projects
    @projects = Project.all
  end
end
