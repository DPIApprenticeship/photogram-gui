class UsersController < ApplicationController
  def index
    @list_of_users = User.all.order({ :username => :asc })
    render({:template => "user_templates/index.html.erb"})
  end

  def show
    url_username = params.fetch(:username)

    @user = User.where({ :username => url_username}).first
    @photos = @user.own_photos.order({:created_at => :desc})

    if @user == nil
      redirect_to("/404")
    else 
      render({:template => "user_templates/show.html.erb"})
    end

  end

  def new
    username = params.fetch(:username)
    user = User.new
    user.username = username
    user.save
    
    redirect_to("/users/#{user.username}")
  end

  def update
    user_id = params.fetch(:user_id)
    username = params.fetch(:username)

    user = User.where({:id => user_id}).first
    user.username = username

    user.save

    redirect_to("/users/#{user.username}")
  end
end
