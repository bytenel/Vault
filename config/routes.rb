Vault::Application.routes.draw do
  resources :documents

  match "help" => "application#help", :as => "application_help"
  root :to => 'application#index'
end
