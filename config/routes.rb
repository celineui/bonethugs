Bonethugs::Application.routes.draw do
root :to => "Bonethugs#index"

 #Create
 get "/bonethugs/new" => "Bonethugs#new", :as => "new_bonethug"
 post "/bonethugs" => "Bonethugs#create", :as => "bonethugs"

 #Read
 get "/bonethugs" => "Bonethugs#index", :as => "bonethugs"
 get "/bonethugs/:id" => "Bonethugs#show", :as => "bonethug"

 #Update
  get "bonethugs/:id/edit" => "Bonethugs#edit", :as => "edit_bonethug"
  put "bonethugs/:id" => "Bonethugs#update", :as => "bonethug"

 #Delete
  delete "bonethugs/:id" => "Bonethugs#destroy", :as => "bonethug"


 end
