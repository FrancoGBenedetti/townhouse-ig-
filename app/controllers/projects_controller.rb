class ProjectsController < ApplicationController
  layout 'adminlayout'
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: :show
  before_action :set_widget
  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @projects = Project.all
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        redirect_to edit_project_path(@project)
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        redirect_to edit_project_path(@project)
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    redirect_to admin_path
  end

  def make_sold_out
    @project = Project.find(params[:id])
    if @project.sold_out
      @project.sold_out = false
    else
      @project.sold_out = true
    end
    if @project.save
      redirect_to edit_project_path(@project)
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end


    def set_widget
      @widget = Project.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :description, :logo)
    end
end
