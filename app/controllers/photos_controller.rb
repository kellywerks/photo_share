class PhotosController < ApplicationController

  def index
    @photos = Photo.all
    render 'index'
  end

  def new
    @photo = Photo.new
  end

  def create
    photo = Photo.new(photo_params)
    if @photo.save
      redirect_to user_photos_path
    else
      render 'new_photo'
    end
  end

  private
  def photo_params
    params.require(:photo).permit(:avatar)
  end

end
