class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def show
    @album = Album.find(params[:id])
  end

  def edit
    @album = Album.find(params[:id])
  end

  def create

    # @user = User.find(params[:user_id])
    @album = current_user.albums.create(album_params)
    redirect_to albums_path
  end

  def destroy

    # @user = User.find(params[:user_id])
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to  albums_path
  end

  def update
    # @user = User.find(params[:user_id])
    @album = Album.find(params[:id])
    @album.update(album_params)
    redirect_to albums_path
  end

  private
    def album_params
      params.require(:album).permit(:title,:desc,:is_public)
    end

end
