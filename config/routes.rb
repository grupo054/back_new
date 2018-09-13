Rails.application.routes.draw do
  resources :normas
  resources :categoria_normas
  devise_for :users
  resources :posts
  resources :images
  root to: 'welcome#index'
  
  namespace 'api' do
    namespace 'v1' do
      post 'auth_user' => 'authentication#authenticate_user'
      resources :images
      post "sign_up" => 'registration#create'
    end
  end


end
