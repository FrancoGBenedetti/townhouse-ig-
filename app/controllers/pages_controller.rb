class PagesController < ApplicationController
  def index
  	@projects = Project.all
  end

  def about
  end

  def projects
  end
end
