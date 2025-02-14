Rails.application.routes.draw do

  get("/", {:controller => "application", :action => "index"})

  get("/users", {:controller => "users", :action => "index"})
  get("/users/new", {:controller => "users", :action => "new"})
  get("/users/:username", {:controller => "users", :action => "show"})
  get("/update_user/:user_id", {:controller => "users", :action => "update"})

  get("/photos", {:controller => "photos", :action => "index"})
  get("/photos/:photo_id", {:controller => "photos", :action => "show"})
  get("/delete_photo/:photo_id", {:controller => "photos", :action => "destroy"})
  get("/new_photo", {:controller => "photos", :action => "new"})
  get("/update_photo/:photo_id", {:controller => "photos", :action => "update"})

  get("/comments/new", {:controller => "comments", :action => "new"})

end
