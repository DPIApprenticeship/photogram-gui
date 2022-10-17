class ApplicationController < ActionController::Base
  def index
    render({:template => "/user_templates/index"})
  end
end
