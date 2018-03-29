Rails.application.routes.draw do
  get 'home/index'
  get 'get_articles_list', to: 'home#get_articles_list', as: 'get_articles'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
