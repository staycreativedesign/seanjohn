Sdh::Application.routes.draw do

  devise_for :users

  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
  get 'allure' => 'welcome#allure'
  get 'elle' => 'welcome#elle'
  get 'yelp' => 'welcome#yelp'
  match 'elle' => 'welcome#new', :as => 'welcome', :via => :get
  match 'elle' => 'welcome#create', :as => 'welcome', :via => :post
  match 'allure' => 'welcome#new', :as => 'welcome', :via => :get
  match 'allure' => 'welcome#create', :as => 'welcome', :via => :post
  get 'congratulations' => 'welcome#congratulations'

  # mount Ckeditor::Engine => '/ckeditor'

  root :to => 'welcome#index'
  resources :services
  resources :teams
  resources :sliders
  resources :educations
  resources :presses
end
