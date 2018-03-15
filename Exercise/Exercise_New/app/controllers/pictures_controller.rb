class PicturesController < ApplicationController
  def index
    @picture = Picture.all
  end

  def new
    @picture = Picture.new
  end
end
