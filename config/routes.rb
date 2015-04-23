Rails.application.routes.draw do
  get 'home/index'

  mount Demo::API => '/'

  root 'home#index'
end
