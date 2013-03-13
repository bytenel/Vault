Vault::Application.routes.draw do
  devise_for :users

  resources :documents

  match "/leap" => "application#leap", :as => "leap"
  match "help" => "application#help", :as => "application_help"
  match "help_request" => "application#help_request", :as => "send_help_request"
  root :to => 'application#index'
end
