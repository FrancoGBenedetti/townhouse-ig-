class AdminController < ApplicationController
  layout 'adminlayout'
  before_action :authenticate_user!
  def index
    @projects = Project.all
  end
end
