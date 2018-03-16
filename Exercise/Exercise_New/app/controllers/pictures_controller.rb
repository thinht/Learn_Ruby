class PicturesController < ApplicationController
  def index
    @album = Album.find(params[:album_id])
    @picture = @album.pictures.all
  end

  def new
    @album = Album.find(params[:album_id])
    @picture = @album.pictures.new
  end

  def edit
    @album = Album.find(params[:album_id])
    @picture = @album.pictures.find(params[:id])
  end

  def create
    @album = Album.find(params[:album_id])
    @picture = @album.pictures.create(picture_params)
    redirect_to album_pictures_path
  end

  def destroy
    @album = Album.find(params[:album_id])
    @picture = @album.pictures.find(params[:id])
    @picture.destroy
    redirect_to album_pictures_path
  end

  def update
    @album = Album.find(params[:album_id])
    @picture = @album.pictures.find(params[:id])
    @picture.update(picture_params)
    redirect_to album_pictures_path
  end

  private
  def picture_params
    params.require(:picture).permit(:title,:desc,:is_public)
  end
end
