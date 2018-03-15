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
    @album = Album.new(album_params)
    if @album.save
      redirect_to @album
    else
      render 'new'
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy

    direct_to albums_path
  end

  def update
    @album = Album.find(params[:id])
    if album.update(album_params)
      direct_to @album
    else
      render 'edit'
    end
  end

  private
    def album_params
      params.require(:album).permit(:title,:desc,:is_public)
    end
end
