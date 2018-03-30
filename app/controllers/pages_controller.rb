class PagesController < ApplicationController
  def index
  	@projects = Project.last(2)
  end

  def about
  end

  def projects
<<<<<<< HEAD
  	@projects = Project.all
=======
    @projects = Project.all
>>>>>>> bb23b44afaf9f3ecc63b788c2f39c6ff0e313864
  end
end
