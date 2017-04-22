Rails.application.routes.draw do
  devise_for :users
  get 'pages/info'

  root to: redirect('/ideas')
  get '/cats/:id', controller: :ideas, action: 'show'
  resources :ideas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
