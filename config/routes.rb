Rails.application.routes.draw do
# CarrierWave::Application.routes.draw do

  # get 'docs/index'

  # get 'docs/new'

  # get 'docs/create'

  # get 'docs/destroy'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'


  # CarrierWaveExample::Application.routes.draw do
  resources :docs, only: [:index, :new, :create, :destroy]
  root "docs#index"

  # authenticated :user do
  #   root to: 'pages#index', as: :authenticated_root
  #   # root to: 'home#index', as: :authenticated_root
  # end
  # root to: redirect('/users/sign_in')

end

# end
