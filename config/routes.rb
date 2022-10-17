Rails.application.routes.draw do

  get("/", {:controller => "application", :action => "index"})

  get("/users", {:controller => "users", :action => "index"})
  get("/users/:user_name", {:controller => "users", :action => "show"})

end
