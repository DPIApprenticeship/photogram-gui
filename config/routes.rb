Rails.application.routes.draw do

  get("/", {:controller => "application", :action => "index"})

  get("/users", {:controller => "users", :action => "index"})
  get("/users/:username", {:controller => "users", :action => "show"})

  get("/photos", {:controller => "photos", :action => "index"})

end
