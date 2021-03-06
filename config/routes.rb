Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "properties#index"
  # Routes for the Joint_venture_request resource:
  # CREATE
  get "/joint_venture_requests/new", :controller => "joint_venture_requests", :action => "new"
  post "/create_joint_venture_request", :controller => "joint_venture_requests", :action => "create"

  # READ
  get "/joint_venture_requests", :controller => "joint_venture_requests", :action => "index"
  get "/joint_venture_requests/:id", :controller => "joint_venture_requests", :action => "show"

  # UPDATE
  get "/joint_venture_requests/:id/edit", :controller => "joint_venture_requests", :action => "edit"
  post "/update_joint_venture_request/:id", :controller => "joint_venture_requests", :action => "update"

  # DELETE
  get "/delete_joint_venture_request/:id", :controller => "joint_venture_requests", :action => "destroy"
  #------------------------------

  # Routes for the Joint_venture resource:
  # CREATE
  get "/joint_ventures/new", :controller => "joint_ventures", :action => "new"
  post "/create_joint_venture", :controller => "joint_ventures", :action => "create"

  # READ
  get "/joint_ventures", :controller => "joint_ventures", :action => "index"
  get "/joint_ventures/:id", :controller => "joint_ventures", :action => "show"

  # UPDATE
  get "/joint_ventures/:id/edit", :controller => "joint_ventures", :action => "edit"
  post "/update_joint_venture/:id", :controller => "joint_ventures", :action => "update"

  # DELETE
  get "/delete_joint_venture/:id", :controller => "joint_ventures", :action => "destroy"
  #------------------------------

  # Routes for the Pathway resource:
  # CREATE
  get "/pathways/new", :controller => "pathways", :action => "new"
  post "/create_pathway", :controller => "pathways", :action => "create"

  # READ
  get "/pathways", :controller => "pathways", :action => "index"
  get "/pathways/:id", :controller => "pathways", :action => "show"

  # UPDATE
  get "/pathways/:id/edit", :controller => "pathways", :action => "edit"
  post "/update_pathway/:id", :controller => "pathways", :action => "update"

  # DELETE
  get "/delete_pathway/:id", :controller => "pathways", :action => "destroy"
  #------------------------------

  # Routes for the Bookmark resource:
  # CREATE
  get "/bookmarks/new", :controller => "bookmarks", :action => "new"
  post "/create_bookmark", :controller => "bookmarks", :action => "create"

  # READ
  get "/bookmarks", :controller => "bookmarks", :action => "index"
  get "/bookmarks/:id", :controller => "bookmarks", :action => "show"

  # UPDATE
  get "/bookmarks/:id/edit", :controller => "bookmarks", :action => "edit"
  post "/update_bookmark/:id", :controller => "bookmarks", :action => "update"

  # DELETE
  get "/delete_bookmark/:id", :controller => "bookmarks", :action => "destroy"
  #------------------------------

  # Routes for the Region resource:
  # CREATE
  get "/regions/new", :controller => "regions", :action => "new"
  post "/create_region", :controller => "regions", :action => "create"

  # READ
  get "/regions", :controller => "regions", :action => "index"
  get "/regions/:id", :controller => "regions", :action => "show"

  # UPDATE
  get "/regions/:id/edit", :controller => "regions", :action => "edit"
  post "/update_region/:id", :controller => "regions", :action => "update"

  # DELETE
  get "/delete_region/:id", :controller => "regions", :action => "destroy"
  #------------------------------

  # Routes for the Property resource:
  # CREATE
  get "/properties/new", :controller => "properties", :action => "new"
  post "/create_property", :controller => "properties", :action => "create"

  # READ
  get "/properties", :controller => "properties", :action => "index"
  get "/properties/:id", :controller => "properties", :action => "show"

  # UPDATE
  get "/properties/:id/edit", :controller => "properties", :action => "edit"
  post "/update_property/:id", :controller => "properties", :action => "update"

  # DELETE
  get "/delete_property/:id", :controller => "properties", :action => "destroy"
  #------------------------------

  devise_for :investors
  # Routes for the Investor resource:
  # READ
  get "/investors", :controller => "investors", :action => "index"
  get "/investors/:id", :controller => "investors", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
