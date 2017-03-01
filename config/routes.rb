Rails.application.routes.draw do
  devise_for :investors
  # Routes for the Investor resource:
  # READ
  get "/investors", :controller => "investors", :action => "index"
  get "/investors/:id", :controller => "investors", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
