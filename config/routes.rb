Rails.application.routes.draw do
  root :to => "user_likes#index"
  # Routes for the Dish resource:
  # CREATE
  get "/dishes/new", :controller => "dishes", :action => "new"
  post "/create_dish", :controller => "dishes", :action => "create"

  # READ
  get "/dishes", :controller => "dishes", :action => "index"
  get "/dishes/:id", :controller => "dishes", :action => "show"

  # UPDATE
  get "/dishes/:id/edit", :controller => "dishes", :action => "edit"
  post "/update_dish/:id", :controller => "dishes", :action => "update"

  # DELETE
  get "/delete_dish/:id", :controller => "dishes", :action => "destroy"
  #------------------------------

  # Routes for the Venue resource:
  # CREATE
  get "/venues/new", :controller => "venues", :action => "new"
  post "/create_venue", :controller => "venues", :action => "create"

  # READ
  get "/venues", :controller => "venues", :action => "index"
  get "/venues/:id", :controller => "venues", :action => "show"

  # UPDATE
  get "/venues/:id/edit", :controller => "venues", :action => "edit"
  post "/update_venue/:id", :controller => "venues", :action => "update"

  # DELETE
  get "/delete_venue/:id", :controller => "venues", :action => "destroy"
  #------------------------------

  # Routes for the User_like resource:
  # CREATE
  get "/user_likes/new", :controller => "user_likes", :action => "new"
  post "/create_user_like", :controller => "user_likes", :action => "create"

  # READ
  get "/user_likes", :controller => "user_likes", :action => "index"
  get "/user_likes/:id", :controller => "user_likes", :action => "show"

  # UPDATE
  get "/user_likes/:id/edit", :controller => "user_likes", :action => "edit"
  post "/update_user_like/:id", :controller => "user_likes", :action => "update"

  # DELETE
  get "/delete_user_like/:id", :controller => "user_likes", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
