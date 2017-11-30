class ImagesController < ActionController::Base

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(params[:img_file])
    if @image.save
       flash[:notice] = "Image is saved!!"
       redirect_to "/"
     else
       flash[:alert] = "There was a problem adding image."
       redirect_to '/new'
     end
  end

  def destroy
  end

  def show
    @image = Image.find(params[:id])
  end
end
