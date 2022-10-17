class ApplicationController < ActionController::Base
  def index
    # render({:template => "/user_templates/index"})
    redirect_to("/users")
  end
end
