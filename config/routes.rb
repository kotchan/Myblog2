Rails.application.routes.draw do
  root 'message_test2s#index'
  resources :message_test2s
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
