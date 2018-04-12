Rails.application.routes.draw do
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
