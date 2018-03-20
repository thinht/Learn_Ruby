class PicturesController < ApplicationController
  def index

    # @user = User.find params[:user_id]
    # @album = @user.
    if params[:album_id] &&  @album = Album.find(params[:album_id])
      @pictures = @album.pictures.all
    else
      @pictures = Picture.all
    end
  end

  def new
    @album = Album.find(params[:album_id])
    @picture = @album.pictures.new
  end

  def edit
    # @album = Album.find(params[:album_id])
    @picture = Picture.find(params[:id])
  end

  def create
    @album = Album.find(params[:album_id])
    @picture = @album.pictures.create(picture_params)
    redirect_to album_pictures_path(@album)
  end

  def destroy
    # @album = Album.find(params[:album_id])
    @picture = Picture.find(params[:id])
    @album = @picture.album
    @picture.destroy
    redirect_to album_pictures_path(@album)
  end

  def update
    # @album = Album.find(params[:album_id])
    @picture = Picture.find(params[:id])
    @album = @picture.album
    @picture.update(picture_params)
    redirect_to album_pictures_path(@album)
  end

  def picture_private
    # @@album = Album.find params[:album_id]
    # @album.pictures.where
    @pictures = Picture.where(is_public: false)
  end

  private
  def picture_params
    params.require(:picture).permit(:title,:desc,:is_public)
  end
end
