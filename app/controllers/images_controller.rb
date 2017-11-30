class ImagesController < ActionController::Base

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create

    redirectTo "index"
  end

  def destroy
  end

  def show
    @image = Image.find(params[:id])
  end
end
