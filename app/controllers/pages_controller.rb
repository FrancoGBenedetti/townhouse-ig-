class PagesController < ApplicationController
  before_action :set_widget
  def index
  	@projects = Project.last(2)
  end

  def about
  end

  def projects
  	@projects = Project.all
  end

  private
    def set_widget
      @widget = Project.all
    end
end
