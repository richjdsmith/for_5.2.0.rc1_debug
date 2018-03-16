Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  # authenticated :user do
  #   root to: 'dashboards#index', as: :authenticated_root
  # end
  root 'static_pages#index'
  resources :static_pages
  resource :dashboard
  get 'home', to: 'static_pages#index', as: :home

  # This is the equivalent of doing devise_scope :user do - it matches the paths to devise routes
  as :user do
    get 'profile', to: 'users/registrations#edit',   as: :edit_user_registration
    get 'profile/cancel', to: 'users/registrations#cancel', as: :cancel_user_registration
    get 'login', to: 'users/sessions#new', as: :new_user_session
    post 'login', to: 'users/sessions#create', as: :user_session
    match 'logout', to: 'users/sessions#destroy', as: :destroy_user_session, via: [:post, :get, :delete]
    scope 'register' do  
      resources :add_business, path: 'b', as: :add_business
    end
  end
  devise_for  :users,
              skip: [:sessions],
              path: '',
              path_names: {   sign_up:       '',
                              registration:  'register',
                              edit:          'edit',
                              cancel:        'cancel',
                              confirmation:  'verification' },

              controllers: {  confirmations: 'users/confirmations',
                              passwords: 'users/passwords',
                              registrations: 'users/registrations',
                              sessions: 'users/sessions',
                              unlocks: 'users/unlocks' }
  
  scope '/admin' do
    resources :users
    resources :businesses
  end
end