class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /photos/1
  # GET /photos/1.json
  def show
  end

  # GET /photos/1/edit
  def edit
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = Photo.new(photo_params)
    @project = Project.find(params[:project_id])

    @photo.project = @project


    if @photo.save
      redirect_to @project, notice: 'Photo was successfully'
    else
      redirect_to @project, notice: 'error al crear la foto'
    end
  end

  # PATCH/PUT /photos/1
  # PATCH/PUT /photos/1.json
  def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to @photo, notice: 'Photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy

    @photo.destroy
    @project = Project.find(params[:project_id])
    
    redirect_to @project, notice: 'Photo was successfully'

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:image, :project_id)
    end
end
