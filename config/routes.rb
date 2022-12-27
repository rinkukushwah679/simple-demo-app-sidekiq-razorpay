Rails.application.routes.draw do
  resources :states#, :defaults => { :format => 'json' }
  resources :countries#, :defaults => { :format => 'json' }
  get '/get_states/:country_id' => 'states#get_states_based_county'#, :defaults => { :format => 'json' }
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'otp_confrimation', to: "home#testing"
  # Defines the root path route ("/")
  # root "articles#index"
end
