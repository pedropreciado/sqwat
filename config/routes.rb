Rails.application.routes.draw do
  namespace :api do
    get 'session/create'
  end

  namespace :api do
    get 'session/destroy'
  end

  namespace :api do
    get 'users/index'
  end

  namespace :api do
    get 'users/create'
  end

  namespace :api do
    get 'users/destroy'
  end

  namespace :api do
    get 'users/new'
  end

  namespace :api do
    get 'users/edit'
  end

  get 'users/create'

  get 'users/destroy'

  get 'users/edit'

  get 'users/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
