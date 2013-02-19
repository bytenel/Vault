Vault::Application.routes.draw do
  devise_for :users

  resources :documents

  match "help" => "application#help", :as => "application_help"
  root :to => 'application#index'
end
