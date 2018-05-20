Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users

  resources :incidents do
    get 'resolved', to: 'incidents#resolved'
  end

  post '/texty/send_text' => 'texty#send_text'

  root 'homes#index'
end
