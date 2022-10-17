class PhotosController < ApplicationController

  def index
    @photos = Photo.all.order({:created_at => :desc})
    render({:template => "/photo_templates/index.html.erb"})
  end

  def show
    photo_id = params.fetch(:photo_id)
    @photo = Photo.where({:id => photo_id}).first
    render({:template => "/photo_templates/show.html.erb"})
  end

  def destroy
    photo_id = params.fetch(:photo_id)
    photo = Photo.where({:id => photo_id}).first
    photo.destroy
    redirect_to("/photos")
  end

  def new
    image = params.fetch(:image)
    caption = params.fetch(:caption)
    owner_id = params.fetch(:owner_id)

    photo = Photo.new
    photo.image = image
    photo.caption = caption
    photo.owner_id = owner_id.to_i

    photo.save

    redirect_to("/photos/#{photo.id}")
  end
end
